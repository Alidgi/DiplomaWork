class Form
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, :type => String
  field :project_id, :type => String
  field :value, :type => String
end
