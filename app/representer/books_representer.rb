class BooksRepresenter
    def initialize(books)
        @books = books
    end

    def as_json
        @books.map do |book|
            {
                id: book.id,
                title: book.titulo,
                autor: author_name(book),
                edad_autor: book.author.edad
            }
        end
    end
    
    private

    attr_reader :books

    def author_name(book)
        "#{book.author.nombre} #{book.author.aprellido}"
    end
end