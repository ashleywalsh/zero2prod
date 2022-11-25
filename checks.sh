#!/bin/bash
set -e

cargo fmt -- --check
cargo clippy -- -D warnings
cargo test
# cargo tarpaulin --ignore-tests
cargo audit
