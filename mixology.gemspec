Gem::Specification.new do |s|
  s.name = %q{mixology}
  s.description = "Mixology enables objects to mixin and unmix modules."
  s.summary = s.description
  s.version = "0.2.0"
  s.date = %q{2009-08-24}
  s.authors = ["anonymous z", "Pat Farley", "Dan Manges"]
  s.homepage = %q{http://rubygems.org/gems/mixology}
  s.require_paths = ["lib"]
  s.files = ::Dir.glob("lib/**/*.{rb,so}") +
    ::Dir.glob("ext/**/*.{c,java,rb}") +
    ::Dir.glob("test/**/*.rb") +
    ['README.markdown', 'Rakefile']
  if RUBY_PLATFORM =~ /mswin/
    s.platform = Gem::Platform::WIN32
    s.files += ["lib/mixology.so"]
  elsif RUBY_PLATFORM =~ /java/
    s.platform = "java"
    s.files += ["lib/mixology.jar"]
  else
    s.platform = Gem::Platform::RUBY
    s.extensions = ::Dir.glob("ext/**/extconf.rb")
  end
end
