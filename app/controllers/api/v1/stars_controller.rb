module Api
  module V1
    class StarsController < ActionController::Base
      def create
        @star = Star.create(stared_by: current_user.id,
                            vegetable_process_id: params[:vegetable_process_id],
                            )
        @vegetable_process = VegetableProcess.find(params[:vegetable_process_id])
        render '/api/v1/vegetable_processes/show'
      end
      def destroy
        @star = Star.find(params[:id])
        @star.destroy
        @vegetable_process = VegetableProcess.find(params[:vegetable_process_id])
        render '/api/v1/vegetable_processes/show'
      end
    end
  end
end
