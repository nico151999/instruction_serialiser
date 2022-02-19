use std::collections::HashMap;
use crate::calculation_error::CalculationError;
use crate::parameter::Parameter;
use crate::serialisation_error::SerialisationError;

pub trait NodeWrapper<T> {
    /// This method triggers a calculation based on the instructions given by the nodes underlying
    /// the [NodeWrapper<T>]. If the instruction expects parameters they need to be passed as a
    /// [std::collections::HashMap] wrapped inside an option. The [std::collections::HashMap]
    /// expects variable names as keys and related variable values as [std::collections::HashMap]
    /// values.
    /// A calculation result of type [T] is returned in case of success, a calculation error of type
    /// [crate::calculation_error::CalculationError] otherwise.
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
    /// This method triggers a calculation based on the instructions given by the nodes underlying
    /// the [NodeWrapper<T>]. If the instruction expects parameters they need to be passed as a
    /// [std::collections::HashMap].  an empty
    /// [std::collections::HashMap] needs to be passed. The [std::collections::HashMap]
    /// expects variable names as keys and related variable values as [std::collections::HashMap]
    /// values. In contrast to [NodeWrapper<T>::calculate], an empty [std::collections::HashMap]
    /// needs to be passed to this method if the instruction does not expect any parameters.
    /// A calculation result of type [T] is returned in case of success, a calculation error of type
    /// [crate::calculation_error::CalculationError] otherwise.
    fn calculate_wrapped_nodes(&self, parameters: &HashMap<&str, Parameter>) -> Result<T, CalculationError>;
    /// This method serialises the whole instruction covered by this [NodeWrapper] into a binary
    /// format that can be deserialised into a [crate::InstructionWrapper].
    fn serialise(self) -> Result<Vec<u8>, SerialisationError>;
}
