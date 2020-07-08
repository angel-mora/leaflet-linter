Class File
    attr_accesor :name :format :content
    def format
        eval if any html,js,json or geojson             

Class Reader
    :report :File
    methods:
        reader
            file.each do |format|
                case format
                when html
                    #loading and processing method
                when js
                    #loading and processing method
                when json
                    #loading and processing method
                when geojson
                    #loading and processing method
        offenses_read
            offense = Offenses.new
            offenses = []
            if offense
                offense_counter += 1
                offenses << offense
        report = Hash.new {offenses[offense]} << offenses
        report should be = { "Files inspected":0,"Offenses":0, "Path": ["array of paths"]}   

        ## Methods:

- for js: layer_control?
- for html: script_empty?
- for json: >5mb?
- for geojson: >5mb?, rename

Class Report
    Reader.reader_info
    html_counter = 0
    js_counter = 0
    json_counter = 0
    geojson_counter = 0
    while files in folder
        offenses_read
    else
        return hash report