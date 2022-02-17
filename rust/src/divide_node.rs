use std::collections::HashMap;
use std::ops::{Div, DivAssign};
use crate::arithmetic_type::ArithmeticType;
use crate::calculation_error::CalculationError;
use crate::generic_node::GenericNode;
use crate::instruction_serialiser::{ArithmeticResultNodeWrapper, DivideNode};
use crate::instruction_serialiser::arithmetic_result_node_wrapper::Node;
use crate::node_wrapper::NodeWrapper;
use crate::parameter::Parameter;

impl GenericNode<ArithmeticType> for DivideNode {
    fn calculate(&self, parameters: &HashMap<&str, Parameter>) -> Result<ArithmeticType, CalculationError> {
        let left_node = self.left_child.as_ref().ok_or(
            CalculationError::new("The left child of a divide node must be present to perform a calculation")
        )?;
        let right_node = self.right_child.as_ref().ok_or(
            CalculationError::new("The right child of a divide node must be present to perform a calculation")
        )?;
        Ok(left_node.calculate(Some(parameters))? / right_node.calculate(Some(parameters))?)
    }
}

type Arnw = ArithmeticResultNodeWrapper;

impl Div for Arnw {
    type Output = Self;

    fn div(self, divisor: Self) -> Self::Output {
        Self{
            node: Some(
                Node::DivideNode(
                    Box::new(
                        DivideNode{
                            left_child: Some(Box::new(self)),
                            right_child: Some(Box::new(divisor))
                        }
                    )
                )
            )
        }
    }
}

impl DivAssign for Arnw {
    fn div_assign(&mut self, divisor: Self) {
        *self = self.clone().div(divisor);
    }
}
