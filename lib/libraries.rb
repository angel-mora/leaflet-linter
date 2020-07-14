# frozen_string_literal: true
require 'json'

# Offenses hash library
module Offenses
  offenses_library = { errors:
                          {
                            js:
                              'Error: Layers out of L.control.layers(...).addTo(...)',
                            html:
                              'Error: Content inside script detected.
                              Add src to script tag and relocate code.
                              Example: /js/script_relocated.js'
                          },
                       warnings:
                          {
                            js: 'Warning: Files bigger than 5mb.
                            Compression suggested. Try https://mapshaper.org/',
                            json: 'Warning: Files bigger than 5mb.
                            Compression suggested. Try https://mapshaper.org/',
                            geojson: 'Warning: Files bigger than 5mb.
                            Compression suggested. Try https://mapshaper.org/'
                          } }
  # def offenses_printer
  #   offenses_library.each do |format|
  #     format.each do |key, details|
  #       puts "#{key}: #{details}"
  #     end
  #   end
  # end
end
