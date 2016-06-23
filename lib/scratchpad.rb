
def sum arr
	# Define a method sum(array) that takes an array of integers as an argument and returns the sum of its elements. For an empty array it should return zero. 
  result = 0
  arr.each do |item|
  	result += item
  end
  result
end

def max_2_sum arr
  # Define a method max_2_sum(array) which takes an array of integers as an argument and returns the sum of its two largest elements. For an empty array it should return zero. For an array with just one element, it should return that element.
  
  # if arr is empty, return 0
  return 0 if arr.length == 0

  # if arr has 1 element, return that element
  return arr[0] if arr.length == 1

  # if arr has 2 or more elements, pre-populate max_2 with the
  # first two elements in arr
  max_2 = [ arr[0], arr[1] ]

  # beginning with the 3rd element, iterate through arr
  (2...arr.length).each do |item|

  	# find the lesser of the 2 in max_2
		index_to_test = 0
		index_to_test = 1 if max_2[0] > max_2[1]

		# if the element in arr is greater than the lesser of the
		# max_2 elements, then replace it
  	if arr[item] > max_2[index_to_test]
  		max_2[index_to_test] = arr[item]
  	end

  end
  sum max_2
end

def sum_to_n? arr, n
  # Define a method sum_to_n?(array, n) that takes an array of integers and an additional integer, n, as arguments and returns true if any two elements in the array of integers sum to n. sum_to_n?([], n) should return false for any value of n, by definition.

  # store value of a sum to test for n
  test_val = 0

  # we'll have to run every possible combination of 2 integers in the array
  return false if arr.length == 0
  (0...arr.length-1).each do |first_term|
  	# puts arr[index]
  	# puts "#{arr[index] + arr[index+1]}"
  	(first_term+1...arr.length).each do |second_term|
  		# puts "#{arr[first_term]} + #{arr[second_term]}"
  		# val = arr[first_term] + arr[second_term]
  		# puts val
  		return true if n == arr[first_term] + arr[second_term]
  	end
  end
  return false
end

arr = [2]
n = 2

puts sum_to_n? arr, n