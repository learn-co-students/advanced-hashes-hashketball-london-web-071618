require "pry"

def game_hash
  
 {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black","White"],
      :players => {
        "Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
        "Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
        "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        },
        "Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1
        }
      }
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise","Purple"],
      :players => {
        "Jeff Adrien" => {
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
        "Bismak Biyombo" =>{
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10
        },
        "DeSagna Diop" => {
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        },
        "Ben Gordon" => {
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
        "Brendan Haywood" => {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12
        }
      }
    }
  }
end

def players(game_hash)
  home = game_hash[:home][:players]
  away = game_hash[:away][:players]
  all_players = home.merge(away)
  all_players
end


def num_points_scored(player)
  score= ""
  players(game_hash).each do |person, stat|
    if person == player
     score = stat.fetch(:points)
    end
  end
  score
end

def shoe_size(player)
size= ""
  players(game_hash).each do |person, stat|
    if person == player
     size = stat.fetch(:shoe)
    end
  end
  size
end

def team_colors(team)
  colors = ""
  game_hash.each do |location, team_data|
   check = team_data.fetch(:team_name)
    if check == team
      colors = team_data.fetch(:colors)
    end
  end
  colors
end

def team_stats
  home_name = game_hash[:home]
  away_name = game_hash[:away]
  stats = home_name.merge(away_name)
  stats
end


def team_names
  team_names = []
  team_names << game_hash[:home][:team_name]
  team_names << game_hash[:away][:team_name]
  team_names
end

def player_numbers(team)
  numbers = []
  team_players = " "
  #check for team name
  game_hash.each do |location, team_data|
   check = team_data.fetch(:team_name)
    if check == team
      team_players = team_data.fetch(:players)
    end
  end
 
  team_players.each do |name, stat|
    stat.each do |key, value|
      if key == :number
        numbers << value
      end
    end
  end  
numbers
end


def player_stats(player)
  players(game_hash)[player]
end

def big_shoe_rebounds
  #build array of shoe sizes.
  test_array = []
  players_name = " "
  players(game_hash).each do |name, key|
    key.each do |stat, value|
      if stat == :shoe
        test_array << value
      end
    end
  end
  
  #find the player with the max shoe size.
  
  players(game_hash).each do |name, key|
    key.each do |key, value|
      if key == :shoe && value == test_array.max
        players_name = name
      end
    end
  end
  
  #get players rebounds

  players(game_hash)[players_name][:rebounds]
  
end
