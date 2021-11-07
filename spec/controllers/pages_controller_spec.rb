# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  describe 'GET home' do
    it 'renders the home page template' do
      get :home
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET venues' do
    it 'renders the venues page template' do
      get :venues
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET teams' do
    it 'renders the teams page template' do
      get :teams
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET men' do
    it "renders the men's team page template" do
      get :men
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET ladies' do
    it "renders the ladies' team page template" do
      get :ladies
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET contact' do
    it 'renders the contact us page template' do
      get :contact
      expect(response).to have_http_status(:ok)
    end
  end
end
