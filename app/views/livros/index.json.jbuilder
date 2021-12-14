json.array! @livros do |livro|
    json.id livro.id
    json.name livro.name
    json.author livro.author
    json.description livro.description
    json.created_at livro.created_at
    json.updated_at livro.updated_at
  end