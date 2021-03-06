class Task < ActiveRecord::Base
  validates_presence_of :name, :description
  validates_length_of :name, minimum: 5, too_short: 'Please enter a longer name'
  validates_length_of :name, minimum: 5, too_short: 'Your description must be at least 100 words'

  has_many :steps, dependent: :destroy
  accepts_nested_attributes_for :steps,
                                reject_if: lambda {|attributes| attributes[:name].blank?},
                                allow_destroy: true
end
