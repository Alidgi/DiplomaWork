class User
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :first_name, :type => String
  field :last_name, :type => String
  field :login, :type => String
  field :password, :type => String
  field :role_id, :type => String
end
