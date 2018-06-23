def game_hash
  {
    home:{
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        "Alan_Anderson" =>{
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        "Reggie_Evans" =>{
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        "Brook_Lopez" =>{
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        "Mason_Plumlee" =>{
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        "Jason_Terry" =>{
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      }
    },
    away:{
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
        "Jeff_Adrien" =>{
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 1,
          blocks: 7,
          slam_dunks: 2
        },
        "Bismak_Biyombo" =>{
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
        "DeSagna_Diop" =>{
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        "Ben_Gordon" =>{
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        "Brendan_Haywood" =>{
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      }
    }
  }
end


def num_points_scored(player_name)
  temp_name_array = player_name.split" "
  temp_name_formatted = temp_name_array.join"_"
  
  all_data = game_hash
  
  all_data.each do |location, game_data|
    game_data.each do |data, details|
      if data == :players
        details.each do |player, stats|
          if player == temp_name_formatted
            stats.each do |stat, value|
              if stat == :points
                #puts stat
                #puts value
                return value
              end
            end
          end
        end
      end
    end
  end
end

def shoe_size(player_name)
  temp_name_array = player_name.split" "
  temp_name_formatted = temp_name_array.join"_"
  
  all_data = game_hash
  
  all_data.each do |location, game_data|
    game_data.each do |data, details|
      if data == :players
        details.each do |player, stats|
          if player == temp_name_formatted
            stats.each do |stat, value|
              if stat == :shoe
                #puts stat
                #puts value
                return value
              end
            end
          end
        end
      end
    end
  end
end

def team_colors(team_name)
  all_data = game_hash
  
  all_data.each do |location, game_data|
    game_data.each do |data, details|
      puts details
      if details == team_name
        puts details
        puts data
        return details if data == :colors
      end
    end
  end
end

team_colors("Brooklyn Nets")
