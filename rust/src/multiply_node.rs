use std::collections::HashMap;
use std::ops::{Mul, MulAssign};
use crate::arithmetic_type::ArithmeticType;
use crate::calculation_error::CalculationError;
use crate::generic_node::GenericNode;
use crate::instruction_serialiser::{ArithmeticResultNodeWrapper, MultiplyNode};
use crate::instruction_serialiser::arithmetic_result_node_wrapper::Node;
use crate::node_wrapper::NodeWrapper;
use crate::parameter::Parameter;

impl GenericNode<ArithmeticType> for MultiplyNode {
    fn calculate(&self, parameters: &HashMap<&str, Parameter>) -> Result<ArithmeticType, CalculationError> {
        let left_node = self.left_child.as_ref().ok_or(
            CalculationError::new("The left child of a multiply node must be present to perform a calculation")
        )?;
        let right_node = self.right_child.as_ref().ok_or(
            CalculationError::new("The right child of a multiply node must be present to perform a calculation")
        )?;
        Ok(left_node.calculate_wrapped_nodes(parameters)? * right_node.calculate_wrapped_nodes(parameters)?)
    }
}

type Arnw = ArithmeticResultNodeWrapper;

impl Mul for Arnw {
    type Output = Self;

    fn mul(self, node: Self) -> Self::Output {
        Self{
            node: Some(
                Node::MultiplyNode(
                    Box::new(
                        MultiplyNode{
                            left_child: Some(Box::new(self)),
                            right_child: Some(Box::new(node))
                        }
                    )
                )
            )
        }
    }
}

impl MulAssign for Arnw {
    fn mul_assign(&mut self, node: Self) {
        *self = self.clone().mul(node);
    }
}
