use std::env;
use std::io::Result;

fn main() -> Result<()> {
    let definition_dir_var_name = "DEFINITION_DIR";
    let path_to_definition = env::var(definition_dir_var_name).unwrap_or_else(
        |_| panic!("${} is not set", definition_dir_var_name)
    );
    prost_build::compile_protos(
        &[format!("{}/instruction_serialiser.proto", path_to_definition)],
        &[path_to_definition]
    )?;
    Ok(())
}
