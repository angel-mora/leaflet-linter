# Project Name

> One paragraph statement about the project.

![screenshot](./app_screenshot.png)

Additional description about the project and its features.

## Built With

- Major languages,
- frameworks,
- technologies used

## Live Demo

[Live Demo Link](https://livedemo.com)


## Getting Started

**This is an example of how you may give instructions on setting up your project locally.**
**Modify this file to match your project, remove sections that don't apply. For example: delete the testing section if the currect project doesn't require testing.**


To get a local copy up and running follow these simple example steps.

### Prerequisites

### Setup

### Install

### Usage

### Run tests

### Deployment



## Authors

👤 **Author1**

- Github: [@githubhandle](https://github.com/githubhandle)
- Twitter: [@twitterhandle](https://twitter.com/twitterhandle)
- Linkedin: [linkedin](https://linkedin.com/linkedinhandle)

👤 **Author2**

- Github: [@githubhandle](https://github.com/githubhandle)
- Twitter: [@twitterhandle](https://twitter.com/twitterhandle)
- Linkedin: [linkedin](https://linkedin.com/linkedinhandle)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is [MIT](lic.url) licensed.

# Structure

## Methods:

- for js: layer_control?
- for html: script_empty?
- for json: >5mb?
- for geojson: >5mb?, rename

## Classes

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
###########

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

main.rb

Class Interface
    :report
    p report
end    

start = Object.new file.Offenses

interface(start)