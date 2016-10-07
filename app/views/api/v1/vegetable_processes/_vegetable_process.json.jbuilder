json.extract! vegetable_process, :id, :name, :photo, :kind, :maturation_length, :climate, :environment, :difficulty

json.user do
  json.username vegetable_process.user.username
  json.avatar vegetable_process.user.avatar
end

json.social do
  json.used vegetable_process.seeds.where(user_id: current_user).any?
  json.stared vegetable_process.stars.where(stared_by: current_user).any?
  json.staring vegetable_process.stars.size
  json.using vegetable_process.seeds.where("term_date >= ?", Date.today).size
end
