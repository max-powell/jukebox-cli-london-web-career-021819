require "pry"

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  help_text = "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
  puts help_text
end

def list(songs)
  songs.each_with_index do |track, index|
    puts "#{index + 1}. #{track}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  return user_input
  if user_input.is_a? Integer && user_input <= songs.length
    puts "Playing #{songs[user_input-1]}"
  elsif user_input.is_a? String && songs.include?(user_input)
    puts "Playing #{user_input}"
  else
    puts "Invalid input, please try again."
  end
end
