use std::collections::HashMap;
use crate::calculation_error::CalculationError;
use crate::generic_node::GenericNode;
use crate::instruction_serialiser::{ArithmeticResultNodeWrapper, EqualNode, LogicalResultNodeWrapper};
use crate::instruction_serialiser::logical_result_node_wrapper::Node;
use crate::logical_type::LogicalType;
use crate::node_wrapper::NodeWrapper;
use crate::parameter::Parameter;

impl GenericNode<LogicalType> for EqualNode {
    fn calculate(&self, parameters: &HashMap<&str, Parameter>) -> Result<LogicalType, CalculationError> {
        let left_node = self.left_child.as_ref().ok_or(
            CalculationError::new("The left child of an equal node must be present to perform a calculation")
        )?;
        let right_node = self.right_child.as_ref().ok_or(
            CalculationError::new("The right child of an equal node must be present to perform a calculation")
        )?;
        Ok(left_node.calculate(Some(parameters))? == right_node.calculate(Some(parameters))?)
    }
}

impl ArithmeticResultNodeWrapper {
    pub fn equal(self, node: ArithmeticResultNodeWrapper) -> LogicalResultNodeWrapper {
        LogicalResultNodeWrapper{
            node: Some(
                Node::EqualNode(
                    EqualNode{
                        left_child: Some(self),
                        right_child: Some(node)
                    }
                )
            )
        }
    }
}
