use std::collections::HashMap;
use crate::calculation_error::CalculationError;
use crate::parameter::Parameter;

pub trait GenericNode<T> {
    fn calculate(&self, parameters: &HashMap<&str, Parameter>) -> Result<T, CalculationError>;
}
