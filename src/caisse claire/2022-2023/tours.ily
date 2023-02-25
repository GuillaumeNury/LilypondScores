% LilypondScores
\version "2.23.5"

\include "src/caisse claire/core.ily"

\header {
	title = "Tours d'Orvault"
	instrument = "PARTITION POUR CAISSES CLAIRES"
	composer = "Alexandre Guiodo"
}

\new DrumStaff {
	\drummode {
		\time 4/4

		\boxMark "A - Introduction"

		\repeat volta 2 {
			\bar ".|:"

			\fla d16 g d \fla g16
			r8 \fla d8
			r8 \fla g8
			\fla d4

			\ra d8 (#7 \tuplet 6/4 { g16) d g }
			\ra d8-> (#6 g8)
			r8 \ra d8
			(#7 g4)
		}

		\break

		\repeat volta 2 {
			\bar ".|:"

			\fla d16 g d \fla g16
			d16 g \fla d g16
			d16 g \fla d8
			\ra d4

			(#13 \ra d8->)(#6 \tuplet 6/4 { g16) d g }
			d8 \ra g8->
			(#6 d8) \ra d8
			(#7 g4)
		}

		\break

		\repeat volta 2 {
			\bar ".|:"

			d16.-> g32 d16. g32->
			d16. d32 g16.-> g32\v
			d8 \tuplet 6/4 { g16\< d g\! }
			d8-> g

			\fla d16. g32 d16. g32->
			\tuplet 6/4 { d16\< g d\! } g8->
			\ra d4
			(#13 d4)
		}
	}
}