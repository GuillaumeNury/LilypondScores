% LilypondScores:draft
\version "2.18.2"

\include "src/core.ily"

\header {
	title = \markup { \fontsize #4 \bold "Ar Sorserez" }
	subtitle = \markup {
		\center-column {
			\null
			\line {
				\fontsize #-1 "Marche inspirée de la Gwerz traditionnelle \"Ar Sorserez\", chantée par les soeurs Goadec"
			}
			\line { \fontsize #-2 "Arrangement : Ronan JEGO-AQUILINA" }
		}
	}
	instrument = \markup {
		\column {
			\null
			\null
			\line { "PARTITION POUR CAISSES CLAIRES" }
		}
	}
	composer = \markup {
		\column {
			\null
			\null
			\null
			\null
			\line { "Composition pour la Caise Claire :" }
			\line { "Aurélien Étienne / Guillaume Nury" }
		}
	}
	tagline = \markup {
		\fontsize #-4 "Source : Les soeurs Goadec, chant publié dans le CD « Les soeurs Goadec, chanteuses du Centre-Bretagne (Grands interprètes de Bretagne, Vol. 5) »."
	}
}


\new DrumStaff {
	\tempo 4 = 80
	\drummode {
		\time 4/4
		\mark \default
		\bar ".|:"

		\repeat volta 2 {
			\fla d8 \triolet { d16 d g }
			d-> g d \fla g
			\triolet { d16 d g } d16 g
			\fla d4

			\bar "||"
			\time 2/4
			\ra d8.->\< (#6 \ra g16->)
			(#0 \ra d8 (#6 d8->))\!

			\bar "||"
			\time 4/4
			\tuplet 7/4 { d16 g d d g d g }
			\fla d4
			\ra d4
			(#13 d8) g8
		}
		\alternative {
			{
				\ra d4
				(#13 d8) g8
				d16. g32 r16. g32
				\fla d8 g
			}
			{
				\fla d16. g32 d16. \fla g32
				d16. d32 \fla g8
				\ra d4
				(#13 d8) g8
			}
		}

		\break

		\mark \default
		\time 4/4
		\bar ".|:"

		\fla d8 \triolet { d16 d g }
		d-> g d g->
		d16 d \fla g8
		\fla d4

		\bar "||"
		\time 2/4
		\ra d8-> (#6 g8->)
		d32\< g d g d8->\!
		
		\bar "||"
		\time 4/4
		\ra d8-> (#6 \triolet { g16->) d g }
		\fla d4

		\divLig d32\pp d g16-> d32\< d g g
		d8.->\! g16
		\tuplet 6/4 {
			\ra d8
			(#5 d16) g16 d g16
		}
		\tuplet 6/4 {
			\ra d8
			(#5 d16) g16 d g
		}

		\fla d8. g16
		\ra d4
		(#13 
		\bar "||"
		\time 2/4
		d4)
		r8 \fla d8

		\bar "||"
		\time 4/4
		\fla g8 \tuplet 3/2 { d16 d g }
		\fla d8 d16-> g
		d d \fla g8
		\ra d8 (#7 \triolet { g16) d g }

		\bar "||"
		\time 2/4
		\tuplet 6/4 { \fla d8 g16 d g d }
		\fla g8. g16
		
		\bar "||"
		\time 4/4
		\ra d4
		(#13 d8) g8
		\ra d4
		(#13 d8) g8

		\divLig d32\< g d g d g d g
		d8\! g8
		\ra d4
		(#13 d8) g8

		\bar "||"
		\time 2/4
		d16. g32 r16. g32
		\fla d8 g
		\bar ":|."

		\fla d4
		r4
		\bar "|."
	}
}