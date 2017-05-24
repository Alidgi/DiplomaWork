class ElementAttribute
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :attribute_id, :type => String
  field :element_id, :type => String
end
