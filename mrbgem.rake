MRuby::Gem::Specification.new('mruby-oauth') do |spec|
  spec.license = 'MIT'
  spec.authors = 'MATSUMOTO Ryosuke'
  spec.version = '0.0.1'
  spec.add_dependency('mruby-pack')
  spec.add_dependency('mruby-digest')
  spec.add_dependency('mruby-json')
  spec.add_dependency('mruby-sleep')
  spec.add_dependency('mruby-http')
  spec.add_dependency('mruby-httprequest')
end
