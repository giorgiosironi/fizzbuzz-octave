function result = fizzbuzz(number)
% FIZZBUZZ(n) where n is a positive integer
% returns "Fizz", "Buzz", "Bang" or their combination
% depending on how many factors the number is multiple of
factors = [3,5,7];
words = {"Fizz"; "Buzz"; "Bang"};

remainders = mod(number, factors);
selected_words_indexes = find(remainders == 0);
selected_words = words(selected_words_indexes);
result = strjoin(selected_words, "");

if result 
    return;
else
    result = number;
end
    
%!assert (fizzbuzz(1), 1)
%!assert (fizzbuzz(2), 2)
%!assert (fizzbuzz(3), "Fizz")
%!assert (fizzbuzz(5), "Buzz")
%!assert (fizzbuzz(3*5), "FizzBuzz")
%!assert (fizzbuzz(7), "Bang")
%!assert (fizzbuzz(3*7*5), "FizzBuzzBang")
%!assert (fizzbuzz(0), "FizzBuzzBang")
