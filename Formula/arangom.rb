# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Arangom < Formula
  desc "Run ArangoDB migrations with ease."
  homepage "https://github.com/gabor-boros/arangom"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gabor-boros/arangom/releases/download/v0.1.0/arangom_0.1.0_Darwin_arm64.tar.gz"
      sha256 "bfe757cc0b068d66ed941f0f128db1e5d580822ad61dddadcdcd056c765c592b"

      def install
        bin.install "arangom"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gabor-boros/arangom/releases/download/v0.1.0/arangom_0.1.0_Darwin_x86_64.tar.gz"
      sha256 "b01bb28bd540e9a9448aa39eb060c75e38e19f560b581ed4bc58c5c7300576fd"

      def install
        bin.install "arangom"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gabor-boros/arangom/releases/download/v0.1.0/arangom_0.1.0_Linux_arm64.tar.gz"
      sha256 "3be6a2bf9782fb9bb37dc69593f1b365ebc03e9038e14fbc1194bccd4b67eb99"

      def install
        bin.install "arangom"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gabor-boros/arangom/releases/download/v0.1.0/arangom_0.1.0_Linux_x86_64.tar.gz"
      sha256 "38299d281b5a438339dcf6b49bcba0a5b5c9d270fc9d1d21c4b6abff9a8fc5e1"

      def install
        bin.install "arangom"
      end
    end
  end

  head "https://github.com/gabor-boros/arangom", branch: "main"

  livecheck do
    url "https://github.com/gabor-boros/arangom/releases"
    regex(/^v(\d+(?:\.\d+)+)$/i)
  end

  depends_on "go" => :build
end