module SevenEvent
  class Event < ActiveRecord::Base

    has_one :gallery, :class_name => 'SevenGallery::Gallery', foreign_key: "seven_event_event_id"

    validates :title, presence: true
    validates :description, presence: true
    validate :date_valid

    def date_valid
      if self.start_at.kind_of? Time
        if self.start_at < Time.now
          errors.add(:start_at, "Start date cannot be in the past")
        end
      else
        errors.add(:start_at, "Invalid start date")
      end
    end
  end
end
