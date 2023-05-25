class AssembliesPart < ApplicationRecord
  belongs_to :part
  belongs_to :assembly

  validates :part_id, presence: true, numericality: { only_integer: true }
  validates :assembly_id, presence: true, numericality: { only_integer: true }
end
