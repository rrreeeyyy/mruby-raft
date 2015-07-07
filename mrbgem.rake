MRuby::Gem::Specification.new('mruby-raft') do |spec|
  spec.license = 'MIT'
  spec.authors = 'Yoshikawa Ryota'
  spec.add_dependency('mruby-time')
  spec.add_dependency('mruby-random')
  spec.add_dependency('mruby-struct')
end
