

File.open('db/words').each do |row|
  Word.create(word: row.chomp)
end