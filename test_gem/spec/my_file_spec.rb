$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

require 'test_gem'

describe TestGem::MyFile do

  context '::first' do

    it 'returns first line of file' do
      TestGem::MyFile.first('./lib/test_gem.rb').should eq \
        %{$LOAD_PATH.unshift File.expand_path("../test_gem", __FILE__)}
    end

  end

  context '::last' do

    it 'MyFile::last should return last line of file' do
      TestGem::MyFile.last('./README.md').should eq \
        %{this is the last line of the README.md file}
    end

  end
    
end
