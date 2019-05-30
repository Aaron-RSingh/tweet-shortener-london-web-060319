# Write your code here.

def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
}
end

def word_substituter(string)
     #turn str to array using split
   tweet = str.split(" ")
   #iterate through each element of the str
   new_tweet = tweet.collect do |word|
      #if the dictionary's keys are in the str index
      #return the value of the dictionary's keys instead of the original words
      if dictionary.keys.include?(word.downcase) #downcase: return copy of upcase to downcase 
         dictionary[word.downcase]
      else
         word #if not, just return the original words
      end
   end
   new_tweet.join(" ") #turn array to string using join
end