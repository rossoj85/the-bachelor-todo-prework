require 'pry'
def get_first_name_of_season_winner(data, season)
  data.each do |season, season_data|
     season_data.each do |entire_arrray|
       entire_arrray.each do |key, value|
       if value == "Winner"
         return entire_arrray[:name]
         binding.pry
       end
     end
     end
  end
end
get_first_name_of_season_winner(data,"season 10")
def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
