use std::io::Result;
use std::path::Path;

fn main() -> Result<()> {
    let mut relative_path_to_definition = String::from("../definition");
    if !Path::new(relative_path_to_definition.as_str()).exists() {
        // During the publish process, Cargo creates a copy of the working directory that no
        // longer has the same relativity to the definition directory. As long as CARGO_TARGET_DIR
        // is set to its default value this solution works. Otherwise, we need a custom environment
        // variable since CARGO_MANIFEST_DIR does point to the copy instead of the original file
        // during the publish process.
        relative_path_to_definition = format!("../../../{}", relative_path_to_definition);
    }
    prost_build::compile_protos(
        &[format!("{}/instruction_serialiser.proto", relative_path_to_definition)],
        &[relative_path_to_definition]
    )?;
    Ok(())
}
