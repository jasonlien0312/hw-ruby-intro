# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    if arr.size==0 
        return 0;
    else 
        sumV = 0;
        for n in arr
          sumV += n;
        end
    end
    return sumV;
end

def max_2_sum arr
    if arr[0] > arr[1]
        first = arr[0];
        sec = arr[1];
    else
        first = arr[1];
        sec = arr[0];
    end
    
    for n in 2..arr.size-1
        if arr[n] > first
            sec = first
            first = arr[n]
        elsif arr[n] > sec
            sec = arr[n]
        end
        # print "first = ", first, " second = ", sec, "\n";
    end
    return first + sec
end

def sum_to_n? arr, n
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end

# arr = [4,2,7,9,8,12,10];
# max_2_sum(arr);
# print "sum = ",max_2_sum(arr), "\n";