use std::collections::HashMap;
use std::ops::{Sub, SubAssign};
use crate::arithmetic_type::ArithmeticType;
use crate::calculation_error::CalculationError;
use crate::generic_node::GenericNode;
use crate::instruction_serialiser::{ArithmeticResultNodeWrapper, SubtractNode};
use crate::instruction_serialiser::arithmetic_result_node_wrapper::Node;
use crate::node_wrapper::NodeWrapper;
use crate::parameter::Parameter;

impl GenericNode<ArithmeticType> for SubtractNode {
    fn calculate(&self, parameters: &HashMap<&str, Parameter>) -> Result<ArithmeticType, CalculationError> {
        let left_node = self.left_child.as_ref().ok_or(
            CalculationError::new("The left child of a subtract node must be present to perform a calculation")
        )?;
        let right_node = self.right_child.as_ref().ok_or(
            CalculationError::new("The right child of a subtract node must be present to perform a calculation")
        )?;
        Ok(left_node.calculate_wrapped_nodes(parameters)? - right_node.calculate_wrapped_nodes(parameters)?)
    }
}

type Arnw = ArithmeticResultNodeWrapper;

impl Sub for Arnw {
    type Output = Self;

    fn sub(self, subtractor: Self) -> Self::Output {
        Self{
            node: Some(
                Node::SubtractNode(
                    Box::new(
                        SubtractNode{
                            left_child: Some(Box::new(self)),
                            right_child: Some(Box::new(subtractor))
                        }
                    )
                )
            )
        }
    }
}

impl SubAssign for Arnw {
    fn sub_assign(&mut self, subtractor: Self) {
        *self = self.clone().sub(subtractor);
    }
}
