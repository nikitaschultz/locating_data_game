require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../locating_data_game.rb')

class FunctionsTest < MiniTest::Test

def setup
@characters = [
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
end

def test_question_right_answer
  result = run_answers("@characters[0][:occupation]", "@characters[0][:occupation]")
  assert_equal(result, "correct")
end

def test_question_wrong_answer
  result = run_answers("@characters[0][:relationships][:friends][1][:abilities][0][:surgebinding]", "@characters[0][:relationships]")
  assert_equal(result, "incorrect")
end


end
