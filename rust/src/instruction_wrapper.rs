use prost::{DecodeError, Message};
use crate::serialisation_error::SerialisationError;

pub use crate::instruction_serialiser::InstructionWrapper;
pub use crate::instruction_serialiser::instruction_wrapper::Wrapper::ArithmeticWrapper;
pub use crate::instruction_serialiser::instruction_wrapper::Wrapper::LogicalWrapper;

impl InstructionWrapper {
    pub fn deserialise(data: &[u8]) -> Result<InstructionWrapper, SerialisationError> {
        InstructionWrapper::decode(data).map_err(
            |err: DecodeError| SerialisationError::new(
                format!("{}", err).as_str(), false
            )
        )
    }
}
