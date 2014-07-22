outerArray=[]
for i in 0..2 do
	outerArray.push(Array.new)
	 puts "Enter the student first name"
		  val=gets.chomp
		  outerArray[i] << val
		 
	 puts "Enter the student second name"
		 val1=gets.chomp
		 outerArray[i] << val1
		

	 puts "Enter the marks"
		 val2=gets.chomp
		 outerArray[i] << val2	
	
end
   print outerArray
   puts "Enter the student name to get mark"
	val3 = gets.chomp
	outerArray.each do |item|
	print item[2] if item[0] == val3
        end
 
    puts "Enter the student to delete"
	  val4=gets.chomp
	  outerArray.each do |value|
	  if value[0]==val4
	    array = outerArray.delete(value) 
	   puts "#{outerArray}"
        end
       end
       
	outerArray.each do |result|
	res=result[1].replace(result[0])
	end
	puts "Replace names with their first names"
	puts "#{outerArray}"
	
	puts "Names whose mark is greater than 70"
	outerArray.each do |result|
		if result[2].to_i > 70		
		puts  "#{result[0]}"
		end
	     end
	
	puts "Desending order of marks"
	rs=outerArray.sort
	puts "#{rs}"

       
       
   
