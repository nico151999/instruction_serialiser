use std::collections::HashMap;
use prost::{EncodeError, Message};
use crate::calculation_error::CalculationError;
use crate::generic_node::GenericNode;
use crate::instruction_serialiser::{InstructionWrapper, LogicalResultNodeWrapper};
use crate::instruction_serialiser::instruction_wrapper::Wrapper;
use crate::instruction_serialiser::logical_result_node_wrapper::Node;
use crate::logical_type::LogicalType;
use crate::node_wrapper::NodeWrapper;
use crate::parameter::Parameter;
use crate::serialisation_error::SerialisationError;

impl NodeWrapper<LogicalType> for LogicalResultNodeWrapper {
    fn calculate_wrapped_nodes(&self, parameters: &HashMap<&str, Parameter>) -> Result<LogicalType, CalculationError> {
        match self.node.as_ref().ok_or(
            CalculationError::new("A logical result node wrapper does unexpectedly not contain a node")
        )? {
            Node::EqualNode(node) => node.calculate(parameters),
            Node::AndNode(node) => node.calculate(parameters),
            Node::BoolNode(node) => node.calculate(parameters),
            Node::NegateNode(node) => node.calculate(parameters),
            Node::OrNode(node) => node.calculate(parameters),
            Node::XorNode(node) => node.calculate(parameters),
            Node::VariableNode(node) => node.calculate(parameters),
            Node::IfElseNode(node) => node.calculate(parameters),
            Node::GreaterThanNode(node) => node.calculate(parameters),
            Node::GreaterThanOrEqualNode(node) => node.calculate(parameters),
            Node::SmallerThanNode(node) => node.calculate(parameters),
            Node::SmallerThanOrEqualNode(node) => node.calculate(parameters),
        }
    }
    fn serialise(self) -> Result<Vec<u8>, SerialisationError> {
        let instruction_wrapper = InstructionWrapper{
            wrapper: Some(
                Wrapper::LogicalWrapper(
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
