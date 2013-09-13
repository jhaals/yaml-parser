#!/usr/bin/env ruby
require 'yaml'
require 'pathname'

class YamlParser

  def get_files(dir)
    # Get all .yaml files from directory, return array
    files = []

    if File.file? dir
        files << dir
        return files
    end

    root = Pathname(dir)
    Pathname(root).find do |path|
      unless path == root
        files << path if path.file? && path.extname == '.yaml'
      end
    end
    files
  end

  def parse_files(files)
    # Parse array of yaml files. Return array of parser errors
    errors = []
    files.each do |f|
      begin
        YAML.load_file(f)
      rescue Exception => e
        errors << e
      end
    end
    errors
  end
end
