# frozen_string_literal: true

require_relative "lib/ruby_custom_validation/version"

Gem::Specification.new do |spec|
  spec.name          = "ruby_custom_validation"
  spec.version       = RubyCustomValidation::VERSION
  spec.authors       = ["Sobolev Serhii"]
  spec.email         = ["sobolevsergeysom@gmail.com"]

  spec.summary       = "This is gem for implement custom ruby validation in rails models"
  spec.description   = "Ruby custom validation is a module for implement functional with validations for Rails models."
  spec.homepage      = "https://github.com/SobolevSerhii/RubyCustomValidation"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "https://github.com/SobolevSerhii/RubyCustomValidation"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/SobolevSerhii/RubyCustomValidation"
  spec.metadata["changelog_uri"] = "https://github.com/SobolevSerhii/RubyCustomValidation"

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
end
