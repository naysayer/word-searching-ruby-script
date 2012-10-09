class BibleBooks
  
  @bibleBooks = []
  @passage = []
  @test = []
  @return = []
  
  @text = File.read("passage.txt").downcase.gsub(/\W/, "")
  @reverse = @text.reverse
  
  #This is useful if you need to iterate over each word in the passage. I went a different route but decided it comment it out incase anyone needs it.
  # File.read("passage.txt").scan(/\w+/) do |word|
  #    @passage << word.downcase.chomp
  #  end
  
  File.read("bible_books.txt").each_line do |line|
    @bibleBooks << line.downcase.chomp
  end
  
  @bibleBooks.each do |book|
    @x = /#{Regexp.escape(book)}/
    @return << @text.match(@x)
    @return << @reverse.match(@x)
  end
    
  @return.delete(nil)
  puts @return
  puts "A total of #{@return.length} books were found."
  
end


