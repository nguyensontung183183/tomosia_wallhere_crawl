require_relative 'lib/tomosia_wallhere_crawl/version'

Gem::Specification.new do |spec|
  spec.name          = "tomosia_wallhere_crawl"
  spec.version       = TomosiaWallhereCrawl::VERSION
  spec.authors       = ["nguyen son tung"]
  spec.email         = ["nguyensontung18183"]

  spec.summary       = %q{tomosia_wallhere_crawl using download image from wallhere}
  spec.description   = %q{Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/nguyensontung183183/tomosia_wallhere_crawl.git"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")


  spec.files         = `git ls-files`.split("\n")
  spec.bindir        = "exe"
  spec.executables   = ["tomosia_wallhere_crawl"]
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'thor'
  spec.add_runtime_dependency 'nokogiri'
  spec.add_runtime_dependency 'writeexcel'
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
