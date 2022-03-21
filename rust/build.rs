use std::env;
use std::io::Result;
use std::path::Path;
use config::{Config, File};

fn main() -> Result<()> {
    let cargo_manifest_dir_var_name = "CARGO_MANIFEST_DIR";
    let cargo_manifest_dir = env::var(cargo_manifest_dir_var_name).unwrap_or_else(
        |_| panic!("${} is not set", cargo_manifest_dir_var_name)
    );

    let config_location = format!("{}/definition_paths.toml", cargo_manifest_dir);
    let config = Config::builder()
        .add_source(File::with_name(config_location.as_str()))
        .build()
        .unwrap_or_else(
            |_| panic!("Could not read config at {}", config_location)
        );
    let env_table = config.get_table("definition").unwrap();

    let definition_dir_prod_var_name = "DEFINITION_DIR_PROD";
    let relative_definition_dir_prod = env_table.get(definition_dir_prod_var_name).unwrap_or_else(
        || panic!("Could not read setting {}", definition_dir_prod_var_name)
    );

    let mut path_to_definition = format!(
        "{}/{}",
        cargo_manifest_dir,
        relative_definition_dir_prod
    );

    if !Path::new(&path_to_definition).exists() {
        let definition_dir_dev_var_name = "DEFINITION_DIR_DEV";
        let relative_definition_dir_dev = env_table.get(definition_dir_dev_var_name).unwrap_or_else(
            || panic!("Could not read setting {}", definition_dir_dev_var_name)
        );
        path_to_definition = format!(
            "{}/{}",
            cargo_manifest_dir,
            relative_definition_dir_dev
        );
    }

    prost_build::compile_protos(
        &[format!("{}/instruction_serialiser.proto", path_to_definition)],
        &[path_to_definition]
    )?;
    Ok(())
}
