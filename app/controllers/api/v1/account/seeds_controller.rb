module Api
  module V1
    module Account
      class SeedsController < ActionController::Base
        def index
          @seeds = current_user.seeds
          render :index
        end
        def show
          @seed = current_user.seeds.find(params[:id])
          render :show
        end
      end
    end
  end
end
