class Project
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, :type => String
  field :owner_id, :type => String
end
