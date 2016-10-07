json.extract! @vegetable_process, :id, :kind, :maturation_length, :climate, :environment, :difficulty


json.extract! @vegetable_process, :id, :name, :photo, :kind, :maturation_length, :climate, :environment, :difficulty

json.user do
  json.username @vegetable_process.user.username
  json.avatar @vegetable_process.user.avatar
end

json.social do
  json.used @vegetable_process.seeds.where(user_id: current_user).any?
  json.stared @vegetable_process.stars.where(stared_by: current_user).any?
  json.staring @vegetable_process.stars.size
  json.using @vegetable_process.seeds.where("term_date >= ?", Date.today).size
end
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
