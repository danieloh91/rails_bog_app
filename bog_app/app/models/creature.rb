class Creature < ActiveRecord::Base
  validates :name, presence: true,
                    length: { minimum: 3 }
  validates :description, presence: true,
                  length: { minimum: 3 }
end
