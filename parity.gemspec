require File.expand_path("../lib/parity/version", __FILE__)

Gem::Specification.new do |spec|
  spec.authors = ["Dan Croak"]

  spec.description = <<-eos
    Development/staging/production parity makes it easier for
    those who write the code to deploy the code.
  eos

  spec.email = ["dan@thoughtbot.com"]
  spec.files = `git ls-files -- lib/* README.md`.split("\n")
  spec.homepage = "https://github.com/thoughtbot/parity"
  spec.license = "MIT"
  spec.name = "parity"
  spec.require_paths = ["lib"]
  spec.summary = "Shell commands for development, staging, and production parity."
  spec.version = Parity::VERSION

  spec.post_install_message = File.read("UPGRADING")

  spec.add_dependency "git", "~> 1.2"
  spec.add_dependency "rake", "~> 10.4"
end
