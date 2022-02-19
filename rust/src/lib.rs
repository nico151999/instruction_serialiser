extern crate core;

mod instruction_serialiser {
    include!(concat!(env!("OUT_DIR"), "/instruction_serialiser.rs"));
}
mod parameter;
mod add_node;
mod node_wrapper;
mod calculation_error;
mod generic_node;
mod arithmetic_type;
mod logical_type;
mod divide_node;
mod multiply_node;
mod subtract_node;
mod logarithm_node;
mod power_node;
mod modulo_node;
mod arithmetic_variable_node;
mod number_node;
mod equal_node;
mod and_node;
mod or_node;
mod xor_node;
mod bool_node;
mod negate_node;
mod logical_variable_node;
mod serialisation_error;
mod arithmetic_result_node_wrapper;
mod logical_result_node_wrapper;

pub mod instruction_wrapper;
pub use instruction_wrapper::InstructionWrapper;

pub use crate::node_wrapper::NodeWrapper;

pub use crate::parameter::Parameter;

pub use crate::number_node::NumberNode;
pub use crate::bool_node::BoolNode;

pub use crate::logical_variable_node::LogicalVariableNode;
pub use crate::arithmetic_variable_node::ArithmeticVariableNode;

#[cfg(test)]
mod tests {
    use std::collections::HashMap;
    use std::process;
    use crate::NumberNode;
    use crate::BoolNode;
    use crate::ArithmeticVariableNode;
    use crate::instruction_wrapper;
    use crate::InstructionWrapper;
    use crate::NodeWrapper;
    use crate::Parameter::Arithmetic;

    #[test]
    fn workflow() {
        // TODO: write tests for each node
        let variable_name = "x";
        let instruction = NumberNode::new(23.0) + (NumberNode::new(10.0) / ArithmeticVariableNode::new(variable_name));
        let instruction = (instruction % NumberNode::new(8.0)) - ArithmeticVariableNode::new(variable_name);
        let mut instruction = instruction.equal(ArithmeticVariableNode::new(variable_name));
        instruction ^= BoolNode::new(false);
        let res = instruction.serialise().unwrap();
        let wrapper = InstructionWrapper::deserialise(&res);
        match wrapper.unwrap().wrapper.unwrap() {
            instruction_wrapper::ArithmeticWrapper(_) => {
                println!("Unexpected arithmetic wrapper");
                process::exit(1);
            }
            instruction_wrapper::LogicalWrapper(wrapper) => {
                let result = wrapper.calculate(
                    Some(
                        &HashMap::from(
                            [(variable_name, Arithmetic(2.0))]
                        )
                    )
                ).unwrap();
                assert!(result);
            }
        }
    }
}
