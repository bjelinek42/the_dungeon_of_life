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
    room2
  end

  def current_attributes
    name = @character[:name]
    hit_points = @character[:hit_points]
    social_standing = @character[:social_standing]
    friends = ""
    @character[:friends].each do |friend|
      if friends.length ==1
        friends += friend
      else
        friends += ", " + friend
      end
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

  def room2
    puts "As you enter the next room, you see it opens into neighborhood, though unrecognizable. There are what looks like hundreds of kids around, all carrying bags full of candy. It is clearly Holloween, or this dimensions version of it. There are five kids standing near you, all commenting on each others costumes."
    puts "'That's a great orc costume #{@character[:name]}!' says one of the kids."
    puts "'Thanks! Took me like a month to make it,' you reply."
    puts "You notice one of the little brothers of one of the kids does not have a costume. 'Where is his costume?' you ask."
    puts "'Oh, his was stolen,' someone says, 'but he just a little kid so who cares.'"
    puts "Choice time. What will you do?"
    puts "1. Give him part of your costume. Yours won't look as good, but the kid will have a better night."
    puts "2. Go about your night. You will get more candy with a better constume!"
    puts "3. Track down the thief. What's to stop them from comming for your stuff next?"
    while true
      p 'Enter your choice:'
      choice = gets.chomp
      if choice == "1"
        puts "You take out your face paint you brought for touch ups and give it to the kid. You give him a couple of your weapons, the shoulder pads, and use one of your shin guards as a sheild for him to use. He doesn't look great, but he looks happy. The rest of the kids left a while ago, so you hang out with him going door to door. You learn his name is Eric, and he is learning karate at a local school. 'This feels like foreshadowing,' you say. 'What is that?' he responds. 'Nevermind.' You have lost 5 social standing, and Eric is now your friend."
        @character[:social_standing] -= 5
        @character[:friends] << "Eric"
        break
      elsif choice == "2"
        puts "You decide to take the road mostly travelled and travel with the other kids along the route. And damn, coming to the rich neighborhood really paid off! You got a full two pounds of candy, and gained 10 social standing"
        @character[:social_standing] += 10
        @character[:candy] = "Two pounds"
        break
      elsif choice == "3"
        puts "'That's bullshit. This thief needs to pay. Let's go kid.' You learn his name is Eric, and he is learning karate at a local school. He knows right where the bully is too, and after a few blocks you run into him. Somehow he is, like, 3 times larger than the rest of the kids around. He is sitting atop a thrown of candy, dressed in a spider man costume clearly too small for him. As you prepare for battle, he responds with a proposition."
        puts "1. Fight the thief."
        puts "2. He will give you ten pounds of candy to leave him alone."
        p 'Enter your choice:'
        choice = gets.chomp
        if choice == "1"
          "You recieve the candy. Eric looks betrayed, and vows vengence on your greedy soul."
          @character[:enemies] << "Eric"
          @character[:candy] = "Ten Pounds"
        elsif choice == "2"
          puts "You have too much honor to let him get aways with this. Eric looks ready to kill a bear, his eyes with a red twinge."
          puts "You see Eric sneak off into the shadows as the thief lays into you. You are quick, and not weighed down by your armor, not that it would help you anyway. You take a couple shots to the chest, but as the thief is beginning his death blow, Eric sweeps the leg and the thief falls face first onto a box of Good 'n' Plenty. In his greed, he did not realize he had taken the most deisgusting candy imaginable, and now was withering away. You and Eric celebrate, a little worse for wear, but with a lasting friendship. You have lost 20 hit points, and Eric is now your friend"
          @character[:friends] << "Eric"
          @character[:hit_points] -= 20
          break
        else
          puts "Please enter either 1 or 2. You are not getting out of this one."
        end
      else
        puts "Please enter a number between 1 and 3. You are not getting out of this one."
      end
    end
    current_attributes
  end
end

game = Dungeon.new
game.begin
