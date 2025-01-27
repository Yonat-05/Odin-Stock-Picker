def stock_picker(array)
  result = 0
  true_first = 0
  true_second = 0
  collection = []
  runs = 0
  array.each_with_index do |first, i|
    runs += 1
   first = array.shift
   first_idx = i
   array.each_with_index do |day, i|
     second_idx = i
     if day - first > result
       result = day - first
       true_first = first_idx
       true_second = second_idx + runs
     end
    end
  end
  collection << true_first
  collection << true_second
  collection
end
puts stock_picker([17,3,6,9,15,8,6,1,10]).inspect 
