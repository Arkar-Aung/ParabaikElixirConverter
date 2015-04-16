defmodule Uni2Z1 do
	def convert(text) do
		text = Regex.replace(~r/\x{104E}\x{1004}\x{103A}\x{1038}/u, text, "\x{104E}")
		text = Regex.replace(~r/\x{102B}\x{103A}/u, text, "\x{105A}")
		text = Regex.replace(~r/\x{102D}\x{1036}/u, text, "\x{108E}")
		text = Regex.replace(~r/\x{103F}/u, text, "\x{1086}")


		text = Regex.replace(~r/(\x{102F}[\x{1036}]?)\x{1037}/u, text, 
			fn x, y ->
				if (x == y) do
					y <> "\x{1094}"
				else
					x <> y <> ""
				end
			end 
		)

		text = Regex.replace(~r/(\x{1030}[\x{1036}]?)\x{1037}/u, text, 
			fn x, y ->
				if (x == y) do
					y <> "\x{1094}"
				else
					x <> y <> ""
				end
			end 
		)

		text = Regex.replace(~r/(\x{1014}[\x{103A}\x{1032}]?)\x{1037}/u, text, 
			fn x, y ->
				if (x == y) do
					y <> "\x{1094}"
				else
					x <> y <> ""
				end
			end 
		)
		text = Regex.replace(~r/(\x{103B}[\x{1032}\x{1036}]?)\x{1037}/u, text, 
				fn x, y ->
				if (x == y) do
					y <> "\x{1095}"
				else
					x <> y <> ""
				end
			end 
		)

		text = Regex.replace(~r/(\x{103D}[\x{1032}]?)\x{1037}/u, text, 
			fn x, y ->
				if (x == y) do
					y <> "\x{1095}"
				else
					x <> y <> ""
				end
			end 
		)

		text = Regex.replace(~r/([\x{103B}\x{103C}\x{103D}][\x{102D}\x{1036}]?)\x{102F}/u, text, 
			fn x, y ->
				if (x == y) do
					y <> "\x{1033}"
				else
					x <> y <> ""
				end
			end 
		)
		
		text = Regex.replace(~r/((\x{1039}[\x{1000}-\x{1021}])[\x{102D}\x{1036}]?)\x{102F}/u, text, 
			fn x, y ->
				if (x == y) do
					y <> "\x{1033}"
				else
					x <> y <> ""
				end
			end 
		)

		text = Regex.replace(~r/([\x{100A}\x{100C}\x{1020}\x{1025}\x{1029}][\x{102D}\x{1036}]?)\x{102F}/u, text, 
			fn x, y ->
				if (x == y) do
					y <> "\x{1033}"
				else
					x <> y <> ""
				end
			end 
		)

		text = Regex.replace(~r/([\x{103B}\x{103C}][\x{103D}]?[\x{103E}]?[\x{102D}\x{1036}]?)\x{1030}/u, text, 
			fn x, y ->
				if (x == y) do
					y <> "\x{1034}"
				else
					x <> y <> ""
				end
			end 
		)			
		
		# uu - 2
		text = Regex.replace(~r/((\x{1039}[\x{1000}-\x{1021}])[\x{102D}\x{1036}]?)\x{1030}/u, text, 
			fn x, y ->
				if (x == y) do
					y <> "\x{1034}"
				else
					x <> y <> ""
				end
			end 
		)			
		
		# uu - 2
		text = Regex.replace(~r/([\x{100A}\x{100C}\x{1020}\x{1025}\x{1029}][\x{102D}\x{1036}]?)\x{1030}/u, text, 
			fn x, y ->
				if (x == y) do
					y <> "\x{1034}"
				else
					x <> y <> ""
				end
			end 
		)
		
		# uu - 2
		text = Regex.replace(~r/(\x{103C})\x{103E}/u, text, 
			fn x, y ->
				if (x == y) do
					y <> "\x{1087}"
				else
					x <> y <> ""
				end
			end 
		)			
		
		# ha - 2
		text = Regex.replace(~r/\x{1009}(?=[\x{103A}])/u, text, "\x{1025}")
		text = Regex.replace(~r/\x{1009}(?=\x{1039}[\x{1000}-\x{1021}])/u, text, "\x{1025}")

		text = Regex.replace(~r/([\x{1000}-\x{1021}\x{1029}])(\x{1039}[\x{1000}-\x{1021}])?([\x{103B}-\x{103E}\x{1087}]*)?\x{1031}/u, text, "\x{1031}\\1\\2\\3") # E render

		text = Regex.replace(~r/([\x{1000}-\x{1021}\x{1029}])(\x{1039}[\x{1000}-\x{1021}\x{1000}-\x{1021}])?(\x{103C})/u, text, "\\3\\1\\2") # Ra render

		# Kinzi

		text = Regex.replace(~r/\x{1004}\x{103A}\x{1039}/u, text, "\x{1064}") # Kinzi
		text = Regex.replace(~r/(\x{1064})([\x{1031}]?)([\x{103C}]?)([\x{1000}-\x{1021}])\x{102D}/u, text, "\\2\\3\\4\x{108B}") # Reordering kinzi lgt
		text = Regex.replace(~r/(\x{1064})(\x{1031})?(\x{103C})?([\x{1000}-\x{1021}])\x{102E}/u, text, "\\2\\3\\4\x{108C}") # Reordering kinzi lgtsk
		text = Regex.replace(~r/(\x{1064})(\x{1031})?(\x{103C})?([\x{1000}-\x{1021}])\x{1036}/u, text, "\\2\\3\\4\x{108D}") # Reordering kinzi ttt
		text = Regex.replace(~r/(\x{1064})(\x{1031})?(\x{103C})?([\x{1000}-\x{1021}])/u, text, "\\2\\3\\4\x{1064}") # Reordering kinzi

		# Consonant

		text = Regex.replace(~r/\x{100A}(?=[\x{1039}\x{102F}\x{1030}])/u, text, "\x{106B}") # nnya - 2
		text = Regex.replace(~r/\x{100A}/u, text, "\x{100A}") # nnya

		text = Regex.replace(~r/\x{101B}(?=[\x{102F}\x{1030}])/u, text, "\x{1090}") # ra - 2
		text = Regex.replace(~r/\x{101B}/u, text, "\x{101B}") # ra

		text = Regex.replace(~r/\x{1014}(?=[\x{1039}\x{103D}\x{103E}\x{102F}\x{1030}])/u, text, "\x{108F}") # na - 2
		text = Regex.replace(~r/\x{1014}/u, text, "\x{1014}") # na

		# Stacked consonants
		text = Regex.replace(~r/\x{1039}\x{1000}/u, text, "\x{1060}")
		text = Regex.replace(~r/\x{1039}\x{1001}/u, text, "\x{1061}")
		text = Regex.replace(~r/\x{1039}\x{1002}/u, text, "\x{1062}")
		text = Regex.replace(~r/\x{1039}\x{1003}/u, text, "\x{1063}")
		text = Regex.replace(~r/\x{1039}\x{1005}/u, text, "\x{1065}")
		text = Regex.replace(~r/\x{1039}\x{1006}/u, text, "\x{1066}")

		
		text = Regex.replace(~r/([\x{1001}\x{1002}\x{1004}\x{1005}\x{1007}\x{1012}\x{1013}\x{108F}\x{1015}\x{1016}\x{1017}\x{1019}\x{101D}])\x{1066}/u, text, 
			fn x, y ->
				if (x == y) do
					y <> "\x{1067}"
				else
					x <> y <> ""
				end
			end 
		) # 1067
		
		text = Regex.replace(~r/\x{1039}\x{1007}/u, text, "\x{1068}")
		text = Regex.replace(~r/\x{1039}\x{1008}/u, text, "\x{1069}")

		text = Regex.replace(~r/\x{1039}\x{100F}/u, text, "\x{1070}")
		text = Regex.replace(~r/\x{1039}\x{1010}/u, text, "\x{1071}")
		
		
		text = Regex.replace(~r/([\x{1001}\x{1002}\x{1004}\x{1005}\x{1007}\x{1012}\x{1013}\x{108F}\x{1015}\x{1016}\x{1017}\x{1019}\x{101D}])\x{1071}/u, text, 
			fn x, y ->
				if (x == y) do
					y <> "\x{1072}"
				else
					x <> y <> ""
				end
			end 
		) # 1072 omit (little shift to right)
		
		text = Regex.replace(~r/\x{1039}\x{1011}/u, text, "\x{1073}") # 1067
		
		# \x{1074} omit(little shift to right)
		text = Regex.replace(~r/([\x{1001}\x{1002}\x{1004}\x{1005}\x{1007}\x{1012}\x{1013}\x{108F}\x{1015}\x{1016}\x{1017}\x{1019}\x{101D}])\x{1073}/u, text, 
			fn x, y ->
				if (x == y) do
					y <> "\x{1074}"
				else
					x <> y <> ""
				end
			end 
		)
		
		# 1067
		text = Regex.replace(~r/\x{1039}\x{1012}/u, text, "\x{1075}")
		text = Regex.replace(~r/\x{1039}\x{1013}/u, text, "\x{1076}")
		text = Regex.replace(~r/\x{1039}\x{1014}/u, text, "\x{1077}")
		text = Regex.replace(~r/\x{1039}\x{1015}/u, text, "\x{1078}")
		text = Regex.replace(~r/\x{1039}\x{1016}/u, text, "\x{1079}")
		text = Regex.replace(~r/\x{1039}\x{1017}/u, text, "\x{107A}")
		text = Regex.replace(~r/\x{1039}\x{1018}/u, text, "\x{107B}")
		text = Regex.replace(~r/\x{1039}\x{1019}/u, text, "\x{107C}")
		text = Regex.replace(~r/\x{1039}\x{101C}/u, text, "\x{1085}")


		text = Regex.replace(~r/\x{100F}\x{1039}\x{100D}/u, text, "\x{1091}")
		text = Regex.replace(~r/\x{100B}\x{1039}\x{100C}/u, text, "\x{1092}")
		text = Regex.replace(~r/\x{1039}\x{100C}/u, text, "\x{106D}")
		text = Regex.replace(~r/\x{100B}\x{1039}\x{100B}/u, text, "\x{1097}")
		text = Regex.replace(~r/\x{1039}\x{100B}/u, text, "\x{106C}")
		text = Regex.replace(~r/\x{100E}\x{1039}\x{100D}/u, text, "\x{106F}")
		text = Regex.replace(~r/\x{100D}\x{1039}\x{100D}/u, text, "\x{106E}")

		text = Regex.replace(~r/\x{1009}(?=\x{103A})/u, text, "\x{1025}") # u
		text = Regex.replace(~r/\x{1025}(?=[\x{1039}\x{102F}\x{1030}])/u, text, "\x{106A}") # u - 2
		text = Regex.replace(~r/\x{1025}/u, text, "\x{1025}") # u
		
		##############

		text = Regex.replace(~r/\x{103A}/u, text, "\x{1039}") # asat

		text = Regex.replace(~r/\x{103B}\x{103D}\x{103E}/u, text, "\x{107D}\x{108A}") # ya wa ha
		
		text = Regex.replace(~r/\x{103D}\x{103E}/u, text, "\x{108A}") # wa ha

		text = Regex.replace(~r/\x{103B}/u, text, "\x{103A}") # ya
		
		text = Regex.replace(~r/\x{103C}/u, text, "\x{103B}") # ra
		
		text = Regex.replace(~r/\x{103D}/u, text, "\x{103C}") # wa
		
		text = Regex.replace(~r/\x{103E}/u, text, "\x{103D}") # ha
		
		text = Regex.replace(~r/\x{103A}(?=[\x{103C}\x{103D}\x{108A}])/u, text, "\x{107D}") # ya - 2

		text = Regex.replace(~r/(\x{100A}(?:[\x{102D}\x{102E}\x{1036}\x{108B}\x{108C}\x{108D}\x{108E}])?)\x{103D}/u, text, 
			fn x, y ->
				if (x == y) do
					y <> "\x{1087}"
				else
					x <> y <> ""
				end
			end 
		) # ha - 2

		text = Regex.replace(~r/\x{103B}(?=[\x{1000}\x{1003}\x{1006}\x{100F}\x{1010}\x{1011}\x{1018}\x{101A}\x{101C}\x{101E}\x{101F}\x{1021}])/u, text, "\x{107E}") # great Ra with wide consonants
		
		text = Regex.replace(~r/\x{107E}([\x{1000}-\x{1021}\x{108F}])(?=[\x{102D}\x{102E}\x{1036}\x{108B}\x{108C}\x{108D}\x{108E}])/u, text, "\x{1080}\\1") # great Ra with upper sign
		
		text = Regex.replace(~r/\x{107E}([\x{1000}-\x{1021}\x{108F}])(?=[\x{103C}\x{108A}])/u, text, "\x{1082}\\1") # great Ra with under signs

		text = Regex.replace(~r/\x{103B}([\x{1000}-\x{1021}\x{108F}])(?=[\x{102D} \x{102E} \x{1036} \x{108B} \x{108C} \x{108D} \x{108E}])/u, text, "\x{107F}\\1") # little Ra with upper sign

		text = Regex.replace(~r/\x{103B}([\x{1000}-\x{1021}\x{108F}])(?=[\x{103C}\x{108A}])/u, text, "\x{1081}\\1") # little Ra with under signs

		text = Regex.replace(~r/(\x{1014}[\x{103A}\x{1032}]?)\x{1037}/u, text, 
			fn x, y ->
				if (x == y) do
					y <> "\x{1094}"
				else
					x <> y <> ""
				end
			end 
		) # aukmyint

		text = Regex.replace(~r/(\x{1033}[\x{1036}]?)\x{1094}/u, text, 
			fn x, y ->
				if (x == y) do
					y <> "\x{1095}"
				else
					x <> y <> ""
				end
			end 
		) # aukmyint

		text = Regex.replace(~r/(\x{1034}[\x{1036}]?)\x{1094}/u, text, 
			fn x, y ->
				if (x == y) do
					y <> "\x{1095}"
				else
					x <> y <> ""
				end
			end 
		) # aukmyint
		
		Regex.replace(~r/([\x{103C}\x{103D}\x{108A}][\x{1032}]?)\x{1037}/u, text, 
			fn x, y ->
				if (x == y) do
					y <> "\x{1095}"
				else
					x <> y <> ""
				end
			end 
		) # aukmyint		
	end

	def test() do
 		{:ok, text} = File.read "uni"
 		{:ok, file} = File.open "hello", [:write]
 		IO.binwrite file, convert(text)
 		File.close file
 	end
end