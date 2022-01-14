% LilypondScores
\version "2.23.5"

\include "src/caisse claire/core.ily"

\header {
	title = "Andro Saint Patrick"
	instrument = "PARTITION POUR CAISSES CLAIRES"
	composer = "Yann Lemetayer"
}

\new DrumStaff {
	\drummode {
		\time 4/4
		\boxMark "A"
		\repeat volta 2 {
			\fla d8 g16-> d
			g g d8
			\fla d8 \set Timing.beamExceptions = #'()
			\ra d8 (#9 d8 d8)

			d16-> g d\> d\!
			g\< d\! g8->
			r8 g16 g
			\ra d4 (#9 \break
			
			d8) g16-> d
			g g d8
			\fla d8 \set Timing.beamExceptions = #'() \ra d8
			(#9 d8 d8)

			d16-> g d\> d\!
			g\< d\! g8->
			\fla d8 \ra d8
			(#5 d4)
		}
	}
}

\new DrumStaff {
	\drummode {
		\boxMark "B"
		\repeat volta 2 {
			\fla d8 \ra d8
			(#5 d8) d16\< g
			d g\! d8->
			r8 \ra d8
			(#13 d4
			d8.) d16
			d8 g
			d16-> g d d
			\break

			g8 \ra d8
			(#5 d8) d16\< g
			d g\! d8->
			r8 g

			d16 d g8
			\fla d8. g16
			\ra d4
			(#9 d4)
		}
	}
}