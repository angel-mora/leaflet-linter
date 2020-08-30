# frozen_string_literal: true

# Offenses hash library
module Offenses
  OFFENSES_LIBRARY =
    { errors:
      { js:
          'Error: Layers out of L.control.layers',
        html:
          'Error: Content inside script detected.
          Add src to script tag and relocate code.
          Example: /js/script_relocated.js' },
      warnings:
      { js: 'Warning: Files bigger than 5mb.
        Compression suggested. Try https://mapshaper.org/',
        json: 'Warning: Files bigger than 5mb.
        Compression suggested. Try https://mapshaper.org/',
        geojson: 'Warning: Files bigger than 5mb.
        Compression suggested. Try https://mapshaper.org/' } }.freeze
end
