use std::collections::HashMap;
use crate::arithmetic_type::ArithmeticType;
use crate::generic_node::GenericNode;
use crate::calculation_error::CalculationError;
use crate::instruction_serialiser::{ArithmeticIfElseNode, ArithmeticResultNodeWrapper, LogicalResultNodeWrapper};
use crate::instruction_serialiser::arithmetic_result_node_wrapper::Node;
use crate::NodeWrapper;
use crate::parameter::Parameter;

impl GenericNode<ArithmeticType> for ArithmeticIfElseNode {
    fn calculate(&self, parameters: &HashMap<&str, Parameter>) -> Result<ArithmeticType, CalculationError> {
        let condition = self.condition.as_ref().ok_or(
            CalculationError::new("The condition of an arithmetic if-else-node must be present to perform a calculation")
        )?;
        if condition.calculate(Some(parameters))? {
            Ok(self.r#if.as_ref().ok_or(
                CalculationError::new("The if child node of an arithmetic if-else-node node must be present to perform a calculation")
            )?.calculate(Some(parameters))?)
        } else {
            Ok(self.r#else.as_ref().ok_or(
                CalculationError::new("The else child node of an arithmetic if-else-node node must be present to perform a calculation")
            )?.calculate(Some(parameters))?)
        }
    }
}

impl LogicalResultNodeWrapper {
    pub fn arithmetic_if_else(self, if_node: ArithmeticResultNodeWrapper, else_node: ArithmeticResultNodeWrapper) -> ArithmeticResultNodeWrapper {
        ArithmeticResultNodeWrapper{
            node: Some(
                Node::IfElseNode(
                    Box::new(
                        ArithmeticIfElseNode{
                            condition: Some(Box::new(self)),
                            r#if: Some(Box::new(if_node)),
                            r#else: Some(Box::new(else_node))
                        }
                    )
                )
            )
        }
    }
}
