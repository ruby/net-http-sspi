# frozen_string_literal: true
Gem::Specification.new do |spec|
  spec.name = "net-http-sspi"
  spec.version = "0.0.1"
  spec.authors = ["Justin Bailey"]
  spec.email = ["<jgbailey@gmail.com>"]

  spec.summary = %q{Windows SSPI implementation in Ruby}
  spec.description = %q{implements bindings to Win32 SSPI functions, focused on authentication to a proxy server over HTTP.}
  spec.licenses = %w[Ruby BSDL]
  spec.homepage = "https://github.com/ruby/net-http-sspi"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile Rakefile]) ||
        f.end_with?(*%w[.gemspec])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "fiddle", "~> 1.0"
  spec.add_dependency "net-http"
end
