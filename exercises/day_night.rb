def time_of_day(daylight)
  if daylight
    p "It's daytime!"
  else
    p "It's nighttime!"
  end
end

daylight = [true, false].sample

time_of_day(daylight)