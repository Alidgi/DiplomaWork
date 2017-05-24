class FormElement
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :element_id, :type => String
  field :name, :type => String
  field :value, :type => String
end
