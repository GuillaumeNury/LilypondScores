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
			d g d \fla g
			\triolet { d16 d g } d16 g
			\fla d4

			\time 2/4
			\ra d8->\< (#6 \ra g8->
			(#6 d4))\!

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
				\tuplet 6/4 { \fla d8 d16 d8 \fla g16}
				\tuplet 6/4 { d8 d16 \fla g8. }
				\ra d4
				(#13 d8) g8
			}
		}

		\break
	}
}