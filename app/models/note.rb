class Note < ApplicationRecord
    belongs_to :subject
    has_and_belongs_to_many :tags
end
