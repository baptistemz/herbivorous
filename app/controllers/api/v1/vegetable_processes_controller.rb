module Api
  module V1
    class VegetableProcessesController < ApplicationController
      def index
        @vegetable_processes = VegetableProcesses.all
      end
      def show
        @vegetable_process = VegetableProcesses.find(params[:id])
      end
    end
  end
end
