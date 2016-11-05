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

require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
