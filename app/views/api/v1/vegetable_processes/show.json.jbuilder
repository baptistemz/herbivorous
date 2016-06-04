json.extract! @vegetable_process, :id, :kind, :maturation_length, :climate, :environment, :difficulty

# vegetable_process ||= @vegetable_process

# json.vegetable_process do
#   json.id vegetable_process[:id]
#   json.name vegetable_process[:maturation_length]
#   json.source_name vegetable_process[:climate]
#   json.source_identifier vegetable_process[:environment]
#   json.task_count vegetable_process[:difficulty]
#   # if vegetable_process.class == Hash
#   #   json.active
#   # VegetableProcess.find(vegetable_process['id']).active_for_user?(@api_key.user)
#   # else
#   #   json.active vegetable_process.active_for_user?(@api_key.user)
#   # end

#   # if vegetable_process.class == ActiveRecord::Base && !vegetable_process.persisted? &&
#   # !vegetable_process.valid?
#   #   json.errors vegetable_process.errors.messages
#   # end
# end
