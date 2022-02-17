use std::collections::HashMap;
use crate::calculation_error::CalculationError;
use crate::parameter::Parameter;
use crate::serialisation_error::SerialisationError;

pub trait NodeWrapper<T> {
    fn calculate(&self, parameters: Option<&HashMap<&str, Parameter>>) -> Result<T, CalculationError> {
        let new_params;
        let params = match parameters {
            None => {
                new_params = HashMap::new();
                &new_params
            },
            Some(parameters) => parameters,
        };
        self.calculate_wrapped_nodes(params)
    }
    fn calculate_wrapped_nodes(&self, parameters: &HashMap<&str, Parameter>) -> Result<T, CalculationError>;
    fn serialise(self) -> Result<Vec<u8>, SerialisationError>;
}
