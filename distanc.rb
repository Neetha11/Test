
def deg2rad(deg)
		deg * (Math::PI/180)
	end
def distance(lat1,lon1,lat2,lon2)
  
	 @R = 6373 
	 dlat = deg2rad(lat2)-deg2rad(lat1)
	 dlon = deg2rad(lon2)-deg2rad(lon1) 
	 a = ( Math.sin(dlat/2) * Math.sin(dlat/2))  +( Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) *  Math.sin(dlon/2) * Math.sin(dlon/2) )

	 c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a))
	 d = @R * c
      puts"#{d}"
       return d
end

#object=MapPoint.new
result = distance(38.898556,-77.037852,38.897147,-77.043934)
puts "result is #{result}"


