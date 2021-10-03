# frozen_string_literal: true

# Global class to inherit from, instead of using activerecord::base
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
