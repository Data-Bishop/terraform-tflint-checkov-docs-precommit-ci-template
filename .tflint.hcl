// TFLint configuration
// Validated/edited: 2025-10-12
// Notes:
// - Pins plugin versions to make CI deterministic. Adjust versions when upgrading.
// - `force = true` will make TFLint enforce provider version constraints in Terraform.
config {
  # Enable module inspection
  module = true
  
  # Force provider versions to be set (recommended for CI)
  # Set to false only for local development if necessary.
  force = true
}

# Enable the Terraform plugin
plugin "terraform" {
  enabled = true
  # Pin a tested tflint terraform plugin version for reproducible CI runs.
  # Adjust this version to match the tflint binary.
  version = "0.59.1"
  preset  = "recommended"
}

# Enable Google Cloud plugin
plugin "google" {
  enabled = true
  version = "0.36.0"
  source  = "github.com/terraform-linters/tflint-ruleset-google"
}

# Basic rules
rule "terraform_required_version" {
  enabled = true
}

rule "terraform_required_providers" {
  enabled = true
}

rule "terraform_unused_declarations" {
  enabled = true
}

rule "terraform_deprecated_index" {
  enabled = true
}

rule "terraform_comment_syntax" {
  enabled = true
}

rule "terraform_documented_outputs" {
  enabled = true
}

rule "terraform_documented_variables" {
  enabled = true
}

rule "terraform_typed_variables" {
  enabled = true
}

rule "terraform_module_pinned_source" {
  enabled = true
}

rule "terraform_standard_module_structure" {
  enabled = true
}