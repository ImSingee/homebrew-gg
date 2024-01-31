class Gg < Formula
  desc "redefining your workflow"
  version "0.0.1"
  on_macos do
    on_arm do
      url "https://github.com/ImSingee/gg/releases/download/v0.0.1/gg-aarch64-apple-darwin.tar.xz"
      sha256 "ec65d2adb9fccdeeec80e212934205176716820fb46dfb017fd911b1e4650c75"
    end
    on_intel do
      url "https://github.com/ImSingee/gg/releases/download/v0.0.1/gg-x86_64-apple-darwin.tar.xz"
      sha256 "d7cca48607d04129cfbd81ba25fad68311075946b3d8fc79db10afd22cbf2af2"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/ImSingee/gg/releases/download/v0.0.1/gg-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "935942f0be8945e6339502e8624af57f673da1e4db4ab519e0a15e5eedf15743"
    end
  end

  def install
    on_macos do
      on_arm do
        bin.install "gg"
      end
    end
    on_macos do
      on_intel do
        bin.install "gg"
      end
    end
    on_linux do
      on_intel do
        bin.install "gg"
      end
    end

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install *leftover_contents unless leftover_contents.empty?
  end
end
