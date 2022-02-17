use std::io::Result;
fn main() -> Result<()> {
    prost_build::compile_protos(
        &["../definition/instruction_serialiser.proto"],
        &["../definition"]
    )?;
    Ok(())
}
