a="MANIK GARG"
puts a.casecmp("manik GARG")   #0
puts a.casecmp("manik gar")   #1
puts a.casecmp("manikgarg")   #-1
puts a.casecmp("manik gargg")   #-1