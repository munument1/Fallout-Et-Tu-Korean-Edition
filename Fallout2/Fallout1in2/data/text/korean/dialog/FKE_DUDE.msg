# This file's lines are used when performing First Aid or Doctor skill on self, if feature enabled.
#
# 1 Antidote takes away 75 Poison Level
# 1 RadAway takes away 150 Irradiation Level
#
{100}{}{독에 중독되었는지 방사능에 오염되었는지 확인할 수 없습니다.}

{101}{}{방사능에 오염되고 독에 중독되었지만, 그 정도는 확실하지 않습니다.}
{102}{}{방사능에 오염되었지만, 그 정도는 확실하지 않습니다.}
{103}{}{독에 중독되었지만, 그 정도는 확실하지 않습니다.}

{104}{}{You are }  # 104 will be completed with lines below.

{105}{}{미미하게}
{106}{}{약간}
{107}{}{가볍게}
{108}{}{적당히}
{109}{}{많이}
{110}{}{극도로}
{111}{}{위험하게}
{112}{}{치명적으로}

{113}{}{오염되었습니다}
{114}{}{.}  # Used after line X if player isn't also poisoned...
{115}{}{ and }  # ...but if also poisoned, this is used.

{116}{}{방사능 오염 수치:}
{117}{}{라드.}
{118}{}{현재 중독 단계:}

{119}{}{독과 방사능으로부터 안전합니다.}

{200}{}{}

##
##
# for displaying radiation and poison level of dude's body
# code by Cubik2k and Wasteland Ghost
#
# FALLOUT RADIATION EFFECTS TABLE:
# 	Rads 	        Message 		healper  hp 	ST 	PE 	EN 	CH 	IN 	AG
#   1 49		insignificant
#   50 100		slight
#   101 149		mild
# 	0-149 		very nauseous 								
# 	150-299 	slightly fatigued 			-1 					
# 	300-449 	vomiting does not stop 	-3 		-1 					-1
# 	450-599 	hair is falling out 	-5 	-5 	-2 		-1 			-2
# 	600-999 	skin is falling off 	-10 	-15 	-4 	-3 	-3 	-3 	-1 	-5
# 	1000+ 		intense agony 		-10 	-20 	-6 	-5 	-5 	-5 	-3 	-6 
#
#RADIATION:
#
#150 to 299 - next level to name!
#
#   300 400		moderate
#   400 500		heavily
#   500 600
#   600 700
#   700 800		extreme
#   800 900		dangerous
#   900 1000	excessive
#   1000+		fatal
#
