extern crate core;

mod instruction_serialiser {
    include!(concat!(env!("OUT_DIR"), "/instruction_serialiser.rs"));
}
pub mod parameter;
pub mod add_node;
pub mod node_wrapper;
pub mod calculation_error;
pub mod generic_node;
pub mod arithmetic_type;
pub mod logical_type;
pub mod arithmetic_result_node_wrapper;
pub mod logical_result_node_wrapper;
pub mod divide_node;
pub mod multiply_node;
pub mod subtract_node;
pub mod logarithm_node;
pub mod power_node;
pub mod modulo_node;
pub mod arithmetic_variable_node;
pub mod number_node;
pub mod equal_node;
pub mod and_node;
pub mod or_node;
pub mod xor_node;
pub mod bool_node;
pub mod negate_node;
pub mod logical_variable_node;
pub mod serialisation_error;
pub mod instruction_wrapper;


#[cfg(test)]
mod tests {
    use std::collections::HashMap;
    use std::process;
    use crate::instruction_serialiser::{
        instruction_wrapper,
        InstructionWrapper,
        NumberNode,
        ArithmeticVariableNode,
        BoolNode
    };
    use crate::node_wrapper::NodeWrapper;
    use crate::parameter::Parameter::Arithmetic;

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
            instruction_wrapper::Wrapper::ArithmeticWrapper(_) => {
                println!("Unexpected arithmetic wrapper");
                process::exit(1);
            }
            instruction_wrapper::Wrapper::LogicalWrapper(wrapper) => {
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
