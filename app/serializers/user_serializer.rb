class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :username, :email, :created_at

  attribute :created_date do |user|
    user.created_at&.strftime('%m/%d/%Y')
  end
end
