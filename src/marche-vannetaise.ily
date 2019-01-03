% LilypondScores
\version "2.18.2"

\include "src/core.ily"

\header {
	title = "Marche Vannetaise"
	instrument = "Caisses Claires"
	composer = "Christophe Declercq"
	tagline = ##f
}

repnote = \markup \lower #4 \halign #1 {
	\path #0.1 #'((moveto 0 0)
	(lineto 0 -1)
	(lineto 2 -1)
	(lineto 2 0)
	)
}

\new DrumStaff {
	\drummode {
		\time 4/4
		\partial 8
		\mark \default
		
		g8

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
		\break

		d16-> g d g
		d d g8
		\fla d4
		r8 g8

		\fla d8. g16
		d8 g->
		d16 d g g
		d4

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

		\fla d8. \ra g16
		(#3 d8) g
		d16-> g d g
		d d g8
		\break

		d16-> g d-> g
		d16 d g8->
		d4->
		d4:32~

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
		\repeat volta 2 {
			d16-> g d g
			d d g g
			d8 \fla g
			\fla d4

			d16-> g d g
			d d g8
			\fla d4
			\ra d4

			(#9 d16 g d g)
			d16 d g g
			d8 \fla g8
			\fla d8 d16 g
			\break

			\time 2/4
			d4->
			d4:32~
		}

		d4
		r4
		r4
		r4
	}
}