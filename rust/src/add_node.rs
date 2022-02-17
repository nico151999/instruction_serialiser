use std::collections::HashMap;
use std::ops::{Add, AddAssign};
use crate::arithmetic_type::ArithmeticType;
use crate::generic_node::GenericNode;
use crate::calculation_error::CalculationError;
use crate::instruction_serialiser::{AddNode, ArithmeticResultNodeWrapper};
use crate::instruction_serialiser::arithmetic_result_node_wrapper::Node;
use crate::node_wrapper::NodeWrapper;
use crate::parameter::Parameter;

impl GenericNode<ArithmeticType> for AddNode {
    fn calculate(&self, parameters: &HashMap<&str, Parameter>) -> Result<ArithmeticType, CalculationError> {
        let left_node = self.left_child.as_ref().ok_or(
            CalculationError::new("The left child of an add node must be present to perform a calculation")
        )?;
        let right_node = self.right_child.as_ref().ok_or(
            CalculationError::new("The right child of an add node must be present to perform a calculation")
        )?;
        Ok(left_node.calculate(Some(parameters))? + right_node.calculate(Some(parameters))?)
    }
}

type Arnw = ArithmeticResultNodeWrapper;

impl Add for Arnw {
    type Output = Self;

    fn add(self, node: Self) -> Self::Output {
        Self{
            node: Some(
                Node::AddNode(
                    Box::new(
                        AddNode{
                            left_child: Some(Box::new(self)),
                            right_child: Some(Box::new(node))
                        }
                    )
                )
            )
        }
    }
}

impl AddAssign for Arnw {
    fn add_assign(&mut self, node: Self) {
        *self = self.clone().add(node);
    }
}
