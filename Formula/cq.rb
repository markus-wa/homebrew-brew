class Cq < Formula

  desc "Clojure Command-line Data Processor for JSON, YAML, EDN, XML and more"
  homepage "https://github.com/markus-wa/cq"
  version "2024.06.24-12.10"

  @@binary = ""

  if OS.linux?
    @@binary = "cq-native-linux"
    sha256 "5440ee0ec7672f6260eebdb7d2d7b8d383c33d690e0d830f5a09d02e0f6b71f5"
  else
    @@binary = "cq-native-macos"
    sha256 "99a361c67081818666cf78719734e5edc7efd7a2e56561d853b900a6d063af23"
  end

  url "https://github.com/markus-wa/cq/releases/download/2024.06.24-12.10/#{@@binary}"

  def install
    bin.install @@binary => "cq"
  end

end
