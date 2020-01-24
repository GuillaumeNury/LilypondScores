% LilypondScores:draft
\version "2.18.2"

\include "src/caisse claire/core.ily"

\header {
	title = \markup { \fontsize #4 \bold "Suite de Maraîchines" }
	subtitle = \markup {
		\center-column {
			\null
			\line {
				\fontsize #-1 "Danse traditionnelle du Pays de Retz"
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
			\line { "Alexandre Guiodo" }
		}
	}
	tagline = \markup {
		\fontsize #-4 "Thèmes traditionnels et d'inspiration traditionnelle"
	}
}

\new DrumStaff {
	\tempo 4 = 126

	\drummode {
		\time 12/8
		\mark "A"

		\bar ".|:"
		% Phrase A-1
		\fla d8[ r8 \ra d8]
		(#5 d4.)
		\fla g8[ r8 g8]
		\fla d8-> g8 d8


		\fla g8[ r8 g8]
		\tuplet 4/6 { \drag d16 d8. }
		\ra d4.\<
		(#9 d8\![) r8 g8]

		\break

		\fla d4.
		\grace { g16[ d d] } g8[ d8 \fla g8]
		\ra g8[\v (#6 d8 d8]->)
		g8[ d8 \fla g8]

		\ra d8\v[ (#6 g8 \ra g8\v])
		(#0 \ra d8[ (#6 d8->)) \ra g8]\v
		(#4 \ra g4.->)
		(#8 g4.\v)

		\break

		% Phrase A-2
		\fla d8[ r8 g8]
		\ra d4.\<
		(#9 d8[\!->) r8 d8]
		\fla g8[ d16 d16 g8]->

		d16\< g d g d8\!->
		g8[ d8 \fla g8]
		\fla d8[-> r8 g8]
		\ra d4.\< (#9
		
		\break

		d4.\!->)
		\grace { g16[ d d] } 
		g8[ d8 \fla g8]
		\ra g8[\v (#6 d8 d8]->)
		g8[ d8 \fla g8]

		\ra d8\v[ (#6 g8 \ra g8\v])
		(#0 \ra d8[ (#6 d8->)) \ra g8]\v
		(#4 \ra g4.->)
		(#8 g4.\v)

		\bar ":|."
	}
}

\new DrumStaff {
	\drummode {
		\mark "B"
		\time 4/4

		\bar ".|:"

		\fla d8 d16 g
		d8 \fla g8
		d16\< g d g\!
		d8-> \ra d8

		(#5 d8[->) \ra g8\v]
		(#6 d8[ d8]->)
		g16\< d d g\!
		d8-> g

		\bar ":|."
	}
}

\new DrumStaff {
	\drummode {
		\mark "D"
		\time 4/4

		\bar ".|:"

		d16-> g d g
		\drag d8 d16 g
		d16 g d8->
		g8 \fla d8

		g8 \fla d8
		d16\< g d g
		d16 g d g\!
		d8-> g

		\break

		d16-> g d g
		\drag d8 d16 g
		d16 g d8->
		g8 \fla d8

		g8 \fla d8
		d16 g d g
		\ra d4->\>
		(#6 g4\!)

		\break

		\fla d8 g
		d8 \fla g16 g
		d8[ g]->
		d8[ \fla g8]

		d8[ \drag d8]
		d16\pp g d g
		d16\< g d g\!
		d8-> g

		\break

		\fla d8 g->
		d8 \fla g16-> g
		d8[ g->]
		d8[ g->]

		\ra d4
		(#9 d16\<) g16 d g\!
		\ra d8-> (#4 d16->) g16
		r4

		\bar ":|."

		\time 2/4
		\fla d4
		r4
	}
}
