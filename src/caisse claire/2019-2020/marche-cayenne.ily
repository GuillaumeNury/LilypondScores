% LilypondScores:draft
\version "2.18.2"

\include "src/caisse claire/core.ily"

\header {
	title = "Marche Cayenne"
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

			\ra d8\< (#6 \ra g8
			(#6 d8))\! r8
			\tuplet 7/4 { d16 g d d g d g }
			\fla d4
		}

		\break

		\time 4/4
		\mark \default
		\repeat volta 2 {
			\fla d16 d16 g8
			\tuplet 7/4 { d16 g d d g d g }
			\ra d8-> (#6 \ra g8
			(#6 d8->)) \fla d16 d16
			g8
			\ra d8 (#7 g)
			d32 g d g d8
			\ra d8 (#9 d4)
		}

		\break
	}
}