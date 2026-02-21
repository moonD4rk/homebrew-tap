class Things3 < Formula
  desc "CLI for Things 3 task manager on macOS"
  homepage "https://github.com/moonD4rk/things3"
  version "0.5.0"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/moonD4rk/things3/releases/download/v0.5.0/things3_macos_m1.tar.gz"
    sha256 "b9fb12f847a17e0a269451778396fe364ee58f968d4c4006fdcd586d4ee580d9"
  end

  on_intel do
    url "https://github.com/moonD4rk/things3/releases/download/v0.5.0/things3_macos_intel.tar.gz"
    sha256 "f9795f8834958e89ab5401f647a70da95bb6e7ca4168b70586aae6e6d7f6a82c"
  end

  def install
    bin.install "things3"
  end

  def caveats
    <<~EOS
      things3 requires read access to the Things 3 database.
      Make sure Things 3 is installed on your Mac.
    EOS
  end

  test do
    system "#{bin}/things3", "version"
  end
end
