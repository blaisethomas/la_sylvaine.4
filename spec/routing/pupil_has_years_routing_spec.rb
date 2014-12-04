require "rails_helper"

RSpec.describe PupilHasYearsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pupil_has_years").to route_to("pupil_has_years#index")
    end

    it "routes to #new" do
      expect(:get => "/pupil_has_years/new").to route_to("pupil_has_years#new")
    end

    it "routes to #show" do
      expect(:get => "/pupil_has_years/1").to route_to("pupil_has_years#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pupil_has_years/1/edit").to route_to("pupil_has_years#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pupil_has_years").to route_to("pupil_has_years#create")
    end

    it "routes to #update" do
      expect(:put => "/pupil_has_years/1").to route_to("pupil_has_years#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pupil_has_years/1").to route_to("pupil_has_years#destroy", :id => "1")
    end

  end
end
