# frozen_string_literal: true

require_relative "ruby_custom_validation/version"

# module for implement custom validation for Rails models
module RubyCustomValidation
  class Error < StandardError; end

  def self.validate(attribute_name, presence: nil, type: nil, format: nil)
    if presence.nil? && type.nil? && format.nil?
      raise ArgumentError, "validate must be has attibutes such as :presence, :type, :format"
    end

    new(attribute_name, presence: presence, type: type, format: format)
  end

  def self.new(attribute_name, presence: nil, type: nil, format: nil)
    binding.pry
  end
end
