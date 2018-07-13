 require "pry"

# Write your code here!
def game_hash
game_hash = {
  :home => {
    :team_name => "Brooklyn Nets",
    :colors => ["Black","White"],
    :players => {
        "Alan Anderson" => {:number => 0,
                    :shoe => 16,
                    :points => 22,
                    :rebounds => 12,
                    :assists => 12,
                    :steals => 3,
                    :blocks => 1,
                    :slam_dunks => 1
                    },
        "Reggie Evans" => {:number => 30,
                    :shoe => 14,
                    :points => 12,
                    :rebounds => 12,
                    :assists => 12,
                    :steals => 12,
                    :blocks => 12,
                    :slam_dunks => 7
                    },
        "Brook Lopez" => {:number => 11,
                    :shoe => 17,
                    :points => 17,
                    :rebounds => 19,
                    :assists => 10,
                    :steals => 3,
                    :blocks => 1,
                    :slam_dunks => 15
                    },
        "Mason Plumlee" => {:number => 1,
                    :shoe => 19,
                    :points => 26,
                    :rebounds => 12,
                    :assists => 6,
                    :steals => 3,
                    :blocks => 8,
                    :slam_dunks => 5
                    },
        "Jason Terry" => {:number => 31,
                    :shoe => 15,
                    :points => 19,
                    :rebounds => 2,
                    :assists => 2,
                    :steals => 4,
                    :blocks => 11,
                    :slam_dunks => 1
                    }            },},
  :away => {
    :team_name => "Charlotte Hornets",
    :colors => ["Turquoise", "Purple"],
    :players => {
      "Jeff Adrien" => {:number => 4,
                    :shoe => 18,
                    :points => 10,
                    :rebounds => 1,
                    :assists => 1,
                    :steals => 2, 
                    :blocks => 7,
                    :slam_dunks => 2
                    },
      "Bismak Biyombo" => {:number => 0,
                    :shoe => 16,
                    :points => 12,
                    :rebounds => 4,
                    :assists => 7,
                    :steals => 7, 
                    :blocks => 15,
                    :slam_dunks => 10
                    },
      "DeSagna Diop" => {:number => 2,
                    :shoe => 14,
                    :points => 24,
                    :rebounds => 12,
                    :assists => 12,
                    :steals => 4, 
                    :blocks => 5,
                    :slam_dunks => 5
                    },
      "Ben Gordon" => {:number => 8,
                    :shoe => 15,
                    :points => 33,
                    :rebounds => 3,
                    :assists => 2,
                    :steals => 1, 
                    :blocks => 1,
                    :slam_dunks => 0
                    },
      "Brendan Haywood" => {:number => 33,
                    :shoe => 15,
                    :points => 6,
                    :rebounds => 12,
                    :assists => 12,
                    :steals => 22, 
                    :blocks => 5,
                    :slam_dunks => 12
                    },},}}
end

def num_points_scored(name)
  
    if game_hash[:home][:players].include?(name)
      game_hash[:home][:players][name][:points]
    elsif game_hash[:away][:players].include?(name)
      game_hash[:away][:players][name][:points]
    else
      "Not found"
    end 

end 

def shoe_size(name)
  
  if game_hash[:home][:players].include?(name)
    game_hash[:home][:players][name][:shoe]
  elsif game_hash[:away][:players].include?(name)
    game_hash[:away][:players][name][:shoe]
  else
    "Not found"
  end 
end 

def team_colors(team)
  
  if game_hash[:home][:team_name] == team
    game_hash[:home][:colors]
  elsif game_hash[:away][:team_name] == team
    game_hash[:away][:colors]
  else 
    "Team colours not found"
  end 
end

def team_names
  
  array = []

  game_hash.each do |status, data|
    data.each do |key, value|
      if key == :team_name
      array << value
      end 
    end
  end 
  array
end 

def player_numbers(team)
  
  array = []
  hash = {}
 
 if game_hash[:home][:team_name].include?(team)
  game_hash[:home][:players].each_value do |x|
    array << x[:number]
  end 
  array
elsif game_hash[:away][:team_name].include?(team)
  game_hash[:away][:players].each_value do |x|
    array << x[:number]
  end 
  array 
else 
  "Cant find team"
end 
end 

def player_stats (name)
  
  if game_hash[:home][:players].include?(name)
    game_hash[:home][:players][name]
  elsif game_hash[:away][:players].include?(name)
    game_hash[:away][:players][name]
  else
    "Cant find player"
  end 
  
end 

def big_shoe_rebounds
  
  size_container = 0
  rebound_container = 0
  player1 = ""
  
    game_hash[:home][:players].each do |name, player|
      if player[:shoe] > size_container
        size_container = player[:shoe]
        rebound_container = player[:rebounds]
        player1 = name
      end 
    end 
    game_hash[:away][:players].each do |name, player|
      if player[:shoe] > size_container
        size_container = player[:shoe]
        rebound_container = player[:rebounds]
        player1 = name
      end 
  end
  
  rebound_container
  
end 

#Bonus Questions :)

def most_points_scored

  points_container = 0
  player1 = ""
  
    game_hash[:home][:players].each do |name, player|
      if player[:points] > points_container
        points_container = player[:points]
        player1 = name
      end 
    end 
    game_hash[:away][:players].each do |name, player|
      if player[:points] > points_container
        points_container = player[:points]
        player1 = name
      end 
  end
  
  player1

end 

def winning_team
  home_team_score = 0
  away_team_score = 0 
  
  game_hash[:home][:players].each do |name, player|
       home_team_score += player[:points]
    end 
  
  game_hash[:away][:players].each do |name, player|
       away_team_score += player[:points]
    end 
  
  if home_team_score > away_team_score 
    game_hash[:home][:team_name]
  elsif  
    game_hash[:away][:team_name]
  else 
    "Draw"
  end 
  
end 

def player_with_longest_name
  name_container = ""
  char_count = 0
  
  game_hash[:home][:players].each do |name, player|
    if name.length > char_count
      name_container = name
      char_count = name.length
    end 
  end 
  game_hash[:away][:players].each do |name, player|
    if name.length > char_count
      name_container = name
      char_count = name.length
    end 
  end 
  
  name_container
end 

#Super Bonus XD 

def long_name_steals_a_ton?

#Find the player with the most amount of steals 

steal_counter = 0
name_container = ""

game_hash[:home][:players].each do |name, player|
    if player[:steals] > steal_counter
      steal_counter = player[:steals]
      name_container = name
    end 
  end 
game_hash[:away][:players].each do |name, player|
    if player[:steals] > steal_counter
      steal_counter = player[:steals]
      name_container = name
    end 
  end 

#Compare found name with the player of the longest name 
player_with_longest_name == name_container

end