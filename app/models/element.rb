class Element
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, :type => String
  field :title, :type => String
  field :value, :type => String
end
