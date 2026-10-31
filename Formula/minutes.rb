class Minutes < Formula
  desc "Sync worklogs between time trackers, invoicing, and bookkeeping software"
  homepage "https://github.com/gabor-boros/minutes"
  license "MIT"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/gabor-boros/minutes/releases/download/v0.4.0/minutes_0.4.0_aarch64-apple-darwin.tar.gz"
      sha256 "d65944842e705d6249bdd0bc9bbfc64bb8960005490ff4595a2a67a55b9ea6ca"
    end
    on_intel do
      url "https://github.com/gabor-boros/minutes/releases/download/v0.4.0/minutes_0.4.0_x86_64-apple-darwin.tar.gz"
      sha256 "c72a50cca63c0ea20f328aa2f16dfa6edb2b959e58a38e300d5cf7a82313fa29"
    end
  end

  def install
    bin.install "minutes"
  end

  test do
    assert_match "minutes", shell_output("#{bin}/minutes --help")
  end
end
