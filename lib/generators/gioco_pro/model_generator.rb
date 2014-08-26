module ModelGenerator
  def adding_methods
    # config_file = File.read find_in_source_paths("resource.rb")

  	inject_into_class "app/models/#{@model_name}.rb", @model_name.capitalize, "include GiocoResource\n"
  	# create_file "config/initializers/giocopro.rb", "#{config_file}"
  	copy_file find_in_source_paths("config.rb"), "config/initializers/giocopro.rb"

    # inject_into_class "app/models/#{@model_name}.rb", @model_name.capitalize, "\n#{resource}\n"
  end

end