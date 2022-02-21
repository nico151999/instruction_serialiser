use std::collections::HashMap;
use crate::calculation_error::CalculationError;
use crate::generic_node::GenericNode;
use crate::instruction_serialiser::{ArithmeticResultNodeWrapper, GreaterThanOrEqualNode, LogicalResultNodeWrapper};
use crate::instruction_serialiser::logical_result_node_wrapper::Node;
use crate::logical_type::LogicalType;
use crate::node_wrapper::NodeWrapper;
use crate::parameter::Parameter;

impl GenericNode<LogicalType> for GreaterThanOrEqualNode {
    fn calculate(&self, parameters: &HashMap<&str, Parameter>) -> Result<LogicalType, CalculationError> {
        let left_node = self.left_child.as_ref().ok_or(
            CalculationError::new("The left child of a greater than or equal node must be present to perform a calculation")
        )?;
        let right_node = self.right_child.as_ref().ok_or(
            CalculationError::new("The right child of a greater than or equal node must be present to perform a calculation")
        )?;
        Ok(left_node.calculate_wrapped_nodes(parameters)? >= right_node.calculate_wrapped_nodes(parameters)?)
    }
}

impl ArithmeticResultNodeWrapper {
    pub fn greater_than_or_equal(self, node: ArithmeticResultNodeWrapper) -> LogicalResultNodeWrapper {
        LogicalResultNodeWrapper{
            node: Some(
                Node::GreaterThanOrEqualNode(
                    Box::new(
                        GreaterThanOrEqualNode{
                            left_child: Some(Box::new(self)),
                            right_child: Some(Box::new(node))
                        }
                    )
                )
            )
        }
    }
}
