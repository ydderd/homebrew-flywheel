# Homebrew formula for momentum-cli.
#
# Tap checkout is still github.com/ydderd/homebrew-flywheel until the remote is renamed to
# homebrew-momentum. Customers then install with:
#
#     brew install ydderd/momentum/momentum-cli
#
# `url`/`sha256`/resources are filled by cli/scripts/release.sh after publishing
# ydderd-momentum-cli to PyPI. Until then this formula is not installable via brew —
# do not point at the legacy ydderd-flywheel-cli sdist (that package ships a `flywheel`
# console script, not `momentum`).
#
class MomentumCli < Formula
  include Language::Python::Virtualenv

  desc "Authenticate and bulk-upload field data to your Momentum workspace"
  homepage "https://withflywheel.com"
  # release.sh replaces the two PLACEHOLDER lines with the PyPI sdist URL + sha256.
  url "PLACEHOLDER_SDIST_URL"
  sha256 "PLACEHOLDER_SHA256"
  license "Apache-2.0"

  depends_on "python@3.12"

  # BEGIN RESOURCES — populated by `brew update-python-resources`. Do not edit by hand.
  # END RESOURCES

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage: momentum", shell_output("#{bin}/momentum --help")
  end
end
