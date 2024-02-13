class Cq < Formula

  desc "Clojure Command-line Data Processor for JSON, YAML, EDN, XML and more"
  homepage "https://github.com/markus-wa/cq"
  version "2024.02.13-23.14"

  @@binary = ""

  if OS.linux?
    @@binary = "cq-native-linux"
    sha256 "c5dcb818ec73b0a76fba1989f6def54759d781e568d908ba44bee7629cb29738"
  else
    @@binary = "cq-native-macos"
    sha256 "a1fa09784c1fb8e31e13a29e250d8e0ac678d5462190e3931420286eba7b6666"
  end

  url "https://github.com/markus-wa/cq/releases/download/2024.02.13-23.14/#{@@binary}"

  def install
    bin.install @@binary => "cq"
  end

end
