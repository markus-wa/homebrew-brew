class Cq < Formula

  desc "Clojure Command-line Data Processor for JSON, YAML, EDN, XML and more"
  homepage "https://github.com/markus-wa/cq"
  version "2023.10.18-18.12"

  @@binary = ""

  if OS.linux?
    @@binary = "cq-native-linux"
    sha256 "13e80ae52d3f1e73495dd94ce62948321c061f92a29d43320d50f589cf43fdac"
  else
    @@binary = "cq-native-macos"
    sha256 "32f26c916a8323621e6a993a0569dd95da21a519bbeda9dcf77ad3d71494d4c0"
  end

  url "https://github.com/markus-wa/cq/releases/download/2023.11.30-14.56/#{@@binary}"

  def install
    bin.install @@binary => "cq"
  end

end
