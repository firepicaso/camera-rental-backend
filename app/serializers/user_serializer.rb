class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :username, :email, :jti, :created_at

  attribute :created_date do |user|
    user.created_at&.strftime('%m/%d/%Y')
  end
end
