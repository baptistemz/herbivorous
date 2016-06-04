json.extract! vegetable_process, :id, :kind, :maturation_length, :climate, :environment, :difficulty

json.user do
  json.username vegetable_process.user.username
end

