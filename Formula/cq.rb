class Cq < Formula

  desc "Clojure Command-line Data Processor for JSON, YAML, EDN, XML and more"
  homepage "https://github.com/markus-wa/cq"
  version "2022.08.29-21.25.40"

  @@binary = ""

  if OS.linux?
    @@binary = "cq-native-linux"
    sha256 "8b633feef9068eff47edc26d33f954c7afa717b2c963359196fb806c79f25eab"
  else
    @@binary = "cq-native-macos"
    sha256 "c170d978f32dae3e29abb2a9db6c775849832d481311ac3cab5f0bb998bb2530"
  end

  url "https://github.com/markus-wa/cq/releases/download/2022.08.29-21.25.40/#{@@binary}"

  def install
    bin.install @@binary => "cq"
  end

end
