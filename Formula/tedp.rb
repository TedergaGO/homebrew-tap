# typed: false
# frozen_string_literal: true

# Formula for tedp — Tedplatform CLI.
# Updated by goreleaser on each v* tag push (HOMEBREW_TAP_TOKEN secret).
class Tedp < Formula
  desc "Tedplatform CLI — deploy apps to managed Kubernetes"
  homepage "https://tederga.org"
  version "0.41.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TedergaGO/homebrew-tap/releases/download/v0.41.3/tedp_0.41.3_macOS_arm64.tar.gz"
      sha256 "efb8b3c8cdcaf77c0fafcdd5b35024171b3888bd74d44527f020bb7f458bd71c"
    else
      url "https://github.com/TedergaGO/homebrew-tap/releases/download/v0.41.3/tedp_0.41.3_macOS_x86_64.tar.gz"
      sha256 "f6682f533e47ffcf5829860bffdb6a9a39099e1ec5ebe835497e19bc12a74bfe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TedergaGO/homebrew-tap/releases/download/v0.41.3/tedp_0.41.3_Linux_arm64.tar.gz"
      sha256 "073b808086548a3b57b0fb71f3226f5a2bf9f152b907b23753dafd93d46dc37b"
    else
      url "https://github.com/TedergaGO/homebrew-tap/releases/download/v0.41.3/tedp_0.41.3_Linux_x86_64.tar.gz"
      sha256 "d33e372c290c1c4f87c5de6d72df5c6ecf05f8479c8d08921ba29cefd35a644d"
    end
  end

  def install
    bin.install "tedp"
  end

  test do
    assert_match "tedp v0.41.3", shell_output("#{bin}/tedp version")
  end
end
