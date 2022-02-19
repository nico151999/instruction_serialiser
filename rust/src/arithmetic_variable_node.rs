use std::collections::HashMap;
use crate::arithmetic_type::ArithmeticType;
use crate::calculation_error::CalculationError;
use crate::generic_node::GenericNode;
use crate::instruction_serialiser::ArithmeticResultNodeWrapper;
use crate::instruction_serialiser::arithmetic_result_node_wrapper::Node;
use crate::parameter::Parameter;

pub use crate::instruction_serialiser::ArithmeticVariableNode;

impl GenericNode<ArithmeticType> for ArithmeticVariableNode {
    fn calculate(&self, parameters: &HashMap<&str, Parameter>) -> Result<ArithmeticType, CalculationError> {
        match parameters.get(self.variable_name.as_str()).ok_or(
            CalculationError::new(
                format!("The instruction expected an arithmetic parameter '{}' to be passed", self.variable_name).as_str()
            )
        )? {
            Parameter::Arithmetic(param) => Ok(*param),
            _ => Err(
                CalculationError::new(
                    format!("The instruction expected parameter '{}' to be arithmetic", self.variable_name).as_str()
                )
            )
        }
    }
}

impl ArithmeticVariableNode {
    pub fn new(variable_name: &str) -> ArithmeticResultNodeWrapper {
        ArithmeticResultNodeWrapper{
            node: Some(
                Node::VariableNode(
                    ArithmeticVariableNode{
                        variable_name: String::from(variable_name)
                    }
                )
            )
        }
    }
}
