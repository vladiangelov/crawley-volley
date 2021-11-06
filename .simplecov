# frozen_string_literal: true

SimpleCov.start do
  add_group 'Models', 'app/models'
  add_group 'Controllers', 'app/controllers'

  add_filter 'test/'
  add_filter 'spec/'
end
