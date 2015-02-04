json.array!(@members) do |member|
  json.extract! member, :id, :name, :sex, :age, :email, :department_id
  json.url member_url(member, format: :json)
end
