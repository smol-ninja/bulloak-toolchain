# Bulloak Toolchain

This GitHub Action installs the [Bulloak](https://github.com/alexfertel/bulloak) toolchain and check that Solidity tests conform to BTT spec. Special thanks to [alexfertel](https://x.com/alexfertel) for his amazing work on Bulloak.

## Example workflow

```yaml
name: "Test"

on:
  push:
    branches:
      - main

jobs:
  ci:
    runs-on: "ubuntu-latest"
    steps:
      - name: "Check out the repo"
        uses: "actions/checkout@v4"

      - name: "Install and run Bulloak"
        uses: "smol-ninja/bulloak-toolchain@v1"
        with:
          skip-modifiers: "false"
          tree-path: "test-workspace/**.tree"
```

## Inputs

| Name                 | Description                                                            | Default                                                    | Required? |
| -------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------- | --------- |
| `cache`              | Automatically configure Rust cache                                     | true                                                       | No        |
| `cache-key`          | A custom key to identify the cache                                     | "${{ runner.os }}-cargo-${{ hashFiles('**/Cargo.lock') }}" | No        |
| `cache-restore-keys` | A custom key to identify the cache to restore                          | "${{ runner.os }}-cargo-"                                  | No        |
| `save-always`        | Save the cache even if a prior step fails                              | true                                                       | No        |
| `skip-modifiers`     | Whether to ignore modifiers declaration in the Solidity test contracts | false                                                      | No        |
| `tree-path`          | The path to the BTT tree files. For ex. `test/**/**.tree`              |                                                            | Yes       |

## Outputs

| Name              | Description                                |
| ----------------- | ------------------------------------------ |
| `bulloak-version` | Version as reported by `bulloak --version` |

## License

This project is released under the [MIT License].

[MIT License]: LICENSE
