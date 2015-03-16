Are you an OS X prefnerd? Do you keep a base set of OS X preferences in version
control to make it easier to set up new machines? Do you want to know which
items are being changed, and to what values, whenever you alter a setting on OS
X?

prefnerd is a command-line tool, `pn`, that watches the OS X "defaults" (ie.
preferences) database for changes and echoes them to the terminal as they
happen.

# Installation

```sh
gem install prefnerd
```

# Usage

Run `pn` from the terminal with no arguments.

# Requirements

prefnerd relies on two executables that are usually present on all OS X
installs, `defaults` and `diff`, plus one that will generally have to be
installed separately, `fswatch`. The simplest way to install this is usually via
[Homebrew](http://brew.sh/):

```sh
brew install fswatch
```

# Development

This is a quick-and-dirty hack that I cooked up in an hour, so there are no
tests, no Bundler, no Rakefile. To cut a new release, update the version
number in the gemspec and:

```sh
git tag -s 0.1 -m "0.1 release"
git push origin master
gem build prefnerd.gemspec
gem push prefnerd-0.1.gem
```

# Future plans

Right now prefnerd is implemented in the crudest and most unsophisticated way:
whenever a change is detected, it effectively runs a before and after snapshot
of the output of a `defaults read` command and feeds the result through the
`diff` tool.

A future version could instead interpret the resulting property lists as
structured data, and show the `defaults` commands that would be required to
recreate the same changes (right now, it's up to the user of figure that out
based on the diff output).

# Author

prefnerd was hacked together by Greg Hurrell <greg@hurrell.net>.

# License

prefnerd is licensed under the MIT license, because that's the default one
created by the `bundle gem` command. See the `LICENSE.txt` file in the prefnerd
repo for more details.
