use prost::{DecodeError, Message};
use crate::instruction_serialiser::InstructionWrapper;
use crate::serialisation_error::SerialisationError;

impl InstructionWrapper {
    pub fn deserialise(data: &[u8]) -> Result<InstructionWrapper, SerialisationError> {
        InstructionWrapper::decode(data).map_err(
            |err: DecodeError| SerialisationError::new(
                format!("{}", err).as_str(), false
            )
        )
    }
}
