require_relative '../lib/yaml-parser.rb'

describe YamlParser do
  parser = YamlParser.new
  describe 'validation' do
    it "should fail parsing file" do
      errors = parser.parse_files ['spec/fixtures/invalid.yaml']
      errors.length.should == 1
    end
    it "should pass parsing file" do
      errors = parser.parse_files ['spec/fixtures/valid.yaml']
      errors.length.should == 0
    end
    it "should pass parsing directory" do
      files = parser.get_files 'spec/fixtures/yaml_dir'
      errors = parser.parse_files files
      errors.length.should == 0
      files.length.should == 2
    end
  end
end
