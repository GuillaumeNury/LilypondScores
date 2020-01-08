% LilypondScores:archived
\version "2.18.2"

\include "src/caisse claire/core.ily"

\header {
	title = "Ça mousse - Superbus"
	instrument = "Caisses Claires"
	composer = "team Scotch-Brite"
	tagline = ##f
}

\new DrumStaff {
	\drummode {
		\time 12/8

		\mark \markup { \italic "4 fois" }
		\repeat volta 2 {
			d8-> g d
			\fla g \ra d4
			(#9 d8) g d
			g16-> d g d g g

			d8-> g d
			\fla g \ra d4
			(#9 d8) g d
			g16-> d g d g g
			\break
		}

		\ra d4.
		(#12 \ra d4.
		(#12 d8->)) \fla g \fla d
		\fla g \ra d4

		(#9 d8) \ra d4
		(#9 d8) \ra d4
		(#9 d8->)) \fla g \fla d
		\fla g \ra g4
		
		(# 9 \ra d4.
		(#12 \ra d4.
		(#12 d8->))) \fla g \fla d
		\fla g \ra d4

		(#9 d8) \ra d4
		(#9 d8) \ra d4
		(#9 d8->)) \fla g \fla d
		\fla g4.

		\mark \markup { \italic "2 fois" }
		\repeat volta 2 {
			d8-> g d
			\fla g \ra d4
			(#9 d8) g d
			g16-> d g d g g

			d8-> g d
			\fla g \ra d4
			(#9 d8) g d
			g16-> d g d g g
			\break
		}
	}
}