# rubocop:disable Metrics/BlockLength
lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'orgbots/version'

Gem::Specification.new do |spec|
  spec.name          = 'orgbots'
  spec.version       = Orgbots::VERSION
  spec.authors       = ['tcob']
  spec.email         = ['briantcob@gmail.com']

  spec.summary       = 'Bots that commit to a project.'
  # spec.description   = %q{TODO: Write a longer description or delete this line.}
  # spec.homepage      = "TODO: Put your gem's website or public repo URL here."

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'dotenv'
  spec.add_development_dependency 'octokit', '~> 4.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'test-unit'
  spec.add_dependency 'pastel'
  spec.add_dependency 'random-word'
  spec.add_dependency 'rubocop'
  spec.add_dependency 'rufus-scheduler'
  spec.add_dependency 'tty-prompt'
  spec.add_dependency 'tty-spinner'
end
# rubocop:enable Metrics/BlockLength
