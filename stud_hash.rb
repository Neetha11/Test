i=1
j=1
arr = []
arr1=[]

puts "Enter the student names"
    while i <= 4
	 name=gets.chomp.to_s
	 arr << name
	 i+=1
     end
puts "Enter their marks"
    while j<=4
	 mark=gets.chomp.to_s
	 arr1 << mark
	 j+=1
    end
    
puts "Students Name is #{arr}"
puts "marks are #{arr1}" 

	hash=Hash[*arr.zip(arr1).flatten]
	arr2=[]
	arr2 << hash
	puts "#{arr2}"

puts "Enter the student name to get the mark"
	 val=gets.chomp
 #hash.each do|key,value|
 qr=hash[val]
 puts "The mark of #{val} is #{qr}"
 
 puts "Enter the student name to delete her mark"
	 ab=gets.chomp
	 hash.delete(ab)
	 arr3=[]
	 arr3 << hash
	 puts "#{arr3}"
 	
 #hash.each do|k,v|
 #if v.to_i > 70
 

hash_result = hash.select{|k,v|v.to_i > 70 }
#puts hash

 puts "students whose mark is greater than 70 are #{hash_result}"
 
  result=arr3[0].sort_by{ |k,v| v }
#hash.value.sort{|a,b| hash[b]<=>hash[a]}

puts "Desending order according to their marks"
puts "#{result}"
