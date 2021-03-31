# frozen_string_literal: true

require_relative "lib/itamae/aws/parameterstore/version"

Gem::Specification.new do |spec|
  spec.name          = "itamae-aws-parameterstore"
  spec.version       = Itamae::Aws::Parameterstore::VERSION
  spec.authors       = ["Ryota Yoshikawa"]
  spec.email         = ["yoshikawa@rrreeeyyy.com"]

  spec.summary       = "Data Bag from AWS ParameterStore for itamae"
  spec.description   = "Data Bag from AWS ParameterStore for itamae"
  spec.homepage      = "https://github.com/rrreeeyyy/itamae-aws-parameterstore"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/rrreeeyyy/itamae-aws-parameterstore"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency 'aws-sdk-ssm', '>= 1.107.0'

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
