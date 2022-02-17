use crate::arithmetic_type::ArithmeticType;
use crate::logical_type::LogicalType;

pub enum Parameter {
    Arithmetic(ArithmeticType),
    Logical(LogicalType)
}