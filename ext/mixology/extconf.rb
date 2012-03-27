require "mkmf"
dir_config "mixology"
$CPPFLAGS += " -DRUBY_19"  if RUBY_VERSION =~ /1.9/
$CPPFLAGS += " -DRUBY_193" if RUBY_VERSION =~ /1.9.3/
create_makefile "mixology"
