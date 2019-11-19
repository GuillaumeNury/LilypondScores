% LilypondScores:draft
\version "2.18.2"

\include "src/core.ily"

\header {
	title = "Marche Ar Sorcerez"
	instrument = "Caisses Claires"
	composer = "Aurélien Étienne / Guillaume Nury"
	tagline = ##f
}

\new DrumStaff {
	\drummode {
		\time 4/4
		\mark \default

		\repeat volta 2 {
			\fla d8 \triolet { d16 d g }
			d-> g d \fla g
			\triolet { d16 d g } d16 g
			\fla d4

			\time 2/4
			\ra d8->\< (#6 \ra g8->
			(#6 d4->))\!

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
				d16 g8 g16
				\fla d8 g
			}
			{
				\tuplet 6/4 { \fla d8 d16 d8 \fla g16 }
				\tuplet 6/4 { d8 d16 \fla g8. }
				\ra d4
				(#13 d8) g8
			}
		}

		\break

		\mark \default
		\time 4/4

		\fla d8 \triolet { d16 d g }
		d-> g d g->
		d16 d \fla g8
		\fla d4

		\ra g8-> (#6 d8->)
		d32 g d g d8
		\tuplet 6/4 { \ra d8.-> (#6 g16->) d g }
		\fla d4

		\break

		\triolet { d16 d g } d32 d g g
		d8. g16
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
		(#13 d4)
		r8 \fla d8

		\break

		\fla g8 \tuplet 3/2 { d16 d g }
		\fla d8 d16-> g
		d d \fla g8
		\tuplet 6/4 { \ra d8. (#7 g16) d g }

		\tuplet 6/4 { \fla d8 g16 d g d }
		\fla g8. g16
		\ra d4
		(#13 d8) g8

		\break

		\ra d4
		(#13 d8) g8
		d32\< g d g d g d g
		d8\! g8

		\ra d4
		(#13 d8) g8
		d16 g8 g16
		\fla d4
	}
}