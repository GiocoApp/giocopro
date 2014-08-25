module ModelGenerator
  def adding_methods
    resource = File.read find_in_source_paths("resource.rb")
    inject_into_class "app/models/#{@model_name}.rb", @model_name.capitalize, "\n#{resource}\n"
  end

end