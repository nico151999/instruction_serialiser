use std::collections::HashMap;
use std::ops::{BitOr, BitOrAssign};
use crate::calculation_error::CalculationError;
use crate::generic_node::GenericNode;
use crate::instruction_serialiser::{LogicalResultNodeWrapper, OrNode};
use crate::instruction_serialiser::logical_result_node_wrapper::Node;
use crate::logical_type::LogicalType;
use crate::node_wrapper::NodeWrapper;
use crate::parameter::Parameter;

impl GenericNode<LogicalType> for OrNode {
    fn calculate(&self, parameters: &HashMap<&str, Parameter>) -> Result<LogicalType, CalculationError> {
        let left_node = self.left_child.as_ref().ok_or(
            CalculationError::new("The left child of an or node must be present to perform a calculation")
        )?;
        let right_node = self.right_child.as_ref().ok_or(
            CalculationError::new("The right child of an or node must be present to perform a calculation")
        )?;
        Ok(left_node.calculate(Some(parameters))? || right_node.calculate(Some(parameters))?)
    }
}

type Lrnw = LogicalResultNodeWrapper;

impl BitOr for Lrnw {
    type Output = Self;

    fn bitor(self, node: Self) -> Self::Output {
        Self{
            node: Some(
                Node::OrNode(
                    Box::new(
                        OrNode{
                            left_child: Some(Box::new(self)),
                            right_child: Some(Box::new(node))
                        }
                    )
                )
            )
        }
    }
}

impl BitOrAssign for Lrnw {
    fn bitor_assign(&mut self, node: Self) {
        *self = self.clone().bitor(node);
    }
}
