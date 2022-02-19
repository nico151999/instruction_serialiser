use std::collections::HashMap;
use crate::calculation_error::CalculationError;
use crate::generic_node::GenericNode;
use crate::instruction_serialiser::LogicalResultNodeWrapper;
use crate::instruction_serialiser::logical_result_node_wrapper::Node;
use crate::logical_type::LogicalType;
use crate::parameter::Parameter;

pub use crate::instruction_serialiser::LogicalVariableNode;

impl GenericNode<LogicalType> for LogicalVariableNode {
    fn calculate(&self, parameters: &HashMap<&str, Parameter>) -> Result<LogicalType, CalculationError> {
        match parameters.get(self.variable_name.as_str()).ok_or(
            CalculationError::new(
                format!("The instruction expected a logical parameter '{}' to be passed", self.variable_name).as_str()
            )
        )? {
            Parameter::Logical(param) => Ok(*param),
            _ => Err(
                CalculationError::new(
                    format!("The instruction expected parameter '{}' to be logical", self.variable_name).as_str()
                )
            )
        }
    }
}

impl LogicalVariableNode {
    pub fn new(variable_name: &str) -> LogicalResultNodeWrapper {
        LogicalResultNodeWrapper{
            node: Some(
                Node::VariableNode(
                    LogicalVariableNode{
                        variable_name: String::from(variable_name)
                    }
                )
            )
        }
    }
}
