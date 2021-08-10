# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Yor < Formula
  desc "Extensible auto-tagger for your IaC files"
  homepage "https://www.yor.io"
  version "0.1.88"
  license "Apache-2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.88/yor-0.1.88-darwin-amd64.tar.gz"
      sha256 "02f39dedabc49cee56e26fe70528a5e09fa775d157051b5440c532ea64fb845d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.88/yor-0.1.88-darwin-amd64.tar.gz"
      sha256 "62ce300ed44a7ab632bc94a350e3e25570220c74c2684d3cd9b868358ec16a72"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.88/yor-0.1.88-darwin-amd64.tar.gz"
      sha256 "b9975b12160ab20dc2ec798c69d6b90269858fb9392d9f2d8888aa587b8b579e"
    end
  end

  def install
    bin.install "yor"
  end

  test do
    system "#{bin}/yor", "--help"
  end
end
