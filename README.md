# homebrew-flywheel

Homebrew tap for the [Momentum](https://withflywheel.com) CLI.

> GitHub remote is still `ydderd/homebrew-flywheel` until renamed to `homebrew-momentum`.

## Install

```bash
brew install ydderd/momentum/momentum-cli
```

Then authenticate and upload data:

```bash
momentum auth login --token <fw_cli_…>   # token from a workspace admin
momentum upload ./your-data --scan
```

## Maintaining

`Formula/momentum-cli.rb` is generated/updated by `cli/scripts/release.sh` in the
[flywheel](https://github.com/ydderd/flywheel) monorepo after each PyPI publish
(it fills the `url`/`sha256` and regenerates the Python `resource` blocks).
