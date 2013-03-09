module TestGem

  class File

    puts "class #{self} defined"  

    def self.first file_name
      #f = open(file_name, "r")
      #f.readline.chop 
      f = open(file_name, "r").gets.chop
      #line = f.readline.chop 
      #f.close
      #line
    end
    
    def self.last file_name
      #f = open(file_name, "a+")
      #f.readlines[-1].chop
      f = open(file_name, "a+").readlines[-1].chop
    end 

  end

  class MyFile < File
  end
  
end
