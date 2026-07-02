# homebrew-flywheel

Homebrew tap for the [Flywheel](https://withflywheel.com) CLI.

## Install

```bash
brew install ydderd/flywheel/flywheel-cli
```

Then authenticate and upload data:

```bash
flywheel auth login --token <fw_cli_…>   # token from a workspace admin
flywheel upload ./your-data --scan
```

## Maintaining

`Formula/flywheel-cli.rb` is generated/updated by `cli/scripts/release.sh` in the
[flywheel](https://github.com/ydderd/flywheel) monorepo after each PyPI publish
(it fills the `url`/`sha256` and regenerates the Python `resource` blocks).
