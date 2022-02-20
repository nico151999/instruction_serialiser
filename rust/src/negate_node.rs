use std::collections::HashMap;
use crate::calculation_error::CalculationError;
use crate::generic_node::GenericNode;
use crate::instruction_serialiser::{LogicalResultNodeWrapper, NegateNode};
use crate::instruction_serialiser::logical_result_node_wrapper::Node;
use crate::logical_type::LogicalType;
use crate::node_wrapper::NodeWrapper;
use crate::parameter::Parameter;

impl GenericNode<LogicalType> for NegateNode {
    fn calculate(&self, parameters: &HashMap<&str, Parameter>) -> Result<LogicalType, CalculationError> {
        let node = self.child.as_ref().ok_or(
            CalculationError::new("The child of a negate node must be present to perform a calculation")
        )?;
        Ok(!node.calculate_wrapped_nodes(parameters)?)
    }
}

impl LogicalResultNodeWrapper {
    pub fn negate(self) -> LogicalResultNodeWrapper {
        LogicalResultNodeWrapper{
            node: Some(
                Node::NegateNode(
                    Box::new(
                        NegateNode{
                            child: Some(
                                Box::new(self)
                            ),
                        }
                    )
                )
            )
        }
    }
}
