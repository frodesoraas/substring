dictionary = ["below","down","go","going","horn", "how","howdy","it","i","low", "own","part","partner","sit"]

def substrings (searchword, dictionary)
	antall = Hash.new(0)
	searchword = searchword.downcase
	
	startbokstav = 0
	(searchword.length).times do |runder|

		(startbokstav..(searchword.length-1)).each do |i|
			kortord = searchword[startbokstav..i]
				if dictionary.count(kortord) > 0
					if antall[kortord] > 0
						antall[kortord] = antall[kortord] + 1
					else
					antall[kortord] = dictionary.count(kortord)	
					end
				end
			end
		startbokstav = startbokstav + 1
	end
	puts antall
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
#substrings("below", dictionary)