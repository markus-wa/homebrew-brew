class Cq < Formula

  desc "Clojure Command-line Data Processor for JSON, YAML, EDN, XML and more"
  homepage "https://github.com/markus-wa/cq"
  version "2022.01.26-15.35.00"

  @@binary = ""

  if OS.linux?
    @@binary = "cq-native-linux"
    sha256 "1dd31358047d65848ed037010d0986f472c47ecac7c78f7d3acb9cf2c01c8fcd"
  else
    @@binary = "cq-native-macos"
    sha256 "e82a2a973f80d4f2bfb41f3f4b50de98ebe66646ec386458c25c19bba0d8b498"
  end

  url "https://github.com/markus-wa/cq/releases/download/2022.01.26-15.35.00/#{@@binary}"

  def install
    bin.install @@binary => "cq"
  end

end
