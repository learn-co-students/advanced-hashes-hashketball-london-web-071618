require "pry"
# Write your code here!
# def good_practices
#   game_hash.each do |location, team_data|
#     #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
#     binding.pry
#       team_data.each do |attribute, data|
#         #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
#         binding.pry
 
#         #what is 'data' at each loop through out .each block? when will the following line of code work and when will it break?
#         data.each do |data_item|
#             binding.pry
#       end
#     end
#   end
# end

def game_hash
  {
:home => {
  :team_name => "Brooklyn Nets",
  :colors => ["Black", "White"],
     #key points to a hash of players whose names (as strings) are the keys to a hash containing their stats.
  :players => [
  {
       :name => "Alan Anderson",
       :number => 0,
       :shoe => 16,
       :points => 22, 
       :rebounds => 12, 
       :assists => 12, 
       :steals => 3, 
       :blocks => 1, 
       :slam_dunks => 1
  },
  {
       :name => "Reggie Evans",
       :number => 30,
       :shoe => 14,
       :points => 12, 
       :rebounds => 12, 
       :assists => 12, 
       :steals => 12, 
       :blocks => 12, 
       :slam_dunks => 7
  },
  {
    :name => "Mason Plumlee",
       :number => 1,
       :shoe => 19,
       :points => 26, 
       :rebounds => 12, 
       :assists => 6, 
       :steals => 3, 
       :blocks => 8, 
       :slam_dunks => 5
  },
  {
    :name => "Jason Terry",
       :number => 31,
       :shoe => 15,
       :points => 19, 
       :rebounds => 2, 
       :assists => 2, 
       :steals => 4, 
       :blocks => 11, 
       :slam_dunks => 1
  }
  ]
  },
  # for the "away team"
:away => {
    :team_name => "Charlotte Hornets",
    :colors => ["Turquoise", "Purple"],
     #key points to a hash of players whose names (as strings) are the keys to a hash containing their stats.
     :players => [
       {
       :name => "Jeff Adrien",
       :number => 4,
       :shoe => 18,
       :points => 10, 
       :rebounds => 1, 
       :assists => 1, 
       :steals => 2, 
       :blocks => 7, 
       :slam_dunks => 2
      },
      {
       :name => "Bismak Biyombo",
       :number => 0,
       :shoe => 16,
       :points => 12, 
       :rebounds => 4, 
       :assists => 7, 
       :steals => 7, 
       :blocks => 15, 
       :slam_dunks => 10
      },
      {
        :name => "DeSagna Diop",
       :number => 2,
       :shoe => 14,
       :points => 24, 
       :rebounds => 12, 
       :assists => 12, 
       :steals => 4, 
       :blocks => 5, 
       :slam_dunks => 5
      },
      {
        :name => "Ben Gordon",
       :number => 8,
       :shoe => 15,
       :points => 33, 
       :rebounds => 3, 
       :assists => 2, 
       :steals => 1, 
       :blocks => 1, 
       :slam_dunks => 0
      },
      {
        :name => "Brendan Haywood",
       :number => 33,
       :shoe => 15,
       :points => 6, 
       :rebounds => 12, 
       :assists => 12, 
       :steals => 22, 
       :blocks => 5, 
       :slam_dunks => 12
      }
    ]
   }
  }
 
end

def num_points_scored(name)
  # answer = nil
  
game_hash.each do |team, data|
  puts "#{team}: #{data}"
#   players_array = team_hash[:players]
#   players_array.each do |player_team_hash|
#     if player_team_hash[:name] == name
#       answer = player_team_hash[:points]
#     end 
#   end 
# end 
# answer
end 

# def shoe_size(name)
#   answer = 10
#   game_hash.each do |team, hash|
#     players_array= hash[:players]
#     players_array.each do |player_hash|
#       if player_hash[:name]==name
#         answer= player_hash[:shoe]
#       end
#     end
#   end 
#   answer 
# end

# def team_colors
# end

# def team-names
# end

# def player_numbers
# end

# def player_status
# end

# def big_shoe_rebounds(name)
#   game_hash.each do |team, hash|
#     players_array= hash[:players]
#     players_array.each do |player_hash|
#       if player_hash[:shoe_size] == shoe_size
#       return player[:rebounds]
#     end
#     end
#   end
#   answer
# end 
  
# def most_points_scored
# end

# def winning_team
# end

# def player_with_longest_name
# end

# def long_name_steals_a_ton
# end



