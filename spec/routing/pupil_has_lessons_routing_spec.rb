require "rails_helper"

RSpec.describe PupilHasLessonsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pupil_has_lessons").to route_to("pupil_has_lessons#index")
    end

    it "routes to #new" do
      expect(:get => "/pupil_has_lessons/new").to route_to("pupil_has_lessons#new")
    end

    it "routes to #show" do
      expect(:get => "/pupil_has_lessons/1").to route_to("pupil_has_lessons#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pupil_has_lessons/1/edit").to route_to("pupil_has_lessons#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pupil_has_lessons").to route_to("pupil_has_lessons#create")
    end

    it "routes to #update" do
      expect(:put => "/pupil_has_lessons/1").to route_to("pupil_has_lessons#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pupil_has_lessons/1").to route_to("pupil_has_lessons#destroy", :id => "1")
    end

  end
end
