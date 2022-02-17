use std::collections::HashMap;
use crate::calculation_error::CalculationError;
use crate::generic_node::GenericNode;
use crate::instruction_serialiser::{BoolNode, LogicalResultNodeWrapper};
use crate::instruction_serialiser::logical_result_node_wrapper::Node;
use crate::logical_type::LogicalType;
use crate::parameter::Parameter;

impl GenericNode<LogicalType> for BoolNode {
    fn calculate(&self, _: &HashMap<&str, Parameter>) -> Result<LogicalType, CalculationError> {
        Ok(self.value)
    }
}

impl BoolNode {
    pub fn new(value: LogicalType) -> LogicalResultNodeWrapper {
        LogicalResultNodeWrapper{
            node: Some(
                Node::BoolNode(
                    BoolNode { value }
                )
            )
        }
    }
}