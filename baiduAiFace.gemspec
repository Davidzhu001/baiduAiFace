
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "baiduAiFace/version"
require "baiduAiFace/client"

Gem::Specification.new do |spec|
  spec.name          = "baiduAiFace"
  spec.version       = BaiduAiFace::VERSION
  spec.authors       = ["weichengzhu"]
  spec.email         = ["weicheng.zhu@icloud.com"]

  spec.summary       = %q{百度简单人脸识别.}
  spec.description   = %q{百度简单人脸识别.}
  spec.homepage      = "http://rubygem.org"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.files         = Dir["{bin,lib}/**/*", "LICENSE", "README.md"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "mime-types", "~> 3.0"
  spec.add_dependency('mime-types')

end
