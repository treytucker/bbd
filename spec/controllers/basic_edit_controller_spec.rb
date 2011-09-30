require 'spec_helper'

describe BasicEditController do

  describe "GET 'about_uses'" do
    it "should be successful" do
      get 'about_uses'
      response.should be_success
    end
  end

  describe "GET 'contacts'" do
    it "should be successful" do
      get 'contacts'
      response.should be_success
    end
  end

  describe "GET 'current_deals'" do
    it "should be successful" do
      get 'current_deals'
      response.should be_success
    end
  end

  describe "GET 'for_businesses'" do
    it "should be successful" do
      get 'for_businesses'
      response.should be_success
    end
  end

  describe "GET 'how_it_works_businesses'" do
    it "should be successful" do
      get 'how_it_works_businesses'
      response.should be_success
    end
  end

  describe "GET 'how_it_works_consumers'" do
    it "should be successful" do
      get 'how_it_works_consumers'
      response.should be_success
    end
  end

  describe "GET 'privacy_policies'" do
    it "should be successful" do
      get 'privacy_policies'
      response.should be_success
    end
  end

  describe "GET 'recent_deals'" do
    it "should be successful" do
      get 'recent_deals'
      response.should be_success
    end
  end

  describe "GET 'terms_of_services'" do
    it "should be successful" do
      get 'terms_of_services'
      response.should be_success
    end
  end

end
