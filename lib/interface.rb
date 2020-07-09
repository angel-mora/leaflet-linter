# frozen_string_literal: true

# require_relative 'reader.rb'
require 'colorize'
require 'colorized_string'

# Print report to console
class Interface
  attr_reader :report
  def final_report(report) # rubocop:disable Metrics/AbcSize
    if report[3][:warning].zero? && report[4][:error].zero?
      puts "Inspecting #{report[0][:files_inspected]} files"
      puts 'No offenses '.green + 'detected'
    elsif report[3][:warning].positive? || report[4][:error].positive?
      puts "Inspecting #{report[0][:files_inspected]} files"
      puts "#{report[1][:total_offenses]} offenses ".red + 'detected'
      puts report[5][:offenses_details]
    elsif report[0][:files_inspected].zero?
      puts 'Please add some files'
    end
  end
end
