class Group < ApplicationRecord
    validates_presence_of :name
    has_many :tasks
end