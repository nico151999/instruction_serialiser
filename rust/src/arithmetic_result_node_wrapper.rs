use std::collections::HashMap;
use prost::{EncodeError, Message};
use crate::arithmetic_type::ArithmeticType;
use crate::generic_node::GenericNode;
use crate::calculation_error::CalculationError;
use crate::instruction_serialiser::{ArithmeticResultNodeWrapper, InstructionWrapper};
use crate::instruction_serialiser::arithmetic_result_node_wrapper::Node;
use crate::instruction_serialiser::instruction_wrapper::Wrapper;
use crate::node_wrapper::NodeWrapper;
use crate::parameter::Parameter;
use crate::serialisation_error::SerialisationError;

impl NodeWrapper<ArithmeticType> for ArithmeticResultNodeWrapper {
    fn calculate_wrapped_nodes(&self, parameters: &HashMap<&str, Parameter>) -> Result<ArithmeticType, CalculationError> {
        match self.node.as_ref().ok_or(
            CalculationError::new("An arithmetic result node wrapper does unexpectedly not contain a node")
        )? {
            Node::AddNode(node) => node.calculate(parameters),
            Node::DivideNode(node) => node.calculate(parameters),
            Node::MultiplyNode(node) => node.calculate(parameters),
            Node::NumberNode(node) => node.calculate(parameters),
            Node::SubtractNode(node) => node.calculate(parameters),
            Node::VariableNode(node) => node.calculate(parameters),
            Node::LogarithmNode(node) => node.calculate(parameters),
            Node::PowerNode(node) => node.calculate(parameters),
            Node::ModuloNode(node) => node.calculate(parameters),
            Node::IfElseNode(node) => {node.calculate(parameters)}
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
