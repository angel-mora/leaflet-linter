Class Interface
    :report
    p report
end    

def final_report(report) # rubocop:disable Metrics/AbcSize
  if report[3][:warning].zero? && report[4][:error].zero?
    puts "Inspecting #{report[0][:files_inspected]} files"
    puts 'No offenses '.green + 'detected'
  elsif report[3][:warning].positive? || report[4][:error].positive?
    puts "Inspecting #{report[0][:files_inspected]} files"
    puts "#{report[1][:total_offenses]} offenses ".red + 'detected'
    # for later p offense_details.each
  elsif report[0][:files_inspected].zero?
    puts 'Please add some files'
  end
end

# offenses_found = interface.new "#{files_counter} inspected. #{offenses_counter} offenses detected.\n
#                                 #{path}: #{error_line}: #{existing_offenses[Offense]}" # use another method to do this

# sucess = "#{files_counter} inspected. No offense detected."