# frozen_string_literal: true

require 'yaml'
require_relative 'ral_colors_list/version'

# Getting data from yml file
module RalColorsList
  def self.get_data(key)
    data = load_data
    result = find_data(data, key)
    result ? result[key.to_sym] : nil
  end

  def self.get_value(key, nested_key)
    data = load_data
    result = find_data(data, key)
    result ? result[key.to_sym][nested_key.to_sym] : nil
  end

  def self.load_data
    YAML.load_file("#{Dir.pwd}/lib/data/ral_colors.yml")
  end

  def self.find_data(data, key)
    data.find { |item| item.keys.first.to_s == key.to_s }
  end
end
