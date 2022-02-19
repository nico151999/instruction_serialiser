use crate::arithmetic_type::ArithmeticType;
use crate::logical_type::LogicalType;

/// Covers the data types that can be passed as parameters to instructions
pub enum Parameter {
    Arithmetic(ArithmeticType),
    Logical(LogicalType)
}