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

FactoryBot.define do
  factory :character do
    sequence(:name) { |n| "Some fake name #{n}" }
    sequence(:actor_id) { |n| "Some fake actor #{n}" }
    sequence(:movie_id) { |n| "Some fake movie #{n}" }
  end
end
