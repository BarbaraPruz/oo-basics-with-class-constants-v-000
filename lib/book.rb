class Book
  attr_accessor :author, :page_count
  attr_reader :title, :genre

  GENRES = []

  def initialize(title)
    @title = title
  end

  def genre= (genre)
    @genre = genre
    # don't want to have duplicates (like if we have a lot of mysteries)
    # another approach is to verify genre not in GENRE before adding it
    (GENRES << genre).uniq!
  end

  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end

end
