use std::collections::HashMap;
use std::ops::{Rem, RemAssign};
use crate::arithmetic_type::ArithmeticType;
use crate::calculation_error::CalculationError;
use crate::generic_node::GenericNode;
use crate::instruction_serialiser::{ArithmeticResultNodeWrapper, ModuloNode};
use crate::instruction_serialiser::arithmetic_result_node_wrapper::Node;
use crate::node_wrapper::NodeWrapper;
use crate::parameter::Parameter;

impl GenericNode<ArithmeticType> for ModuloNode {
    fn calculate(&self, parameters: &HashMap<&str, Parameter>) -> Result<ArithmeticType, CalculationError> {
        let left_node = self.left_child.as_ref().ok_or(
            CalculationError::new("The left child of a modulo node must be present to perform a calculation")
        )?;
        let right_node = self.right_child.as_ref().ok_or(
            CalculationError::new("The right child of a modulo node must be present to perform a calculation")
        )?;
        Ok(left_node.calculate_wrapped_nodes(parameters)? % right_node.calculate_wrapped_nodes(parameters)?)
    }
}

type Arnw = ArithmeticResultNodeWrapper;

impl Rem for Arnw {
    type Output = Self;

    fn rem(self, divisor: Self) -> Self::Output {
        Self{
            node: Some(
                Node::ModuloNode(
                    Box::new(
                        ModuloNode{
                            left_child: Some(Box::new(self)),
                            right_child: Some(Box::new(divisor))
                        }
                    )
                )
            )
        }
    }
}

impl RemAssign for Arnw {
    fn rem_assign(&mut self, divisor: Self) {
        *self = self.clone().rem(divisor);
    }
}
