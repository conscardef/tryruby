# Numbers and Math / Putting it differently
puts 4 * 10
puts 5 - 12
puts 30 / 4

# note: using p to print <object>.inspect from here on out, unless specified
# to more closeley approximate irb output

# Say Your Name
p "Joshua"

# Say Your Name Backwards
p "Joshua".reverse

# Counting the Letters
p "Joshua".length

# On Repeat
p "Joshua" * 5

# Hey, Summary #1 Already
# 40.reverse
# Stop, You're Barking Mad!
puts 40.to_s.reverse
puts 40.to_s.reverse.to_i # my own modification

# Apples are Different From Oranges
p []

# Standing in Line
p [12, 47, 35]

# One Raises Its hand
p [12, 47, 35].max

# Tucking a List Away
ticket = [12, 47, 35]

# Now Type Ticket
p ticket

# Saved, Tucked Away
p ticket.sort!

# Elemental
puts ticket[0]
puts ticket[1]
puts ticket[2]

# Summary #2 is Upon Us
poem = <<-EOL
My toast has flown from my hand
And my toast has gone to the moon.
But when I saw it on television,
Planting our flag on Halley's comet,
More still did I want to eat it.
EOL

puts poem

# Sadly, You Hate Toast Poetry
p poem.gsub("toast", "honeydew")

# Ready, Aim
p poem.reverse

# Too Much Reversal
p poem.lines.reverse

# Ringlets of Chained Methods
puts poem.lines.reverse.join

# Of All the Summaries, #3 is Here Now
books = {}

# A Wee Blank Book
books["Gravitys Rainbow"] = :splendid

# More Bite-Size Reviews
books["The deep end"] = :abysmal
books["Living colors"] = :mediocre

puts books

puts books.length

# Wait, Did I Like Gravity's Rainbow?
puts books["Gravitys Rainbow"]

# Hashes as Pairs
p books.keys

# Are You Harsh
ratings = Hash.new {0}

books.values.each { |rate|
  ratings[rate] += 1
}

puts ratings

# A Tally
5.times { print "Odelay! " }

# Have you got the time?
5.times { |time|
  puts time
}

# To (be) or not to (be)
puts "Hello"
puts("Hello")

# The Taming of the Shrew
def tame( number_of_shrews )
end

# In Ruby, Def Leppard means: define method Leppard
def tame( number_of_shrews )
  number_of_shrews.times {
    puts "Tamed a shrew"
  }
end

# The Ripened Fruit of Your Own Creation
tame 5

# Give and take
def tame( number_of_shrews )
  number_of_shrews.times {
    puts "Tamed a shrew"
  }
  return number_of_shrews
end

puts tame(3)

# The world is our oyster
def get_shakey
  {"William Shakespeare"=>
    {
      "1"=>{"title"=>"The Two Gentlemen of Verona", "finished"=>1591},
      "2"=>{"title"=>"The Taming of the Shrew", "finished"=>1591},
      "3"=>{"title"=>"Henry VI, Part 2", "finished"=>1591},
      "4"=>{"title"=>"Henry VI, Part 3", "finished"=>1591},
      "5"=>{"title"=>"Henry VI, Part 1", "finished"=>1592},
      "6"=>{"title"=>"Titus Andronicus", "finished"=>1592},
      "7"=>{"title"=>"Richard III", "finished"=>1593},
      "8"=>{"title"=>"Edward III", "finished"=>1593},
      "9"=>{"title"=>"The Comedy of Errors", "finished"=>1594},
      "10"=>{"title"=>"Love's Labour's Lost", "finished"=>1595},
      "11"=>{"title"=>"Love's Labour's Won", "finished"=>1596},
      "12"=>{"title"=>"Richard II", "finished"=>1595},
      "13"=>{"title"=>"Romeo and Juliet", "finished"=>1595},
      "14"=>{"title"=>"A Midsummer Night's Dream", "finished"=>1595},
      "15"=>{"title"=>"King John", "finished"=>1596},
      "16"=>{"title"=>"The Merchant of Venice", "finished"=>1597},
      "17"=>{"title"=>"Henry IV, Part 1", "finished"=>1597},
      "18"=>{"title"=>"The Merry Wives of Windsor", "finished"=>1597},
      "19"=>{"title"=>"Henry IV, Part 2", "finished"=>1598},
      "20"=>{"title"=>"Much Ado About Nothing", "finished"=>1599},
      "21"=>{"title"=>"Henry V", "finished"=>1599},
      "22"=>{"title"=>"Julius Caesar", "finished"=>1599},
      "23"=>{"title"=>"As You Like It", "finished"=>1600},
      "24"=>{"title"=>"Hamlet", "finished"=>1601},
      "25"=>{"title"=>"Twelfth Night", "finished"=>1601},
      "26"=>{"title"=>"Troilus and Cressida", "finished"=>1602},
      "27"=>{"title"=>"Sir Thomas More", "finished"=>1604},
      "28"=>{"title"=>"Measure for Measure", "finished"=>1604},
      "29"=>{"title"=>"Othello", "finished"=>1604},
      "30"=>{"title"=>"All's Well That Ends Well", "finished"=>1605},
      "31"=>{"title"=>"King Lear", "finished"=>1606},
      "32"=>{"title"=>"Timon of Athens", "finished"=>1606},
      "33"=>{"title"=>"Macbeth", "finished"=>1606},
      "34"=>{"title"=>"Antony and Cleopatra", "finished"=>1606},
      "35"=>{"title"=>"Pericles, Prince of Tyre", "finished"=>1608},
      "36"=>{"title"=>"Coriolanus", "finished"=>1608},
      "37"=>{"title"=>"The Winter's Tale", "finished"=>1611},
      "38"=>{"title"=>"Cymbeline", "finished"=>1610},
      "39"=>{"title"=>"The Tempest", "finished"=>1611},
      "40"=>{"title"=>"Cardenio", "finished"=>1613},
      "41"=>{"title"=>"Henry VIII", "finished"=>1613},
      "42"=>{"title"=>"The Two Noble Kinsmen", "finished"=>1614}
    }
  }
