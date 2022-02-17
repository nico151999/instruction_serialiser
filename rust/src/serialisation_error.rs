use std::fmt;

#[derive(Debug, Clone)]
pub struct SerialisationError {
    reason: String,
    serialisation: bool // true if occurred during serialisation, false if occurred during deserialisation
}

impl SerialisationError {
    pub fn new(reason: &str, serialisation: bool) -> SerialisationError {
        SerialisationError{
            reason: String::from(reason),
            serialisation
        }
    }
}

impl fmt::Display for SerialisationError {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        let serialise;
        if self.serialisation {
            serialise = "serialise"
        } else {
            serialise = "deserialise"
        }
        write!(f, "Could not {} instructions: {}", serialise, self.reason)
    }
}
