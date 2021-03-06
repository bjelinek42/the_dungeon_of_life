require_relative 'tic_tack_toe'
class Dungeon

  def initialize
    @character = {name: "", hit_points: 100, social_standing: 50, friends: [], enemies: []}
  end

  def begin
    puts "Welcome to the Dungeon of Life! What strange, awkward moments you will find lurking around every corner, with some danger, of course! Every journey is different, yet somehow the same. I wish you good luck, and don't forget your towel!"
    puts 'Enter your name for the record:'
    name = gets.chomp.to_s
    @character[:name] = name
    room1
    room2
    room3
  end

  def current_attributes
    name = @character[:name]
    hit_points = @character[:hit_points]
    social_standing = @character[:social_standing]
    friends = ""
    enemies = ""
    @character[:friends].each_with_index do |friend, index|
      if index == 0
        friends += friend
      else
        friends += ", " + friend
      end
    end
    @character[:enemies].each_with_index do |enemy, index|
      if index == 0
        enemies += enemy
      else
        enemies += ", " + enemy
      end
    end
    puts "Your current stats are:"
    puts "Name: #{name}"
    puts "Hit Points: #{hit_points}/100"
    puts "Social Standing: #{social_standing}/100"
    puts "Friends: #{friends}"
    puts "Enemies: #{enemies}"
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
    puts "Hit enter to continue"
    gets
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
        puts "You decide to take the road mostly travelled with the other kids along the route. And damn, coming to the rich neighborhood really paid off! You got a full two pounds of candy, and gained 10 social standing"
        @character[:social_standing] += 10
        @character[:candy] = "Two pounds"
        break
      elsif choice == "3"
        puts "'That's bullshit. This thief needs to pay. Let's go kid.' You learn his name is Eric, and he is learning karate at a local school. He knows right where the bully is too, and after a few blocks you run into him. Somehow he is, like, 3 times larger than the rest of the kids around. He is sitting atop a thrown of candy, dressed in a spider man costume clearly too small for him. As you prepare for battle, he responds with a proposition."
        puts "1. He will give you ten pounds of candy to leave him alone."
        puts "2. Fight the thief."
        p 'Enter your choice:'
        choice = gets.chomp
        if choice == "1"
          puts "You recieve the candy. Eric looks betrayed, and vows vengence on your greedy soul."
          @character[:enemies] << "Eric"
          @character[:candy] = "Ten Pounds"
          break
        elsif choice == "2"
          puts "You have too much honor to let him get aways with this. Eric looks ready to kill a bear, his eyes with a red twinge."
          puts "You see Eric sneak off into the shadows as the thief lays into you. You are quick, and not weighed down by your armor, not that it would help you anyway. You take a couple shots to the chest, but as the thief is beginning his death blow, Eric sweeps the leg and the thief falls face first onto a box of Good 'n' Plenty. In his greed, he did not realize he had taken the most deisgusting candy imaginable, and now was withering away. You and Eric celebrate, a little worse for wear, but with a lasting friendship. You have lost 20 hit points, and Eric is now your friend. You leave the candy for the kids, Robinhood style."
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
    puts "Hit enter to continue"
    gets
  end

  def room3
    puts "You enter a stadium full of faceless people, a small board in the center with two chairs. Seated at one is a small child. People are cheering you as you approach, though you know not for what."
    puts "Welcome to the tic-tack-toe-championships! I am your host, Howie Mandell!"
    puts "Man, this guy is everywhere... you think"
    puts "'Our contestants today are Suzie and #{@character[:name]}! The winner today will be given the Sword of Victory, which should help in the event of a boss fight! And, as always, the loser today will get a punch to the gut by our celebrity guest!Today, that just so happens to be Dwayne 'The Rock' Johnson!'"
    puts "A curtain opens up and The Rock is doing his signature eyebrow raise. You notice Suzie is not looking at him, as tears roll down her face."
    puts "'Without further ado, let the game begin!'"
    puts "Well this is a counundrum. You get to go first, and you know how to play this game and win, but Suzie might die if she gets hit by the voice of Maui. It is also going to be really painful to get hit... You decide, but you have to play the game!"
    while true
      game = Tic_tack_toe.new
      winner = game.begin_tic_tack_toe
      puts "Hit enter to continue"
      gets
      if winner == ""
        puts "The crowed jeers you and Suzie."
        puts "'The game cannot end in a tie! We must play again!' Howie says. You prepare for another game..."
      elsif winner == "Suzie"
        puts "The crowd cheers as The Rock cracks his knuckles. Suzie is overcome with joy, but there is a look on her face that says she know what you did for her."
        puts "'Here comes my favorite part!' Howie screams. The Rock hits you right in the gut, and you double over in pain. You have lost 20 hit points, 10 social standing, and Suzie is now your friend."
        @character[:friends] << "Suzie"
        @character[:hit_points] -= 20
        @character[:social_standing] -= 10
        break
      elsif winner == "Player"
        puts "Suzie starts to cry again. The Rock seems unfazed that he will be hitting a little girl, and the crowd cheers for it."
        puts "'Well, I can't believe I am saying this, but let's get to punching this child! What a fate #{@character[:name]} has given you!' Howie yells."
        puts "The Rock winds up and really gives it to her right in the gut. To everyone's surprise, upon contact there is a burst of light, and Suzie comes away unscathed. She looks you in the eyes and says some kind of Latin phrase in a demonic voice, then leaves the stadium. You feel uneasy..."
        puts " You have gained 10 social standing, the Sword of Victory, and Suzie is now your enemy."
        @character[:enemies] << "Suzie"
        @character[:social_standing] += 10
        @character[:gear] << "Sword of Victory"
        break
      end
    end
    current_attributes
  end
end

dungeon = Dungeon.new
dungeon.begin
