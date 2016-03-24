class OrangeTree
  
  def initialize name
    @name = name
    @age = 0
    @height = 1
    @fruit = 0

    puts "Tree #{name} is born"
  end

  def height
    puts "Your tree is #{@height} m high!"
  end

  def year_pass
    @age = @age + 1 
    @fruits == 0
    @height = @height + 2
      if @age == 3
        @fruit = 2
        puts "Your tree is 3 years old and is growing some fruits now!"
      end
      case 
        when @age > 4
           @fruit = @fruit + 3
        when @age > 6
           @fruit = @fruit + 4
      end

    if @age >= 8
      puts "Your tree has grown too old and died :( R.I.P #{@name}"
    exit
    end
  end

  def age
    puts "Your tree is #{@age} years old!"
  end


  def count_the_fruit
    if @fruit == 0
      puts "Your tree doesn't have any fruits at the moment!"
    else
      puts "Your tree has #{@fruit} fruits. Eat them!"
    end
  end

  def pick_fruit
    if @age < 3
      puts "Tree is too young for fruits!"
    end

    if @fruit > 0
      @fruit = @fruit - 1
      puts "Oh it was such an amazing orange!"
    end

    if @age >= 3 && @fruit == 0
      puts "You have ate all oranges!"
    end
  end
end


tree = OrangeTree.new "Bernard"

tree.height
tree.pick_fruit
# year 1
puts
tree.year_pass
tree.age
# year 2
puts
tree.year_pass
tree.height
tree.count_the_fruit
tree.age
tree.pick_fruit
tree.pick_fruit
# year 3
puts
tree.year_pass
tree.height
tree.count_the_fruit
tree.pick_fruit
tree.count_the_fruit
tree.pick_fruit
tree.count_the_fruit
tree.pick_fruit
tree.pick_fruit
tree.pick_fruit

# year 4
puts
tree.year_pass
tree.age

# year 5
puts
tree.year_pass
tree.count_the_fruit
tree.pick_fruit
tree.count_the_fruit
tree.age
puts

# year 6,7
tree.year_pass
tree.year_pass
tree.age
tree.count_the_fruit
tree.height

# year 8
tree.pick_fruit
tree.count_the_fruit
tree.year_pass



