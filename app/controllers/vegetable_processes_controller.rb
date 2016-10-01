class VegetableProcessesController < ApplicationController

  skip_before_action :authenticate!

  def index
    search_conditions = {}

    # filters
    if params[:vegetable_process]
      @kind = params[:vegetable_process][:kind]
      @climate   = params[:vegetable_process][:climate]
      @environment = params[:vegetable_process][:environment]
      @difficulty = params[:vegetable_process][:difficulty]

      if @kind.present?
        search_conditions[:kinds] = @kind
      end

      if @climate.present?
        search_conditions[:climate] = @climate
      end

      if @environment.present?
        search_conditions[:environment] = @environment
      end

      if @difficulty.present?
        search_conditions[:difficulty] = @difficulty
      end
    end

    aggregations = {
      kind: { stats: true },
      climate: { stats: true },
      environment: { stats: true},
      difficulty: { stats: true}
    }


    @vegetable_process  = VegetableProcess.new
    @vegetable_processes = VegetableProcess.search('*', where: search_conditions, aggs: aggregations)
    @colors   = @vegetable_processes.aggs['kind']['buckets'].map { |bucket| bucket['key'] }
    @contexts = @vegetable_processes.aggs['climate']['buckets'].map { |bucket| bucket['key'] }
    @contexts = @vegetable_processes.aggs['environment']['buckets'].map { |bucket| bucket['key'] }
    @contexts = @vegetable_processes.aggs['difficulty']['buckets'].map { |bucket| bucket['key'] }
  end
  def show
    @vegetable_process = VegetableProcess.find(params[:id])
  end
end

