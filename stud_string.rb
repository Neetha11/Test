 final = ""
  for i in 0..2  
      puts "Enter the student first name"    
	   first_name = gets.chomp
	    
      puts "Enter the student second name"
	    second_name  =gets.chomp
	   
      puts "Enter their marks"
	    marks=gets.chomp
    
      final = final.concat(first_name.concat(second_name).concat('$').concat(marks).concat('$'))

   
  end
  puts final
  final_split =  final.split('$')
 

 puts "Enter the name to get the mark" 
	  get_mark = gets.chomp  
	  result   = final_split.index(get_mark)
	  dis_mark = result  +1
         puts final_split[dis_mark]

 puts "Enter the name to delte the mark"
         get_name    =  gets.chomp

         search_name = final_split.index(get_name) + 1

         del_mark  = final_split[search_name]

          final_split.delete(get_name)

          final_split.delete(del_mark)


   
	 final_join = final_split.join('$')
	 puts final_join
       
 puts "students with mark > 70 ::\n"
      for i in (0..final_split.length)
        if i % 2 != 0
            if final_split[i].to_i > 70
              puts final_split[i-1]
             
             end
        end
      end

 puts "descending order of their marks"
         name_sort = final_split.sort
         puts name_sort
          
 


