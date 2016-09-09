class BoggleBoard

  def initialize
    @board = Array.new(4){Array.new(4)}  #creat an empty nested array with 4 elements each of the level
 
  end
  
  def shake!
    
    @board.each_with_index do |x, xindex|  #repeat the block the number of elememts.
      x.each_with_index do |y, yindex|    #
        @board[xindex][yindex]= ('A'..'Z').to_a.sample
        if @board[xindex][yindex] == 'Q' 
            @board[xindex][yindex] = 'Qu'
        end 
        
      end
    end

 
  end
  

  def join
    @board.each do |x|
      puts "#{x[0].ljust(3)}#{x[1].ljust(3)}#{x[2].ljust(3)}#{x[3].ljust(3)} "   #ljustはStringのみに使えるmethod
      # board.join: combine elements in a array into one string. in this case, apply for only x because we need 4 sets of 4 letters.
    end

  end
end

# instance method, means they only run on instance variable

board = BoggleBoard.new #create one boggle board object #initializeをするとき、ここでBoggleBoardオブジェクトをつくることが超重要。

board.shake!
board.join #what is this doing? 

puts "----------"
board.shake!
board.join

# .split changes string to Array
# .join changes array to string