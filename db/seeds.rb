require 'csv'

questions = CSV.parse(File.read('./public/questions.csv'), :headers => true)
usage = CSV.parse(File.read('./public/usage.csv'), :headers => true)

questions.each do |row|
	Question.create!(Hash[row])
end

usage.each_with_index do |row, index|
	2.times {row.delete(nil)}
	Usage.create!(Hash[row])
end