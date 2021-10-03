# frozen_string_literal: true

##
# This migration adds category to articles
#
class AddCategoryToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :category, :string
  end
end
