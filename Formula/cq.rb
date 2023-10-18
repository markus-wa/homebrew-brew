class Cq < Formula

  desc "Clojure Command-line Data Processor for JSON, YAML, EDN, XML and more"
  homepage "https://github.com/markus-wa/cq"
  version "2023.10.18-18.12"

  @@binary = ""

  if OS.linux?
    @@binary = "cq-native-linux"
    sha256 "d61bba55bb974dc3b1d845607fa4864a941487ecae967ff5ba0ae702dae16cd8"
  else
    @@binary = "cq-native-macos"
    sha256 "b6dc057299b02fe39ecb63b1ebe4044ae66370b6150abf15ba2561a43fcc9323"
  end

  url "https://github.com/markus-wa/cq/releases/download/2023.10.18-18.12/#{@@binary}"

  def install
    bin.install @@binary => "cq"
  end

end
