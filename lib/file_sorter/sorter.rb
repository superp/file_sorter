require "fileutils"

module FileSorter
  class Sorter
    attr_accessor :folder, :format

    def initialize(options = {})
      @folder = options[:folder] || "."
      @format = options[:format] || "%Y/%m/%d"
    end

    def start
      Dir.foreach(@folder) do |file|
        next if [".", ".."].include?(file)

        full_path = File.join(@folder, file)
        new_folder = File.join(@folder, File.mtime(full_path).strftime(@format))

        FileUtils.mkdir_p new_folder
        FileUtils.mv full_path, File.join(new_folder, file)
      end
    end

    def revert
      FileUtils.cd(@folder) do
        Dir["**/*"].each do |item|
          if File.file?(item)
            FileUtils.mv item, File.join(@folder, File.basename(item))
          end
        end

        Dir["**/*"].each do |item|
          FileUtils.remove_dir(item) if File.directory?(item)
        end
      end
    end
  end
end