MRuby::Build.new do |conf|
  toolchain :gcc
  conf.gembox 'default'
  conf.gem '/tmp/mruby-raft'
  conf.gem git: 'https://github.com/mattn/mruby-uv.git'
end
