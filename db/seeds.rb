require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

5.times do
  Subject.create(
      name: Faker::Lorem.word,
  )
end

5.times do
  Tag.create(
    name: Faker::Lorem.word,
  )
end

15.times do
    note = Note.create(
      title: Faker::Lorem.sentence(word_count: 3),
      created: Faker::Time.backward(days: 365),
      content: Faker::Lorem.paragraph,
      subject_id: Subject.pluck(:id).sample
    )
    rand(1..3).times do
      note.tags << Tag.all.sample
    end
end

User.create(
  email: 'test@test.com',
  password_digest: BCrypt::Password.create("password")
)
