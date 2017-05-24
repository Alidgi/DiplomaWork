class Role
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, :type => String
  field :permission, :type => String
end
