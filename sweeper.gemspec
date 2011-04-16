# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sweeper}
  s.version = "0.3.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Evan Weaver"]
  s.date = %q{2011-04-15}
  s.default_executable = %q{sweeper}
  s.description = %q{Automatically tag your music collection with metadata from Last.fm.}
  s.email = %q{}
  s.executables = ["sweeper"]
  s.extensions = ["ext/extconf.rb"]
  s.extra_rdoc_files = ["CHANGELOG", "LICENSE", "README", "TODO", "lib/sweeper.rb"]
  s.files = ["05 - you did it!.mp3", "CHANGELOG", "LICENSE", "Manifest", "README", "Rakefile", "TODO", "bin/sweeper", "ext/Makefile", "ext/extconf.rb", "ext/nmake.bat", "init.rb", "lib/sweeper.rb", "test/integration/1_003.mp3", "test/integration/sweeper_test.rb", "vendor/lastfm.fpclient.beta2.OSX-intel/dylibs/libSystem.B.dylib", "vendor/lastfm.fpclient.beta2.OSX-intel/dylibs/libcurl.4.dylib", "vendor/lastfm.fpclient.beta2.OSX-intel/dylibs/libfftw3f.3.dylib", "vendor/lastfm.fpclient.beta2.OSX-intel/dylibs/libmad.0.dylib", "vendor/lastfm.fpclient.beta2.OSX-intel/dylibs/libtag.1.dylib", "vendor/lastfm.fpclient.beta2.OSX-intel/lastfmfpclient", "vendor/lastfm.fpclient.beta2.OSX-intel/license.txt", "vendor/lastfm.fpclient.beta2.linux-32/lastfmfpclient", "vendor/lastfm.fpclient.beta2.linux-32/readme.txt", "vendor/lastfm.fpclient.beta2.win32/Microsoft.VC80.CRT.manifest", "vendor/lastfm.fpclient.beta2.win32/lastfmfpclient.exe", "vendor/lastfm.fpclient.beta2.win32/libcurl.dll", "vendor/lastfm.fpclient.beta2.win32/libfftw3f-3.dll", "vendor/lastfm.fpclient.beta2.win32/msvcm80.dll", "vendor/lastfm.fpclient.beta2.win32/msvcp80.dll", "vendor/lastfm.fpclient.beta2.win32/msvcr80.dll", "vendor/lastfm.fpclient.beta2.win32/taglib.dll", "vendor/lastfm.fpclient.beta2.win32/zlib1.dll", "vendor/lastfmfpclient", "sweeper.gemspec"]
  s.homepage = %q{http://blog.evanweaver.com/files/doc/fauna/sweeper/}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Sweeper", "--main", "README"]
  s.require_paths = ["lib", "ext"]
  s.rubyforge_project = %q{fauna}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Automatically tag your music collection with metadata from Last.fm.}
  s.test_files = ["test/integration/sweeper_test.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<id3lib-ruby>, [">= 0"])
      s.add_runtime_dependency(%q<choice>, [">= 0"])
      s.add_runtime_dependency(%q<Text>, [">= 0"])
      s.add_runtime_dependency(%q<activesupport>, [">= 0"])
    else
      s.add_dependency(%q<id3lib-ruby>, [">= 0"])
      s.add_dependency(%q<choice>, [">= 0"])
      s.add_dependency(%q<Text>, [">= 0"])
      s.add_dependency(%q<activesupport>, [">= 0"])
    end
  else
    s.add_dependency(%q<id3lib-ruby>, [">= 0"])
    s.add_dependency(%q<choice>, [">= 0"])
    s.add_dependency(%q<Text>, [">= 0"])
    s.add_dependency(%q<activesupport>, [">= 0"])
  end
end
