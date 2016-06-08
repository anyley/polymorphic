json.array!(@widget_attrs) do |widget_attr|
  json.extract! widget_attr, :id, :windget_id, :name, :value, :type
  json.url widget_attr_url(widget_attr, format: :json)
end