end

p get_shakey

# Noble Kinsmen
s = get_shakey
s["William Shakespeare"].each { |key, val|
  puts val["title"]
}

# All together now
def count_plays(year)
  s = get_shakey

  s["William Shakespeare"]
    .select { |k, v|
      v["finished"] == year
    }.each { |key, val|
      puts val["title"]
    }.count
end

puts count_plays(1591)

# All's Well That Ends Well
def print_plays(year_from, year_to)
  get_shakey["William Shakespeare"]
    .select { |k, v|
      year_from <= v["finished"] &&
      year_to >= v["finished"]
    }.each { |k, v|
      puts "#{v["title"].ljust(30)} #{v["finished"]}"
    }
end
print_plays(1600, 1605)

# If only I knew how to make a decision
if 1 < 2
  puts "It is true: 1 is less than 2"
end

puts "It is true: 1 is less than 2" if 1 < 2

p 5 <= 10
p 'abc' == 'def'
p true
p 123456
p 0
p nil
p 'xyz'.empty?
# p 'a' > 5

# And Now For the Starting Conclusion
a = 0

if a == 100
  puts "Expression is true, but a is now #{a}"
else
  puts "#{a} is not equal to 100"
end

# Me hungry
def hungry?(time_of_day_in_hours)
  if time_of_day_in_hours < 12
    puts "Me not hungry"
    false
  else
    puts "Me hungry"
    true
  end
end

def eat_an(what)
  puts "Me eat #{what}\n"
end

eat_an 'apple' if hungry?(14)
eat_an 'apple' if hungry?(10)

# Summary #6 Which Means You've Come So Far
p Hash.new

# Not a School Class, a Working Class
class Blurb
end

# The Stuff Apps are Made of
class Blurb
  attr_accessor :content, :time, :mood
end

# Accessors Are the Dangling Limbs
blurb1 = Blurb.new
puts blurb1
blurb1.content = "Today Mount Hood Was Stolen!"

# An object, That Neat Little Package
blurb1.time = Time.now
blurb1.mood = :sick

puts blurb1

# Quickening it Up
class Blurb
  attr_accessor :content, :time, :mood

  def initialize(mood, content="")
    @time = Time.now
    @content = content[0..39]
    @mood = mood
  end
end

# p Blurb.new.time

Blurb2 = Blurb.new :confused, "I can not believe Mt. Hood was stolen!"

# Your Own Turf
class Blurbalizer
  def initialize(title)
    @title = title
    @blurbs = [] # A fresh clean array
                 # for storing Blurbs
  end

  def add_a_blurb(mood, content)
    # The << means add to the end of the array
    @blurbs << Blurb.new(mood, content)
  end

  def show_timeline
    puts "Blurbify: #{@title} has #{@blurbs.count} Blurbs"

    @blurbs.sort_by { |t|
      t.time
    }.reverse.each { |t|
      puts "#{t.content.ljust(40)} #{t.time}"
    }
  end
end

myapp = Blurbalizer.new "The Big Blurb"

# What's that Blurb all about
myapp.add_a_blurb :moody, "Add Blurb here"

myapp.show_timeline

# It's All About Combining

class Blurb
  attr_accessor :content, :time, :mood

  def initialize(mood, content="")
    @time = Time.now
    @content = content[0..39]
    @mood = mood
  end

  def moodify
    if @mood == :sad
      return ":-("
    elsif @mood == :happy
      return ":-)"
    elsif @mood == :tired
      return "X-)"
    # Add other moods here
    end

    # The default mood
    ":-|"
  end
end

class Blurbalizer
  def initialize(title)
    @title = title
    @blurbs = []
  end

  def add_a_blurb(mood, content)
    @blurbs << Blurb.new(mood, content)
  end

  def show_timeline
    puts "Blurbalizer: #{@title} has #{@blurbs.count} Blurbs"

    @blurbs.sort_by { |t|
      t.time
    }.reverse.each { |t|
      puts "#{t.content.ljust(20)} #{t.moodify.ljust(20)} #{t.time}"
    }
  end
end

myapp.show_timeline