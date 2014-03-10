module FileSorter
  autoload :Sorter, "file_sorter/sorter"

  # FileSorter.start :folder => "/Volumes/Data/superp/www/gems/file_sorter/test"
  #
  def self.start(options={})
    sorter = Sorter.new(options)
    sorter.start
  end

  # FileSorter.revert :folder => "/Volumes/Data/superp/www/gems/file_sorter/test"
  #
  def self.revert(options={})
    sorter = Sorter.new(options)
    sorter.revert
  end
end