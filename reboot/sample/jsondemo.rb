require 'json'

file = File.read('json.rb')
data_hash=JSON.parse(file)
print data_hash.keys
print "\n"


print data_hash['desc']
