class BibleBooks
  @@bibleBooks = []
  @@passage = []
  @@passage_master = []
  @@bibleBooks_master = []
  
  File.read("passage.txt").scan(/\w+/) do |word|
    @@passage << word.downcase.chomp
  end
  File.read("bible_books.txt").each_line do |line|
    @@bibleBooks << line.downcase.chomp
  end
  
  @@bibleBooks.each do |x|
    @@bibleBooks_master << x.split(//).to_a
  end
  
  @@passage.each do |x|
    @@passage_master << x.split(//).to_a
  end
  
  @@bibleBooks_master.each.each do |x|
    @@passage_master.each.each do |y|
      if x == y
        puts "candy"
      end
    end
  end
  
end

#  @@bibleBooks.each do |x|
#    @@passage.each do |y|
#     if x == y
#       puts x
#     end
#   end
# end

# @passage.each do |x|
#   candy = x.to_s.split(//)
#   puts candy
# end

# @bibleBooks.each do |x|
#   puts x
# end
# puts @bibleBooks.to_s.downcase
