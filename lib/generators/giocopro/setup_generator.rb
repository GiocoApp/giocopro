require 'rails/generators/base'
require 'generators/giocopro/model_generator'
require 'generators/giocopro/generator_instructions'

module Giocopro
  class SetupGenerator < Rails::Generators::Base
    include ModelGenerator
    include GeneratorInstructions

    source_root File.expand_path("../../templates", __FILE__)
    class_option :secret, :type => :string, :desc => 'Your Gioco secret key, you can find it on Manage > Application Token at http://app.gioco.pro.'
    desc "Setup Gioco for a unique resource"

    def execute
      @secret_key = options['secret']
      @model_name = ask("What is your resource model name? (eg. user)")
      adding_methods
      instructions
    end

  end
end