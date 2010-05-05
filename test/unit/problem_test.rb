require 'test_helper'

class ProblemTest < Test::Unit::TestCase
  should_belong_to :user
  should_belong_to :language
  should_belong_to :license
  should_belong_to :category
  should_have_many :hacks
  should_validate_presence_of :title
  should_validate_presence_of :description
  should_validate_presence_of :category
  should_validate_presence_of :language
  should_validate_presence_of :license
  should_validate_presence_of :user
  should_validate_presence_of :bounty
  should_ensure_length_in_range :title, (4..255)
  should_ensure_length_at_least :description, 30
end
