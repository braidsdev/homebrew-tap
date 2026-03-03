# Placeholder — GoReleaser will auto-update this file on release.
# See: https://github.com/braidsdev/braids/.goreleaser.yaml

class Braids < Formula
  desc "Config-driven API composition — Terraform for APIs"
  homepage "https://braids.dev"
  license "MIT"

  # GoReleaser populates version, url, and sha256 on each release.
  # url "https://github.com/braidsdev/braids/releases/download/v0.0.1/braids_darwin_arm64.tar.gz"
  # sha256 ""

  def install
    bin.install "braids"
  end

  test do
    assert_match "braids", shell_output("#{bin}/braids --version 2>&1", 0)
  end
end
