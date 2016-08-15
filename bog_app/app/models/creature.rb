class Creature < ActiveRecord::Base
  validates :name, presence: true,
                    length: { minimum: 1 }

  validates :description, presence: true,
                    length: { minimum: 1 }
end
