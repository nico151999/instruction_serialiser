use std::collections::HashMap;
use crate::arithmetic_type::ArithmeticType;
use crate::calculation_error::CalculationError;
use crate::generic_node::GenericNode;
use crate::instruction_serialiser::{ArithmeticResultNodeWrapper, PowerNode};
use crate::instruction_serialiser::arithmetic_result_node_wrapper::Node;
use crate::node_wrapper::NodeWrapper;
use crate::parameter::Parameter;

impl GenericNode<ArithmeticType> for PowerNode {
    fn calculate(&self, parameters: &HashMap<&str, Parameter>) -> Result<ArithmeticType, CalculationError> {
        let left_node = self.left_child.as_ref().ok_or(
            CalculationError::new("The left child of a power node must be present to perform a calculation")
        )?;
        let right_node = self.right_child.as_ref().ok_or(
            CalculationError::new("The right child of a power node must be present to perform a calculation")
        )?;
        Ok(left_node.calculate(Some(parameters))?.powf(right_node.calculate(Some(parameters))?))
    }
}

impl ArithmeticResultNodeWrapper {
    pub fn power(self, exponent: Self) -> Self {
        Self{
            node: Some(
                Node::PowerNode(
                    Box::new(
                        PowerNode{
                            left_child: Some(Box::new(self)),
                            right_child: Some(Box::new(exponent))
                        }
                    )
                )
            )
        }
    }
}
