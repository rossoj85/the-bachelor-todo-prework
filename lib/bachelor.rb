require 'pry'

def get_first_name_of_season_winner(data,season)
 data[season].each do |into_array|
   if into_array["status"] =="Winner"
     return into_array["name"].split(" ")[0]
   end
 end
end



def get_contestant_name(data, occupation)
data.each do |season, season_array|
  season_array.each do |into_array|
    if into_array["occupation"] == occupation
      return into_array["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
 data.each do |season, season_array|
    season_array.each do |into_array|
      if into_array["hometown"] == hometown
        counter+=1
      end
  end
 end
 return counter
end


def get_occupation(data, hometown)
  data.each do |season, season_array|
    season_array.each do |into_array|
      if into_array["hometown"] == hometown
        return into_array["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages =[]
  data[season].each do |into_array|
    ages << into_array["age"]
  end
  int_array =ages.map{|x| x.to_f}
  return (int_array.inject{|x,sum| sum+=x}/int_array.size).round
end
