# metode quick sort
def quicksort(array, from=0, to=nil)
    if to == nil
        # Sort the whole array, by default
        to = array.count - 1
    end

    if from >= to
        # Done sorting
        return
    end

    # Take a pivot value, at the far left
    pivot = array[from]

    # Min and Max pointers
    min = from
    max = to

    # Current free slot
    free = min

    while min < max
        if free == min # Evaluate array[max]
            if array[max] <= pivot # Smaller than pivot, must move
                array[free] = array[max]
                min += 1
                free = max
            else
                max -= 1
            end
        elsif free == max # Evaluate array[min]
            if array[min] >= pivot # Bigger than pivot, must move
                array[free] = array[min]
                max -= 1
                free = min
            else
                min += 1
            end
        else
            raise "Inconsistent state"
        end
    end

    array[free] = pivot

    quicksort array, from, free - 1
    quicksort array, free + 1, to
end

a_Acak = [1, 34, 3, 3, 5, 6, 7, 54, 9, 10, 56, 12, 2, 14, 23] 
a = [1, 34, 3, 3, 5, 6, 7, 54, 9, 10, 56, 12, 2, 14, 23].shuffle
# Quicksort operates inplace (i.e. in "a" itself)
# There's no need to reassign
quicksort a
puts "Array Acak      :  #{a_Acak}"

puts "Hasil Quicksort :  #{a}"

