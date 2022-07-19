# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here
def num_points_scored(name)
  num_points = get_player(name)[:points]
end

def get_all_players()
  home_players = game_hash[:home][:players]
  away_players = game_hash[:away][:players]
  all_players = (home_players << away_players).flatten
end

def get_player(name)
  player = get_all_players().find {|player| player[:player_name] == name}
end

def shoe_size(name)
  shoe_size = get_player(name)[:shoe]
end

def team_colors(team_name)
  team_colors = get_team(team_name)[:colors]
end

def get_teams()
  home_team = game_hash[:home]
  away_team = game_hash[:away]
  all_teams = [home_team, away_team]
end

def team_names()
  names = get_teams().map do |team|
    "#{team[:team_name]}"
  end
end

def player_numbers(team_name)
  numbers = get_team(team_name)[:players].map { |player| player[:number] }

end

def get_team(name)
  team = get_teams().find {|team| team[:team_name] == name}
end

def player_stats(name)
  stats = get_player(name)
end

def big_shoe_rebounds()
  sorted_players = get_all_players().sort do |player1, player2|
    if player1[:shoe] == player2[:shoe]
      0
    elsif player1[:shoe] > player2[:shoe]
      1
    elsif player1[:shoe] < player2[:shoe]
      -1
    end
  end

    max_rebounds = sorted_players.last[:rebounds]
end