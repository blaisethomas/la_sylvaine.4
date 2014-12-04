require "rails_helper"

RSpec.describe LessonHasTeachersController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/lesson_has_teachers").to route_to("lesson_has_teachers#index")
    end

    it "routes to #new" do
      expect(:get => "/lesson_has_teachers/new").to route_to("lesson_has_teachers#new")
    end

    it "routes to #show" do
      expect(:get => "/lesson_has_teachers/1").to route_to("lesson_has_teachers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/lesson_has_teachers/1/edit").to route_to("lesson_has_teachers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/lesson_has_teachers").to route_to("lesson_has_teachers#create")
    end

    it "routes to #update" do
      expect(:put => "/lesson_has_teachers/1").to route_to("lesson_has_teachers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/lesson_has_teachers/1").to route_to("lesson_has_teachers#destroy", :id => "1")
    end

  end
end
