module GoodReadsHelper
  def shorten (string, word_limit = 50)
    words = string.split(/\s/)
    if words.size >= word_limit
      @shortened = words[0,(word_limit-1)].join(" ") + '...'
      @shortened.html_safe
    else 
      string.html_safe
    end
  end
  

end
