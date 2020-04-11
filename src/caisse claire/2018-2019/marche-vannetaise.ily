% LilypondScores:archived
\version "2.18.2"

\include "src/caisse claire/core.ily"

\header {
	title = "Marche Vannetaise"
	instrument = "PARTITION POUR CAISSES CLAIRES"
	composer = "Christophe Declercq"
	tagline = ##f
}

\new DrumStaff {
	\drummode {
		\time 4/4
		\partial 8
		\boxMark "A"
		
		g8

		\repeat volta 2 {
			\fla d8. \ra g16
			(#3 d8) g
			d16 d g d
			g4

			d8 g
			d16-> g d g
			d4->
			r8 d16 g

			d8.-> \ra g16
			(#3 d8) g
			d16 d g d
			g4

			d16-> g d g
			d d g8
			\fla d4
			r8 g8
		}
		\break

		\repeat volta 2 {
			\fla d8. g16
			d8 g->
			d16 d g g
			d4->

			d8 g
			d16-> g d g
			\set Timing.beamExceptions = #'()
			d8-> \ra d8
			(#5 d8) g
			\break

			d8.-> g16
			d8 g->
			d16 d g g
			d4

			d16-> g d g
			d d g8->
			\ra d4
			(#9 d8) g
		}
		\break

		\boxMark "B"
		\fla d8. \ra g16
		(#3 d8) g
		d16-> g d g
		d d g8

		d16-> g d g->
		d16 d g8->
		d4->
		d4:32~
		\break

		\repeat volta 2 {
			d8.-> g16
			d8 g->
			d16 d g g
			d8 g

			\time 2/4
			d16-> g d g
			d8-> d8:32~
			\break
		}

		\time 4/4
		\boxMark "C"
		\repeat volta 2 {
			d16-> g d g
			d d g g
			d8 \fla g
			\fla d4

			d16-> g d g
			d d g8
			\fla d4
			\ra d4

			(#9 d16) g d g
			d16 d g g
			d8 \fla g8
			\fla d8 d16 g

			\time 2/4
			d4->
			d4:32~
		}

		d4
		r4
	}
}