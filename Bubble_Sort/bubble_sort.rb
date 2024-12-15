# Bubble Sort
def bubble_sort(array)

  #1. Check if array is empty or has one element
  return array if array.empty? || array.length == 1

  #2. iterates through the array
  n = array.length
  swapped = true

  # iterates through the loop while swapped = true
  while swapped
    swapped = false
    #iterate once through the array
    (0...n-1).each do |i|
      if array[i] > array[i+1]
        #swap elements in the array
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
  end
  array
end