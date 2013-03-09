$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

require 'test_gem'

describe TestGem do

  subject { TestGem }

  # test prior to init_config, which will create missing file
  # no, just delete it first to make sure
  it "config" do
    if File.exists?('config.yaml')
      File.delete('config.yaml') 
    end
  end

  it { TestGem.should be_a Module }

  subject { TestGem::configure }

  it "config file created should contain default name and supported types" do
    TestGem::configure
    expected = { :default_file_name => 'default_file.txt', :supported_types => ['txt', 'pdf'] }
    YAML.load(File.read("config.yaml")).should eq expected
  end

end
