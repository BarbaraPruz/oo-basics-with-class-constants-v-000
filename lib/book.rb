class Book
  attr_accessor :author, :page_count
  attr_reader :title, :genre

  GENRRES = []

  def initialize(title)
    @title = title
  end

  def genre= (genre)
    @genre = genre
    GENRES << genre .uniq!
  end

  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end

end
