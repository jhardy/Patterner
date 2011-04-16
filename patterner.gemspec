Gem::Specification.new do |s|
  # Release Specific Information
  s.version = "0.0.1b"
  s.date = "2011-04-16"

  # Gem Details
  s.name = "patterner"
  s.authors = ["Jared Hardy"]
  s.summary = %q{a pattern generator for compass}
  s.description = %q{a pattern generator for compass}
  s.email = "jared@jaredhardy.com"
  s.homepage = "http://www.jaredhardy.com"

  # Gem Files
  s.files = %w(README.mkdn)
  s.files += Dir.glob("lib/**/*.*")
  s.files += Dir.glob("stylesheets/**/*.*")
  s.files += Dir.glob("templates/**/*.*")

  # Gem Bookkeeping
  s.has_rdoc = false
  s.rubygems_version = %q{1.3.6}
  s.add_dependency("compass", [">= 0.11.beta.5"])
	s.add_dependency("chunky_png", [">= 1.1.0"])
end