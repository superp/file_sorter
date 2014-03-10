Gem::Specification.new do |s|
  s.name        = 'file_sorter'
  s.version     = '0.0.1'
  s.date        = '2014-03-10'
  s.summary     = "File to folder sorter"
  s.description = "Simple folder generator for you files or photos"
  s.authors     = ["Pavel Galeta"]
  s.email       = "superp1987@gmail.com"
  s.files       = Dir["{lib,bin}/**/*"] + ["LICENSE", "README.md"]
  s.homepage    = "https://github.com/superp/file_sorter"
  s.license     = "MIT"

  s.executables << 'file_sorter'

  s.extra_rdoc_files = ["README.md"]
  s.require_paths = ["lib"]
end