Class Offenses
    :report
    define checker
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