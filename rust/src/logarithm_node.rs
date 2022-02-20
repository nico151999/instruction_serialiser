use std::collections::HashMap;
use crate::arithmetic_type::ArithmeticType;
use crate::calculation_error::CalculationError;
use crate::generic_node::GenericNode;
use crate::instruction_serialiser::{ArithmeticResultNodeWrapper, LogarithmNode};
use crate::instruction_serialiser::arithmetic_result_node_wrapper::Node;
use crate::node_wrapper::NodeWrapper;
use crate::parameter::Parameter;

impl GenericNode<ArithmeticType> for LogarithmNode {
    fn calculate(&self, parameters: &HashMap<&str, Parameter>) -> Result<ArithmeticType, CalculationError> {
        let left_node = self.left_child.as_ref().ok_or(
            CalculationError::new("The left child of a logarithm node must be present to perform a calculation")
        )?;
        let right_node = self.right_child.as_ref().ok_or(
            CalculationError::new("The right child of a logarithm node must be present to perform a calculation")
        )?;
        Ok(left_node.calculate_wrapped_nodes(parameters)?.log(right_node.calculate_wrapped_nodes(parameters)?))
    }
}

impl ArithmeticResultNodeWrapper {
    pub fn logarithm(self, base: Self) -> Self {
        Self{
            node: Some(
                Node::LogarithmNode(
                    Box::new(
                        LogarithmNode{
                            left_child: Some(Box::new(self)),
                            right_child: Some(Box::new(base))
                        }
                    )
                )
            )
        }
    }
}