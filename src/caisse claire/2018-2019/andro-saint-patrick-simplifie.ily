% LilypondScores:archived
\version "2.18.2"

\include "src/caisse claire/core.ily"

\header {
	title = "Andro Saint Patrick (version simplifiée)"
	instrument = "PARTITION POUR CAISSES CLAIRES"
	composer = "Air commun"
	tagline = ##f
}


\new DrumStaff {
	\drummode {
		\time 4/4
		\mark \markup { \italic "4 fois" }
		\repeat volta 4 {
			d16 g d g
			d8-> g
			\set Timing.beamExceptions = #'()
			\fla d \ra d (#5 d) g
			d16 g d g
			d8-> g
			\ra d4 (#9 d)
		}
		\break

		\mark \markup { \italic "4 fois" }
		\repeat volta 4 {
			\fla d8 d16 g
			d8-> \ra d (#5 d) d16 g
			\ra d4 (#9 d16) g d g
			d8-> g
			\ra d4 (#9 d)
		}
		\break
	}
}