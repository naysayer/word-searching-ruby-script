class BibleBooks
  @bibleBooks = []
  @passage = []
  @number = "numbers".to_s.split(//)
  @test = []
  File.read("passage.txt").scan(/\w+/) do |word|
    @passage << word.downcase.chomp
  end
  
  File.read("bible_books.txt").each_line do |line|
    @bibleBooks << line.downcase.chomp
  end
  
  @bibleBooks.each do |book|
    @passage.each do |pass|
      @x = /#{Regexp.escape(book)}/
      @return = pass.match(@x)
      puts @return
    end
  end
  # re = "fluke"
  #   @x = /#{Regexp.escape(re)}/
  #   str = "fluke"
  #   @asdf = str.match(@x)
  #   puts @asdf
end



# @passage.each do |x|
#   candy = x.to_s.split(//)
#   puts candy
# end

# @bibleBooks.each do |x|
#   puts x
# end
# puts @bibleBooks.to_s.downcase
