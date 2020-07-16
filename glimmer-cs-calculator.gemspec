# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: glimmer-cs-calculator 1.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "glimmer-cs-calculator".freeze
  s.version = "1.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Andy Maleh".freeze]
  s.date = "2020-07-16"
  s.description = "Calculator - Glimmer Custom Shell".freeze
  s.email = "andy.am@gmail.com".freeze
  s.executables = ["glimmer-cs-calculator".freeze, "calculator".freeze]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    "LICENSE.txt",
    "VERSION",
    "bin/calculator",
    "bin/glimmer-cs-calculator",
    "lib/glimmer-cs-calculator.rb",
    "lib/models/glimmer/calculator/command.rb",
    "lib/models/glimmer/calculator/command/all_clear.rb",
    "lib/models/glimmer/calculator/command/equals.rb",
    "lib/models/glimmer/calculator/command/number.rb",
    "lib/models/glimmer/calculator/command/operation.rb",
    "lib/models/glimmer/calculator/command/operation/add.rb",
    "lib/models/glimmer/calculator/command/operation/divide.rb",
    "lib/models/glimmer/calculator/command/operation/multiply.rb",
    "lib/models/glimmer/calculator/command/operation/subtract.rb",
    "lib/models/glimmer/calculator/command/point.rb",
    "lib/models/glimmer/calculator/presenter.rb",
    "lib/views/glimmer/calculator.rb"
  ]
  s.homepage = "http://github.com/AndyObtiva/glimmer-cs-calculator".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.6".freeze
  s.summary = "Calculator - Glimmer Custom Shell".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<glimmer-dsl-swt>.freeze, [">= 0.1.1", "< 2.0.0"])
      s.add_runtime_dependency(%q<easily_typable>.freeze, ["~> 1.0.2"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.5.0"])
      s.add_development_dependency(%q<jeweler>.freeze, ["= 2.3.9"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_development_dependency(%q<glimmer-cs-gladiator>.freeze, [">= 0.2.0"])
    else
      s.add_dependency(%q<glimmer-dsl-swt>.freeze, [">= 0.1.1", "< 2.0.0"])
      s.add_dependency(%q<easily_typable>.freeze, ["~> 1.0.2"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.5.0"])
      s.add_dependency(%q<jeweler>.freeze, ["= 2.3.9"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_dependency(%q<glimmer-cs-gladiator>.freeze, [">= 0.2.0"])
    end
  else
    s.add_dependency(%q<glimmer-dsl-swt>.freeze, [">= 0.1.1", "< 2.0.0"])
    s.add_dependency(%q<easily_typable>.freeze, ["~> 1.0.2"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.5.0"])
    s.add_dependency(%q<jeweler>.freeze, ["= 2.3.9"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_dependency(%q<glimmer-cs-gladiator>.freeze, [">= 0.2.0"])
  end
end

