class CellGroup < ApplicationRecord
    has_many :members

    # Validations
    validates_presence_of :name, :gender
    validates_inclusion_of :gender, in: %w( Male Female ), message: "is not recognized in the system"

    # Scopes
    scope :for_gender, ->(gender) { where(gender: gender) }
    scope :alphabetical, -> { order("name") }

    # Functions
    def leader 
        return Member.for_leader.select{ |m| m.cellGroup.name == self.name}.first
    end
end