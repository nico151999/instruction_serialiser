use std::collections::HashMap;
use crate::generic_node::GenericNode;
use crate::calculation_error::CalculationError;
use crate::instruction_serialiser::{LogicalIfElseNode, LogicalResultNodeWrapper};
use crate::instruction_serialiser::logical_result_node_wrapper::Node;
use crate::logical_type::LogicalType;
use crate::NodeWrapper;
use crate::parameter::Parameter;

impl GenericNode<LogicalType> for LogicalIfElseNode {
    fn calculate(&self, parameters: &HashMap<&str, Parameter>) -> Result<LogicalType, CalculationError> {
        let condition = self.condition.as_ref().ok_or(
            CalculationError::new("The condition of a logical if-else-node must be present to perform a calculation")
        )?;
        if condition.calculate_wrapped_nodes(parameters)? {
            Ok(self.r#if.as_ref().ok_or(
                CalculationError::new("The if child node of a logical if-else-node node must be present to perform a calculation")
            )?.calculate_wrapped_nodes(parameters)?)
        } else {
            Ok(self.r#else.as_ref().ok_or(
                CalculationError::new("The else child node of a logical if-else-node node must be present to perform a calculation")
            )?.calculate_wrapped_nodes(parameters)?)
        }
    }
}

impl LogicalResultNodeWrapper {
    pub fn logical_if_else(self, if_node: Self, else_node: Self) -> Self {
        Self{
            node: Some(
                Node::IfElseNode(
                    Box::new(
                        LogicalIfElseNode{
                            condition: Some(Box::new(self)),
                            r#if: Some(Box::new(if_node)),
                            r#else: Some(Box::new(else_node))
                        }
                    )
                )
            )
        }
    }
}
