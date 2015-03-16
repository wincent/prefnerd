Gem::Specification.new do |spec|
  spec.name          = 'prefnerd'
  spec.version       = '0.1'
  spec.authors       = ['Greg Hurrell']
  spec.email         = ['greg@hurrell.net']
  spec.summary       = %q{Monitors the OS X defaults database for changes}
  spec.description   = %q{
    Are you an OS X prefnerd? Do you keep a base set of OS X preferences in
    version control to make it easier to set up new machines? Do you want to
    know which items are being changed, and to what values, whenever you alter a
    setting on OS X? The prefnerd gem contains a simple executable that watches
    the defaults database for changes and prints them to your terminal.
  }
  spec.license       = 'MIT'
  spec.requirements  = ['The fswatch executable']

  spec.files         = Dir['bin/*']
  spec.executables   = ['pn']
  spec.require_paths = []
end
