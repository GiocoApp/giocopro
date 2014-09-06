require 'rails/generators/base'
require 'generators/giocopro/model_generator'
require 'generators/giocopro/generator_instructions'

module Giocopro
  class SetupGenerator < Rails::Generators::Base
    include ModelGenerator
    include GeneratorInstructions

    source_root File.expand_path("../../templates", __FILE__)

    desc "Setup Gioco for a unique resource"

    def execute
      @model_name = ask("What is your resource model name? (eg. user)")
      adding_methods
      instructions
    end

  end
end