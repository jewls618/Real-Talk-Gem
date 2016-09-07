class RealTalk
  HAPPY_TALK = [
    "Be the reason someone smiles today.",
    "Chocolate comes from cocoa, which is a tree, that makes it a plant, so chocolate is a salad!",
    "Always be yourself. Unless you can be Batman. Then always be Batman.",
    "Being happy never goes out of style!",
    "A smile is the prettiest thing you can wear.",
    "Keep being happy in this moment for this moment is your life.",
    "Happiness is the secret to all beauty.",
    "Keep it up.",
    "Someone else is happy because you are happy.",
  ]
  SAD_TALK = [
    "Remember, Frech Fries are gluten free.",
    "Stop hating yourself for everything your aren't and start loving yourself for everything you already are.",
    "Stars can't shine without darkness.",
    "Just believe in yourself.",
    "Everything will be ok in the end. If it's not ok, it's not the end.",
    "Happy mind, happy life.",
    "Fall seven times, stand up eight.",
    "Keep being yourself!",
    "What hurts you today will make you stronger tomorrow.",
    "H.O.P.E: Hold On, Pain Ends.",
    "Life is too short to spend time with people who suck the happiness out of you.",
  ]
  STRESSED_TALK = [
    "You might have to fight a battle more than once to win it.",
    "Every accomplishment starts with the decision to try it.",
    "Life is like riding a bicycle. To keep your balance, you must keep moving.",
    "Just keep swimming...",
    "Failure will never overtake me if my determination to succeed is strong enough.",
    "Start by doing what's necessary, then do what'd possible; and suddenly you are doing the impossible.",
    "Remind yourself that it's ok to not be perfect.",
    "Believe in yourself. ",
    "You will never have this day again so make it count.",
    "Problems are not stop signs, they are guidelines.",
  ]
  MAD_TALK = [
    "I'll slap you so hard that even Google won't be able to find you.",
    "Don't forget to be forgiving.",
    "A moment of patience in a moment of anger saves you a hundred moments of regret.",
    "Take a deep breath and let it go. ",
    "Hating someone is like drinking poison and expecting the other person to die.",
    "The more anger towards the past you carry in your heart, the less capable you are of loving in the present.",
    "A quick temper will make a fool of you soon enough.",
    "Put yourself in someone else's shoes and rethink the issue making you mad.",
    "Suck it up and deal with it like an adult.",
    "Don't get mad, get even.",
  ]
  EXCITED_TALK = [
    "Go confidently in the direction of your dreams. Live the life you have imagined.",
    "Don't call it a dream, call it a plan!",
    "Never let go of your dreams!",
    "Don't wait for the perfect moment. Take the moment and make it perfect.",
    "Wake up with determination, go to bed with satisfaction.",
    "When you clearly know what you want, you'll wake up every morning excited about life.",
    "Way to let nothing kill your vibe!",
    "You deserve a drink!",
    "That makes me excited too!",
    "Spread your excitement around and make someone else happy too!",
  ]

  def real_talk
    puts "Welcome to Real Talk!"
    welcome_message
    while !valid_user_input?
      print_bad_input_message
      welcome_message
    end
    ask_question
    response
  end

  private
  attr_reader :feelings, :reason_for_feelings

  def welcome_message
    puts "\nHow are you feeling today?"
    puts "HAPPY / SAD / STRESSED / MAD / EXCITED"
    @feelings = gets.chomp.downcase.strip
  end

  def valid_user_input?
    feelings == 'happy' ||
    feelings == 'sad' ||
    feelings == 'stressed' ||
    feelings == 'mad' ||
    feelings == 'excited'
  end

  def print_bad_input_message
    puts "Sorry, #{feelings} is not a valid emotion. "
  end

  def ask_question
    puts "\nWhat's making you feel that way? "
    @reason_for_feelings = gets.chomp
  end

  def response
    if feelings == 'happy'
      puts "\n" + HAPPY_TALK.sample
    elsif feelings == 'sad'
      puts "\n" + SAD_TALK.sample
    elsif feelings == 'stressed'
      puts "\n" + STRESSED_TALK.sample
    elsif feelings == 'mad'
      puts "\n" + MAD_TALK.sample
    else
      puts "\n" + EXCITED_TALK.sample
    end
  end
end

RealTalk.new.real_talk
