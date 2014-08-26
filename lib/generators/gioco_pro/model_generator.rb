module ModelGenerator
  def adding_methods
    inject_into_class "app/models/#{@model_name}.rb", @model_name.capitalize, "include GiocoResource\n"
    copy_file find_in_source_paths("config.rb"), "config/initializers/giocopro.rb"
  end
end