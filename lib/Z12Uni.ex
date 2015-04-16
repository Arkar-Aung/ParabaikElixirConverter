defmodule Z12Uni do

	def convert(text) do
		text = Regex.replace(~r/\x{106A}/u, text, " \x{1009}")
		text = Regex.replace(~r/\x{1025}(?=[\x{1039}\x{102C}])/u, text, "\x{1009}")
		text = Regex.replace(~r/\x{1025}\x{102E}/u, text, "\x{1026}")
		text = Regex.replace(~r/\x{106B}/u, text, "\x{100A}")
		text = Regex.replace(~r/\x{1090}/u, text, "\x{101B}")
		text = Regex.replace(~r/\x{1040}/u, text, "\x{1040}") # zero

		text = Regex.replace(~r/\x{108F}/u, text, "\x{1014}")
		text = Regex.replace(~r/\x{1012}/u, text, "\x{1012}")
		text = Regex.replace(~r/\x{1013}/u, text, "\x{1013}")


		text = Regex.replace(~r/[\x{103D}\x{1087}]/u, text, "\x{103E}") # ha
		text = Regex.replace(~r/\x{103C}/u, text, "\x{103D}") # wa

		text = Regex.replace(~r/[\x{103B}\x{107E}\x{107F}\x{1080}\x{1081}\x{1082}\x{1083}\x{1084}]/u, text, "\x{103C}") # ya yint(ra)
		text = Regex.replace(~r/[\x{103A}\x{107D}]/u, text, "\x{103B}") # ya
		text = Regex.replace(~r/\x{103E}\x{107B}/u, text, "\x{103B}\x{103E}") # reorder
		text = Regex.replace(~r/\x{108A}/u, text, "\x{103D}\x{103E}") # wa ha
		text = Regex.replace(~r/\x{103E}\x{103D}/u, text, "\x{103D}\x{103E}") # wa ha

		### Reordering

		text = Regex.replace(~r/(\x{1031})?(\x{103C})?([\x{1000}-\x{1021}])\x{1064}/u, text, "\x{1064}\\1\\2\\3") # reordering kinzi
		text = Regex.replace(~r/(\x{1031})?(\x{103C})?([\x{1000}-\x{1021}])\x{108B}/u, text, "\x{1064}\\1\\2\\3\x{102D}") # reordering kinzi lgt
		text = Regex.replace(~r/(\x{1031})?(\x{103C})?([\x{1000}-\x{1021}])\x{108C}/u, text, "\x{1064}\\1\\2\\3\x{102E}") # reordering kinzi lgtsk
		text = Regex.replace(~r/(\x{1031})?(\x{103C})?([\x{1000}-\x{1021}])\x{108D}/u, text, "\x{1064}\\1\\2\\3\x{1036}"); # reordering kinzi ttt

		##############

		text = Regex.replace(~r/\x{105A}/u, text, "\x{102B}\x{103A}")
		text = Regex.replace(~r/\x{108E}/u, text, "\x{102D}\x{1036}")

		### lg ttt

		text = Regex.replace(~r/\x{1033}/u, text, "\x{102F}") # u
		text = Regex.replace(~r/\x{1034}/u, text, "\x{1030}") # uu
		text = Regex.replace(~r/\x{1088}/u, text, "\x{103E}\x{102F}") # ha + u
		text = Regex.replace(~r/\x{1089}/u, text, "\x{103E}\x{1030}") # ha + uu

		##############

		text = Regex.replace(~r/\x{1039}/u, text, "\x{103A}")
		text = Regex.replace(~r/[\x{1094}\x{1095}]/u, text, "\x{1037}") # aukmyint

		### Pasint order human error

		text = Regex.replace(~r/([\x{1000}-\x{1021}])([\x{102C}\x{102D}\x{102E}\x{1032}\x{1036}]){1,2}([\x{1060}\x{1061}\x{1062}\x{1063}\x{1065}\x{1066}\x{1067}\x{1068]\x{1069}\x{1070}\x{1071}\x{1072}\x{1073}\x{1074}\x{1075}\x{1076}\x{1077}\x{1078}\x{1079}\x{107A}\x{107B}\x{107C}\x{1085}])/u, text, "\\1\\3\\2") # new

		##############

		text = Regex.replace(~r/\x{1064}/u, text, "\x{1004}\x{103A}\x{1039}")
		text = Regex.replace(~r/\x{104E}/u, text, "\x{104E}\x{1004}\x{103A}\x{1038}")
		text = Regex.replace(~r/\x{1086}/u, text, "\x{103F}")

		text = Regex.replace(~r/\x{1060}/u, text, "\x{1039}\x{1000}")
		text = Regex.replace(~r/\x{1061}/u, text, "\x{1039}\x{1001}")
		text = Regex.replace(~r/\x{1063}/u, text, "\x{1039}\x{1003}")
		text = Regex.replace(~r/\x{1065}/u, text, "\x{1039}\x{1005}")
		text = Regex.replace(~r/[\x{1066}\x{1067}]/u, text, "\x{1039}\x{1006}")
		text = Regex.replace(~r/\x{1068}/u, text, "\x{1039}\x{1007}")
		text = Regex.replace(~r/\x{1069}/u, text, "\x{1039}\x{1008}")
		text = Regex.replace(~r/\x{106C}/u, text, "\x{1039}\x{100B}")
		text = Regex.replace(~r/\x{1070}/u, text, "\x{1039}\x{100F}")
		text = Regex.replace(~r/[\x{1071}\x{1072}]/u, text, "\x{1039}\x{1010}")
		text = Regex.replace(~r/[\x{1073}\x{1074}]/u, text, "\x{1039}\x{1011}")
		text = Regex.replace(~r/\x{1075}/u, text, "\x{1039}\x{1012}")
		text = Regex.replace(~r/\x{1076}/u, text, "\x{1039}\x{1013}")
		text = Regex.replace(~r/\x{1077}/u, text, "\x{1039}\x{1014}")
		text = Regex.replace(~r/\x{1078}/u, text, "\x{1039}\x{1015}")
		text = Regex.replace(~r/\x{1079}/u, text, "\x{1039}\x{1016}")
		text = Regex.replace(~r/\x{107A}/u, text, "\x{1039}\x{1017}")
		text = Regex.replace(~r/\x{107B}/u, text, "\x{1039}\x{1018}")
		text = Regex.replace(~r/\x{107C}/u, text, "\x{1039}\x{1019}")		
		text = Regex.replace(~r/\x{1085}/u, text, "\x{1039}\x{101C}")
		text = Regex.replace(~r/\x{106D}/u, text, "\x{1039}\x{100C}")

		text = Regex.replace(~r/\x{1091}/u, text, "\x{100F}\x{1039}\x{100D}")
		text = Regex.replace(~r/\x{1092}/u, text, "\x{100B}\x{1039}\x{100C}")
		text = Regex.replace(~r/\x{1097}/u, text, "\x{100B}\x{1039}\x{100B}")
		text = Regex.replace(~r/\x{106F}/u, text, "\x{100E}\x{1039}\x{100D}")
		text = Regex.replace(~r/\x{106E}/u, text, "\x{100D}\x{1039}\x{100D}")

		##############

		text = Regex.replace(~r/(\x{103C})([\x{1000}-\x{1021}])(\x{1039}[\x{1000}-\x{1021}])?/u, text, "\\2\\3\\1") # reodering ra

		text = Regex.replace(~r/(\x{103E})(\x{103D})([\x{103B}\x{103C}])/u, text, "\\3\\2\\1")
		text = Regex.replace(~r/(\x{103E})([\x{103B}\x{103C}])/u, text, "\\2\\1")
		text = Regex.replace(~r/(\x{103D})([\x{103B}\x{103C}])/u, text, "\\2\\1")

		text = Regex.replace(~r/([\x{1000}-\x{101C}\x{101E}-\x{102A}\x{102C}\x{102E}-\x{103F}\x{104C}-\x{109F}])(\x{1040})(?=\x{0020})?/u, text, 
			fn x, y -> 
				if x == y do
					y  <> "\x{101D}"
				else x <> y <> ""
			end
		end ) # zero and wa

		text = Regex.replace(~r/((\x{101D}))(\x{1040})(?=\x{0020})?/u, text, 
			fn x, y -> 
				if x == y do
					y  <> "\x{101D}"
				else 
					x <> y <> ""
				end
			end 
		) # zero and wa

		text = Regex.replace(~r/(([\x{1000}-\x{101C}\x{101E}-\x{102A}\x{102C}\x{102E}-\x{103F}\x{104C}-\x{109F}\x{1020}]))(\x{1047})/u, text, 
			fn x, y -> 
				if x == y do
					y  <> "\x{101B}"
				else 
					x <> y <>""
				end
			end 
		) #  seven and ra


		text = Regex.replace(~r/(\x{1047})( ? =[\x{1000} - \x{101C}\x{101E} - \x{102A}\x{102C}\x{102E} - \x{103F}\x{104C} - \x{109F}\x{0020}])/u, text, "\x{101B}") # seven and ra

		### Reordering storage order		

		text =  Regex.replace(~r/(\x{1031})?([\x{1000}-\x{1021}])(\x{1039}[\x{1000}-\x{1021}])?([\x{102D}\x{102E}\x{1032}])?([\x{1036}\x{1037}\x{1038}]{0,2})([\x{103B}-\x{103E}]{0,3})([\x{102F}\x{1030}])?([\x{1036}\x{1037}\x{1038}]{0,2})([\x{102D}\x{102E}\x{1032}])?/u, text, "\\2\\3\\6\\1\\4\\9\\7\\5\\8")

		text = Regex.replace(~r/\x{1036}\x{102F}/u, text, "\x{102F}\x{1036}")

		Regex.replace(~r/(\x{103A})(\x{1037})/u, text, "\\2\\1")

	end

 	def test() do
 		{:ok, txt} = File.read "z1"
 		{:ok, file} = File.open "hello", [:write]
 		IO.binwrite file, convert(txt)
 		File.close file
 	end
end