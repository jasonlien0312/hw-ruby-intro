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
    if arr.size==0
        return 0;
    elsif arr.size==1
        return arr[0];
    end
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
    end
    return first + sec
end

def sum_to_n? arr, target
    if arr.size<=1
        return false;
    else
        map = Hash.new;
        for num in arr
            if !map.has_key?(num)
                map[target-num] = num
            else return true;
            end
        end
    end
    return false;
end

# Part 2

def hello(name)
  return "Hello, "+name;
end

def starts_with_consonant? s
  return s.match(/^[^AEIOUaeiou\W]/);
end

def binary_multiple_of_4? s
  return  (s.size==0 || s.match(/[^01]/) || s[-1]=='1' || s[-2]=='1') ? false : true;
end

# Part 3

class BookInStock
    #constructor
    def initialize(isbn="", price=0)
        raise(ArgumentError,"lol") if (isbn=="" || price<=0)
        # raise StandardError.new "this is error"
        @isbn = isbn
        @price = price.to_f
        # assuming price is a number
        # if @isbn=="" || @price<=0
        # unless @isbn!="" && @price>0
        # end
        # puts "A book (#{@isbn}) of $#{'%.2f' % @price} is created!"
    end
    
    #getters
    def price
        @price
    end
    def isbn
        @isbn
    end
    
    #setters
    def price=(pr)
        @price = pr
    end
    def isbn=(i)
        @isbn = i
    end
    
    def price_as_string
        str = '%.2f' % @price
        return '$' + str
    end
    
    #print function
    def show
        puts "ISBN: #{@isbn}, price: #{'%.2f' % @price}"
    end
end


# b = BookInStock.new("123",234);
# b.price = 8.889
# b.isbn = "1234-567-89"
# b.show