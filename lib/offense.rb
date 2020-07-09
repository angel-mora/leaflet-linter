ERROR = [{ js: 'Layer out of layer.control in line' },
         { html: 'Content inside script detected.
            Add src to script tag and relocate code.
            Example: /js/script_relocated.js' }].freeze

WARNING = 'The file is bigger than 5mb. Compression suggested. Try https://mapshaper.org/'

class Offenses
  attr_writer :report
  def checker
    err_counter = 0
    warning_counter = 0
    existing_offenses = { "JS file Error": "Layer out of layer.control in line X", "JS/JSON/GEOJSON file Warning":"The file is bigger than 5mb. Compression suggested. Try https://mapshaper.org/", "HTML Error": "Content inside script detected. Please add src attribute to HTML tag and relocate JS content inside another file. Example: /js/script_relocated.js" }
    case offenses_read
    when errors
        report[errors] << existing_offenses["Example kind of error"]
        << error_counter
    when warnings
        report[warnings] << existing_offenses["Example kind of warning"]
        << warning_counter
    else success = True
    end
  end

  def offenses_details(offense)
    offenses_details = []
    total_offenses = 0
    if offense
      offenses_details << String.new "#{path}: #{error_line}: #{existing_offenses[Offense]}"
      total_offenses += 1
    end
  end
end
