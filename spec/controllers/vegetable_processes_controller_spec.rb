require "rails_helper"

RSpec.describe VegetableProcessesController, :type => :controller do
  render_views
  describe "GET #index" do

    before do
      get :index
    end

    it "responds successfully with an HTTP 200 status code" do
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      response.should render_template(:index)
    end

    it "loads all of the vegetable_processes into @vegetable_processes" do
      vegetable_process_1, vegetable_process_2 = FactoryGirl.build(:vegetable_process), FactoryGirl.build(:vegetable_process)
      expect(assigns(:vegetable_processes)).to match_array([vegetable_process_1, vegetable_process_2])
    end
  end
end
