% LilypondScores:archived
\version "2.18.2"

\include "src/caisse claire/core.ily"

\header {
	title = "Ton Bal Kadoudal"
	instrument = "PARTITION POUR CAISSES CLAIRES"
	composer = "Christophe Declercq"
}


\new DrumStaff {
	\drummode {
		\time 2/4
		\boxMark "A"
		\repeat volta 2 {
			\fla d4 d8. g16
			\ra d4 (#9 d8) g16 g
			d8 \fla g8 d8. g16
			d16\< g d g\! d4->
			\break

			d8 d g8. g16
			\ra d4 (#9 d8) g16 g
			d16 g d8-> g16 d g8->
			\ra d4 (#9 d4)
			\break
		}
	}
}


\new DrumStaff {
	\drummode {
		\boxMark "B"
		\repeat volta 2 {
			\fla d4 d8. g16
			\ra d4 (#9 d8) g8
			d8 g16 g d8. g16
			d16\< g d g\! d8 \fla g8
			\break

			\time 3/4
			\fla d8. g16
			d8 d
			\set Timing.beamExceptions = #'()
			g8 g
		}
		\alternative {
			{
				\time 2/4
				d8 g-> d-> g16 g
				\ra d4 (#9 d4)
			}
			{
				\break
				\time 2/4
				d16 g d g d4
				d8 g d g16 g
				\ra d4 (#9 \ra d4) (#9 d2) \bar "|."
			}
		}
		\break
	}
}