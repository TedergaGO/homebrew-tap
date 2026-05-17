# typed: false
# frozen_string_literal: true

# Formula for tedp — Tedplatform CLI.
# Updated by goreleaser on each v* tag push (HOMEBREW_TAP_TOKEN secret).
class Tedp < Formula
  desc "Tedplatform CLI — deploy apps to managed Kubernetes"
  homepage "https://tederga.org"
  version "0.55.43"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/grknatabay/tedplatform-mcp/releases/download/v0.55.43/tedp_0.55.43_macOS_arm64.tar.gz"
      sha256 "a69f1c905dc0362f3c8bbe1c90353bb29787637f414cd3019381d26e46fd414d"
    else
      url "https://github.com/grknatabay/tedplatform-mcp/releases/download/v0.55.43/tedp_0.55.43_macOS_x86_64.tar.gz"
      sha256 "8b3bb59dda6ab01958e6055596da0d74fef66ed3dd9cad7a2bd6764a67b18b31"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/grknatabay/tedplatform-mcp/releases/download/v0.55.43/tedp_0.55.43_Linux_arm64.tar.gz"
      sha256 "e824bd8e6b93c95d91540722960a5a51953fe184c83a56f6ca11ed7acd8ba3cb"
    else
      url "https://github.com/grknatabay/tedplatform-mcp/releases/download/v0.55.43/tedp_0.55.43_Linux_x86_64.tar.gz"
      sha256 "9addb7bc9e6edf1cb63cf74c9c795ec89766a39bbf16691e6d94d6716bb12fa6"
    end
  end

  def install
    bin.install "tedp"
  end

  test do
    assert_match "tedp v0.55.43", shell_output("#{bin}/tedp version")
  end
end
