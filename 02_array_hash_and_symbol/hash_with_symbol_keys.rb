instrument_section = {
  :cello => "string",
  :clarinet => "woodwind",
  :drum => "percussion",
  :oboe => "woodwind",
  :trumpet => "brass",
  :violin => "string"
}

puts instrument_section[:oboe]
puts instrument_section[:cello]
# Note that strings aren't the same as symbols
puts instrument_section["cello"]

instrument_section = {
  cello: "string",
  clarinet: "woodwind",
  drum: "percussion",
  oboe: "woodwind",
  trumpet: "brass",
  violin: "string"
}

puts instrument_section[:oboe]
puts instrument_section[:cello]