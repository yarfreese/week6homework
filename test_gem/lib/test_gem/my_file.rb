module TestGem

  class MyFile

    puts "class #{self} defined"  

    def self.first file_name
      #f = open(file_name, "r")
      #f.readline.chop 
      #
      #lines = IO.readlines(file_name)
      #lines.first.chomp!
      #
      #IO.readlines(file_name).first.chomp!
      #
      #f = open(file_name, "r").gets.chop
      #
      open(file_name, "r").gets.chop
      #
      #line = f.readline.chop 
      #f.close
      #line
      #
    end

    def self.last file_name
      #f = open(file_name, "a+")
      #f.readlines[-1].chop
      open(file_name, "a+").readlines[-1].chop
      #
      File.open(file_name) { |f| f.readlines[-1].chop }
    end 

  end

end
