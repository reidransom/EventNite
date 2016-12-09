# == Schema Information
#
# Table name: events
#
#  id              :integer          not null, primary key
#  title           :string           not null
#  start_date_time :datetime         not null
#  end_date_time   :datetime         not null
#  private         :boolean          default(FALSE), not null
#  author_id       :integer          not null
#  location        :string
#  event_type      :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  description     :text
#

class Event < ActiveRecord::Base
  validates :author, :title, :start_date_time, :end_date_time, presence: true
  validates_inclusion_of :private, in: [true, false]

  belongs_to :author,
    class_name: :User,
    primary_key: :id,
    foreign_key: :author_id

end