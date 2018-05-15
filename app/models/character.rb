# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  movie_id   :integer
#  actor_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Character < ApplicationRecord
  validates :movie_id, :actor_id, presence: true

  belongs_to :movie
  belongs_to :actor
end
