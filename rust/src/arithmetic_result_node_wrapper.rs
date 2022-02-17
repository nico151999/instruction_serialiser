use std::collections::HashMap;
use prost::{EncodeError, Message};
use crate::arithmetic_type::ArithmeticType;
use crate::generic_node::GenericNode;
use crate::calculation_error::CalculationError;
use crate::instruction_serialiser::{arithmetic_result_node_wrapper, ArithmeticResultNodeWrapper, InstructionWrapper};
use crate::instruction_serialiser::instruction_wrapper::Wrapper;
use crate::node_wrapper::NodeWrapper;
use crate::parameter::Parameter;
use crate::serialisation_error::SerialisationError;

impl NodeWrapper<ArithmeticType> for ArithmeticResultNodeWrapper {
    fn calculate_wrapped_nodes(&self, parameters: &HashMap<&str, Parameter>) -> Result<ArithmeticType, CalculationError> {
        match self.node.as_ref().ok_or(
            CalculationError::new("An arithmetic result node wrapper does unexpectedly not contain a node")
        )? {
            arithmetic_result_node_wrapper::Node::AddNode(node) => node.calculate(parameters),
            arithmetic_result_node_wrapper::Node::DivideNode(node) => node.calculate(parameters),
            arithmetic_result_node_wrapper::Node::MultiplyNode(node) => node.calculate(parameters),
            arithmetic_result_node_wrapper::Node::NumberNode(node) => node.calculate(parameters),
            arithmetic_result_node_wrapper::Node::SubtractNode(node) => node.calculate(parameters),
            arithmetic_result_node_wrapper::Node::VariableNode(node) => node.calculate(parameters),
            arithmetic_result_node_wrapper::Node::LogarithmNode(node) => node.calculate(parameters),
            arithmetic_result_node_wrapper::Node::PowerNode(node) => node.calculate(parameters),
            arithmetic_result_node_wrapper::Node::ModuloNode(node) => node.calculate(parameters),
            _ => {
                // this arm is meant to allow easier debugging if a new arithmetic node type is added in the future.
                // if there is a language feature allowing for doing the same on every match type use it instead
                Err(CalculationError::new("Unsupported arithmetic operation found in instruction"))
            }
        }
    }
    fn serialise(self) -> Result<Vec<u8>, SerialisationError> {
        let instruction_wrapper = InstructionWrapper{
            wrapper: Some(
                Wrapper::ArithmeticWrapper(
                    self
                )
            )
        };
        let mut buf = vec![];
        instruction_wrapper.encode(&mut buf).map_err(|err: EncodeError| SerialisationError::new(
                format!("{}", err).as_str(), true
            ))?;
        Ok(buf)
    }
}
