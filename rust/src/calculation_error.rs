use std::fmt;

#[derive(Debug, Clone)]
pub struct CalculationError {
    reason: String
}

impl CalculationError {
    pub fn new(reason: &str) -> CalculationError {
        CalculationError{
            reason: String::from(reason)
        }
    }
}

impl fmt::Display for CalculationError {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "Could not calculate a result based on the instructions: {}", self.reason)
    }
}
