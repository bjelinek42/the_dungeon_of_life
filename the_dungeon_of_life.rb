class Dungeon

  def initialize
    @character = {name: "", hit_points: 100, social_standing: 50, friends: []}
  end

  def begin
    puts "Welcome to the Dungeon of Life! What strange, awkward moments you will find lurking around every corner, with some danger, of course! Every journey is different, yet somehow the same. I wish you good luck, and don't forget your towel!"
    puts 'Enter your name for the record:'
    name = gets.chomp.to_s
    @character[:name] = name
    room1
  end

  def current_attributes
    name = @character[:name]
    hit_points = @character[:hit_points]
    social_standing = @character[:social_standing]
    friends = ""
    @character[:friends].each do |friend|
      friends += friend
    end
    puts "Your current stats are:"
    puts "Name: #{name}"
    puts "Hit Points: #{hit_points}/100"
    puts "Social Standing: #{social_standing}/100"
    puts "Friends: #{friends}"
  end

  def room1
    p "You suddenly find yourself in a school playground, gathered with the other kids. You somehow recognize them, but cannot remember names, or really make out any faces. The background is stark white, almost like you are nowhere at all. You see one face you can make out, your friend Steven from elementary school. He is on the ground sobbing, a combination of snot and tears covering his face. 'I knew Steven was a wimp!' says the larger kid standing over him, laughing."
    p "It seems you have a choice to make. What will you do?"
    p "1. Step in and punch the bully in the face. That will show him!"
    p "2. Call a teacher. They will take care of this."
    p "3. Slink away quietly. Can't risk the bully coming after you later."
    p "4. Step in to talk to the bully. Words are the best weapons."
    while true
      p 'Enter your choice:'
      choice = gets.chomp
      if choice == "1"
        puts "Your step into the circle and punch the bully in his face. Unfortunately, this is the first punch you have thrown in your life, and the bully is way bigger than you. He puts you down with one swing. However, Steven is grateful you distracted the bully and he was able to get away. You lose 10 hit points, 10 social standing, and Steven is now your friend."
        @character[:hit_points] -= 10
        @character[:social_standing] -= 10
        @character[:friends] << "Steven"
        break
      elsif choice == "2"
        puts "You yell for Ms. Patterson to come over. She responds quickly, breaking up the fight. However, wanting a show, the rest of the kids glare at you as this is the most exciting thing that has happened at the school in a while. Steven is also mad as he knows his beating will come sometime now when the teachers are not around. You lose 10 social standing."
        @character[:social_standing] -= 15
        break
      elsif choice == "3"
        puts "Ah, the cowardly choice. Classic. No change to your attributes."
        break
      elsif choice == "4"
        puts "You step in to say something. 'You bullies are all the same. You are only picking on Steven because you are unhappy with yourself. Why don't you pick on someone your own size?' But the bully is much bigger than you, and hits you hard in the stomach. Luckily a teacher hears the commotion and breaks up the group. You help Steven up off the ground. You have lost 10 hit points, gained 5 social standing, and Steven is now your friend."
        @character[:hit_points] -= 10
        @character[:social_standing] += 5
        @character[:friends] << "Steven"
        break
      else
        puts "Please enter a number between 1 and 4. You are not getting out of this one."
      end
    end
    current_attributes
  end
end

game = Dungeon.new
game.begin
