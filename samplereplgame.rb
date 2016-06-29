
#comment for homework - Phil
def ask_question(question, options_hash)
  puts question
  options_hash.keys.each_with_index do |option, i|
    puts "#{i + 1}) #{option}"
  end

  choice = gets.chomp
  index = choice.to_i - 1
  if index > options_hash.keys.length
    puts "You're dumb or evil"
    return false
  end

  choice = options_hash.keys[index]
  puts options_hash[choice]
  choice
end




puts "Welcome to the beginning of your story, Batman!"

puts "*" * 10

puts "The biggest battle of your life is coming!"


ally = ask_question("You have the choice of bringing one of your three closest friends. Who do you bring?", {
  "Beyonce" => "Bey and her Beyhive are by your side!",
  "Ed" => "The knowledge and power of Ruby are behind you!",
  "Jesus" => "Jesus is ready to bring a flood of biblical proportions on your foes!"
})


weapon = ask_question("One last step! Time to choose your weapon:", {
  "Donkey" => "Um.. alright.",
  "Chair" => "Break it over their heads!",
  "Plane" => "Oh s%!&"
})


#
ask_question("Time to march to battle! Who do we take out first?", {
  "Stef" => "#{ally} smacks Steff out of the court with the #{weapon}",
  "Ramsay Bolton" => "#{ally} knocks Ramsay unconscious with the #{weapon} and feeds him to dogs.",
  "The Meter Maid" => "The Meter Maid gives #{ally} a ticket before we could use the #{weapon}"
})
