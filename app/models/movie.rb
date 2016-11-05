# == Schema Information
#
# Table name: movies
#
#  id           :integer          not null, primary key
#  title        :string
#  hotness      :integer
#  image_url    :string
#  synopsis     :text
#  rating       :string
#  genre        :string
#  director     :string
#  release_date :date
#  runtime      :string
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Movie < ApplicationRecord
	belongs_to :user

	validates :title, presence: true
	validates :hotness, numericality => {:allow_blank => true}
	validates :image_url, :url => {:allow_blank => true}
end
