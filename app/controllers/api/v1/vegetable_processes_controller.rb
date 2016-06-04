module Api
  module V1
    class VegetableProcessesController < Api::V1::BaseController
      def index
        @vegetable_processes = VegetableProcess.all
        render :index
      end
      def show
        @vegetable_process = VegetableProcess.find(params[:id])
        render :show
      end
    end
  end
end
