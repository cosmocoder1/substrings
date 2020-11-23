arr = ['This', 'is', 'a', 'test', 'string']

def subStrings(string, arr)
  
  result = {}
  stringArr = string.split(" ")

  arr.map { |word| 

    for i in 0..stringArr.length

      # increment pre-existing values in result hash
      if (stringArr[i].to_s.include? word) && result[word]
        result[word] += 1
      end  
      # create key/value pairs for new occurence in result hash
      if (stringArr[i].to_s.include? word) && !result[word]
        result[word] = 1
      end 

    end
  }

  print result

end

  subStrings('This is a test string', arr)


