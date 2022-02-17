use std::collections::HashMap;
use crate::arithmetic_type::ArithmeticType;
use crate::calculation_error::CalculationError;
use crate::generic_node::GenericNode;
use crate::instruction_serialiser::{ArithmeticResultNodeWrapper, NumberNode};
use crate::instruction_serialiser::arithmetic_result_node_wrapper::Node;
use crate::parameter::Parameter;

impl GenericNode<ArithmeticType> for NumberNode {
    fn calculate(&self, _: &HashMap<&str, Parameter>) -> Result<ArithmeticType, CalculationError> {
        Ok(self.value)
    }
}

impl NumberNode {
    pub fn new(value: ArithmeticType) -> ArithmeticResultNodeWrapper {
        ArithmeticResultNodeWrapper{
            node: Some(
                Node::NumberNode(
                    NumberNode { value }
                )
            )
        }
    }
}