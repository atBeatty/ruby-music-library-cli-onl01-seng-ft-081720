require 'pry'


class MusicImporter
    attr_accessor :path

    def initialize(path)
        @path = path

    end

    def files
        @files = Dir.entries(@path)
        @files.delete_if do |file|
            file == "." || file == ".."
        end
    end

    def import
        self.files.each do |file|
            Song.create_from_filename(file)
        end

        # binding.pry

    end


end
