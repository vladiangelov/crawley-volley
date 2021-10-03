# frozen_string_literal: true

##
# This is the venue model
#
class Venue < ApplicationRecord
  def description
    if training_day.nil? && training_time.nil?
      additional_info
    else
      "#{training_day} - #{training_time} - #{additional_info}"
    end
  end
end
