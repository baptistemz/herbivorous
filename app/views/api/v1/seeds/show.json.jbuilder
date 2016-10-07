json.extract! @seed, :id, :vegetable_process_id, :user_id, :name, :planting_date, :term_date
json.photo @seed.vegetable_process.photo
json.events do
  json.dates @seed.events.pluck(:days_from_start).each{|num| @seed.planting_date + num}
end


json.social do
  json.stared @seed.vegetable_process.seeds.where(user_id: current_user).any?
  json.used @seed.vegetable_process.stars.where(stared_by: current_user).any?
  json.staring @seed.vegetable_process.seeds.where('term_date <= ?', Date.today).size
  json.using @seed.vegetable_process.stars.size
end
