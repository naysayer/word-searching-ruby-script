@bibleBooks = []
@passage = []
File.read("passage.txt").scan(/\w+/) do |word|
  @passage << word.downcase.chomp
end
File.read("bible_books.txt").each_line do |line|
  @bibleBooks << line.downcase.chomp
end

@passage.each do |x|
  @bibleBooks.each do |y|
    if x == y
      puts x
      puts y
    else
      puts "failure"
    end
  end
end

# @passage.each do |x|
#   candy = x.to_s.split(//)
#   puts candy
# end

# @bibleBooks.each do |x|
#   puts x
# end
# puts @bibleBooks.to_s.downcase
