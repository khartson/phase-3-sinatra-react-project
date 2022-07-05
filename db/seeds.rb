puts "🌱 Seeding spices..."

# Seed your database here

a = User.new(username: 'snorsh')
a.save
b = Test.new(text: 'ex', wpm: 100, errorChar: 4, length: 2, starred: false)
b.save
c = Test.new(text: 'ex2', wpm: 103, errorChar: 0, length: 3, starred: false)
c.save
b.user = a
c.user = a
a.save
b.save
c.save

puts "✅ Done seeding!"
