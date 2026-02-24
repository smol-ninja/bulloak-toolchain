# Changelog

All notable changes to this project will be documented in this file. The format is based on
[Common Changelog](https://common-changelog.org/).

[v1.0.2]: https://github.com/smol-ninja/bulloak-toolchain/releases/tag/v1.0.2
[v2.0.0]: https://github.com/smol-ninja/bulloak-toolchain/releases/tag/v2.0.0
[v2.1.0]: https://github.com/smol-ninja/bulloak-toolchain/releases/tag/v2.1.0
[v2.2.0]: https://github.com/smol-ninja/bulloak-toolchain/releases/tag/v2.2.0

## [v2.2.0] - 2026-02-24

### Changed

- Use pre-compiled binaries via `cargo-binstall` instead of building from source
- Use bulloak version as the cache key

### Fixed

- Validate that required input `test-dir` is not missing

## [v2.1.0] - 2025-09-28

### Added

- New optional input to specify Bulloak version to use

## [v2.0.0] - 2025-09-09

### Changed

- Rename input `tree-path` to `test-dir`
- Replaced `actions-rs/toolchain` with `actions-rust-lang/setup-rust-toolchain`

### Added

- `--quiet` flag to cargo install for cleaner output

### Removed

- Inputs `cache-key`, `cache-restore-keys` and `save-always`

## [v1.0.2] - 2024-08-22

### Added

- Use `find` command to expand glob pattern and feed all paths to `bulloak` through `xargs`

### Fixed

- Fix a bug where Github workflow could not expand paths correctly from glob pattern
