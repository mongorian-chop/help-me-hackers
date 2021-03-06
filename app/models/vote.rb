class Vote < ActiveRecord::Base
  belongs_to :voteable, :polymorphic => true
  belongs_to :user
  validates_uniqueness_of :voteable_id, :scope => [:voteable_type, :user_id]
  validates_length_of :comment, :maximum => 140
end
