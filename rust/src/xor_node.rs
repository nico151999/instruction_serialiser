use std::collections::HashMap;
use std::ops::{BitXor, BitXorAssign};
use crate::calculation_error::CalculationError;
use crate::generic_node::GenericNode;
use crate::instruction_serialiser::{LogicalResultNodeWrapper, XorNode};
use crate::instruction_serialiser::logical_result_node_wrapper::Node;
use crate::logical_type::LogicalType;
use crate::node_wrapper::NodeWrapper;
use crate::parameter::Parameter;

impl GenericNode<LogicalType> for XorNode {
    fn calculate(&self, parameters: &HashMap<&str, Parameter>) -> Result<LogicalType, CalculationError> {
        let left_node = self.left_child.as_ref().ok_or(
            CalculationError::new("The left child of a xor node must be present to perform a calculation")
        )?;
        let right_node = self.right_child.as_ref().ok_or(
            CalculationError::new("The right child of a xor node must be present to perform a calculation")
        )?;
        Ok(left_node.calculate(Some(parameters))? != right_node.calculate(Some(parameters))?)
    }
}

type Lrnw = LogicalResultNodeWrapper;

impl BitXor for Lrnw {
    type Output = Self;

    fn bitxor(self, node: Self) -> Self::Output {
        Self{
            node: Some(
                Node::XorNode(
                    Box::new(
                        XorNode{
                            left_child: Some(Box::new(self)),
                            right_child: Some(Box::new(node))
                        }
                    )
                )
            )
        }
    }
}

impl BitXorAssign for Lrnw {
    fn bitxor_assign(&mut self, node: Self) {
        *self = self.clone().bitxor(node);
    }
}
