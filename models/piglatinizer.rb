class PigLatinizer 
  
  def piglatinize(text)
    #if text.length > 1 
      a = text.split(" ")
      a.collect! do |word|
        c = word.scan(/[aeoui]/).first
        e = word.partition(c)
        e.rotate!
        f = e.pop + "ay"
        e << f
        e.join
      end
      return a.join(" ")
   # else 
    #  return text + "way"
    #end
  end
  
  
end
