class Cq < Formula

  desc "Clojure Command-line Data Processor for JSON, YAML, EDN, XML and more"
  homepage "https://github.com/markus-wa/cq"
  version "2022.11.14-14.16.12"

  @@binary = ""

  if OS.linux?
    @@binary = "cq-native-linux"
    sha256 "de271d5bc44f7b256196ef9e51350a6dbcb6f4c715cbe9201b8e41d0a480d022"
  else
    @@binary = "cq-native-macos"
    sha256 "0215e90b9125025a066c70e2dd141231ca5183359c3ac3afdac9829c395b73c6"
  end

  url "https://github.com/markus-wa/cq/releases/download/2022.11.14-14.16.12/#{@@binary}"

  def install
    bin.install @@binary => "cq"
  end

end
