# frozen_string_literal: true

require_relative 'lib/ral_colors_list/version'

Gem::Specification.new do |spec|
  spec.name = 'ral_colors_list'
  spec.version = RalColorsList::VERSION
  spec.authors = ['soul933k']

  spec.summary = 'List of Classic RAL Colors'
  spec.description = 'Get specific information for Classic RAL Color. RAL name, English name, Ukrainian name, HEX value.'
  spec.homepage = "https://tseivo.com/b/clrad."
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = "https://github.com/soul933k/ral_colors_list"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency('rspec', '3.12')

end
