characters = [
  {
    name: "Kaladin Stormblessed",
    occupation: "soldier",
    appearance:
      {
        hair_colour: "black",
        eye_colour: "dark_brown"
      },
    nationality: "Alethi",
    abilities: [{surgebinding: "windrunner"}, "shardbearer"],
    spren: "Syl",
    relationships:
      {
        family:
          [
            {
              name: "Lirin",
              relation: "father",
              status: "alive"
            },
            {
              name: "Hesina",
              relation: "mother",
              status: "alive"
            },
            {
              name: "Tien",
              relation: "brother",
              status: "dead"
            }
          ],
        friends:
          [
            {
              name: "Moash",
              status: "alive",
              abilities: [{surgebinding: "windrunner"}]
            },
            {
              name: "Rock",
              status: "alive",
              abilities: [{surgebinding: "windrunner"}]
            }]
      }
  }
]

def quit_game
  p "Thanks for playing!"
  exit
end

def run_answers(right_answer_string, user_answer)
  if right_answer_string == user_answer
    return "correct"
  elsif user_answer == "exit"
    quit_game
  else
    return "incorrect"
  end
end

def question(question_string, right_answer_string, right_answer)
  p question_string
  user_answer = gets.chomp()
  while run_answers(right_answer_string, user_answer) == "incorrect"
    p "Sorry, incorrect!  Please try again."
    p question_string
    user_answer = gets.chomp()
    run_answers(right_answer_string, user_answer)
  end
  p "Found: '#{right_answer}'."
  p "Correct!  Good job!"
end


p "Welcome to the game!  To exit at any time, type 'exit'"
p "You're going to use the characters array to find information about Kaladin Stormblessed."
question("Let's start.  Locate Kaladin's name in the characters array.", "characters[0][:name]", characters[0][:name])
question("Locate Kaladin's occupation.", "characters[0][:occupation]", characters[0][:occupation])
question("Locate Kaladin's eye_colour.", "characters[0][:appearance][:eye_colour]", characters[0][:appearance][:eye_colour])
question("Locate the name of Kaladin's surgebinding ability.", "characters[0][:abilities][0][:surgebinding]", characters[0][:abilities][0][:surgebinding])
question("Locate Kaladin's brother's name.", "characters[0][:relationships][:family][2][:name]", characters[0][:relationships][:family][2][:name])
question("Locate Kaladin's friend Moash's dead/alive status.", "characters[0][:relationships][:friends][0][:status]", characters[0][:relationships][:friends][0][:status])
question("Locate the name of Kaladin's friend Rock's surgebinding ability.", "characters[0][:relationships][:friends][1][:abilities][0][:surgebinding]", characters[0][:relationships][:friends][1][:abilities][0][:surgebinding])
p "That was a tough one!  Great work, you finsihed the game!"
