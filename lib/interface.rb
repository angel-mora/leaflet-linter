# frozen_string_literal: true

# require_relative 'reader.rb'
require 'colorize'
require 'colorized_string'
require_relative './offense.rb'

# Print report to console
class Interface
  attr_reader :report

  def inspecting_files(report)
    puts "Inspecting #{report[0][:files_inspected]} files"
  end

  def no_offenses
    puts 'No offenses '.green + 'detected'
  end

  def offenses_detected(report)
    puts "#{report[1][:total_offenses]} offenses ".red + 'detected'
  end

  def offenses_list(report)
    puts report[5][:offenses_details]
  end

  def no_offenses?(report)
    report[3][:warning].zero? && report[4][:error].zero?
  end

  def offenses_detected?(report)
    report[3][:warning].positive? || report[4][:error].positive?
  end

  def no_files?(report)
    add_files = puts 'Please add some files'
    unknown = puts 'Unknown error'
    report[0][:files_inspected].zero? ? add_files : unknown
  end

  def final_report(report)
    if no_offenses?(report)
      inspecting_files(report)
      no_offenses
    elsif offenses_detected?(report)
      inspecting_files(report)
      offenses_detected(report)
      offenses_list(report)
    elsif no_files?(report)
    end
  end
end

# call puts offenses.test.offenses_details

# x = offenses_instance.test[5][:offenses_details][0]
# puts x

# refactor test array to be more accessible
