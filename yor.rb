# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Yor < Formula
  desc "Extensible auto-tagger for your IaC files"
  homepage "https://www.yor.io"
  version "0.1.122"
  license "Apache-2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.122/yor_0.1.122_darwin_arm64.tar.gz"
      sha256 "b21c008af23a418750cd51b69aedf326c0e01e1175dddfa3f8bf49712c714b2d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.122/yor_0.1.122_darwin_amd64.tar.gz"
      sha256 "6905db62447fde22e4b83327c871fa530e46db5d63779f2a54caa073948c2911"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.122/yor_0.1.122_linux_arm64.tar.gz"
      sha256 "d64c6c53b5affd9643d46a0d956810ff5cc4d30289ae76ce2e02e795191e3233"
    end
    if Hardware::CPU.intel?
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.122/yor_0.1.122_linux_amd64.tar.gz"
      sha256 "2aa29e3df834d7a5aec021e412da7b5bc2aafa2d3d06a074d0e3a8a6a296b12b"
    end
  end

  def install
    bin.install "yor"
  end

  test do
    system "#{bin}/yor", "--help"
  end
end
