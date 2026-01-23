class Cq < Formula
  desc "Clojure Command-line Data Processor for JSON, YAML, EDN, XML and more"
  homepage "https://github.com/markus-wa/cq"
  version "2026.01.09-17.19"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/markus-wa/cq/releases/download/2026.01.09-17.19/cq-native-linux-arm64"
      sha256 "e30198a5f55747d6bf2fdb786f92a9e96d87f2a0306964d892f0aa61b9b99274"
    else
      url "https://github.com/markus-wa/cq/releases/download/2026.01.09-17.19/cq-native-linux-x86_64"
      sha256 "9a59ad0ea4b2c4187fee86e8e6955f83774ca46cd329237a500a0375babf63ac"
    end
  else
    url "https://github.com/markus-wa/cq/releases/download/2026.01.09-17.19/cq-native-macos"
    sha256 "307f6a62dcd74f1c095ffe25a07f6b62eb772d72c12c6475e06bfd4a3ea9d249"
  end

  def install
    if OS.linux? && Hardware::CPU.arm?
      bin.install "cq-native-linux-arm64" => "cq"
    elsif OS.linux?
      bin.install "cq-native-linux-x86_64" => "cq"
    else
      bin.install "cq-native-macos" => "cq"
    end
  end
end
