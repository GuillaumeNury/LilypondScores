% LilypondScores:archived
\version "2.18.2"

\include "src/core.ily"

\header {
	title = "Marche Montagne"
	instrument = "Caisses Claires"
	composer = "Christophe Declercq"
	tagline = ##f
}

\new DrumStaff {
	\drummode {
		\time 2/4
		\partial 8
		\mark \default
		
		g8

		\repeat volta 2 {
			\fla d8.-> g16
			d8 g

			\ra d4
			(#9 d8) g

			d16 g d g
			d4

			g4
			d8 g
			\break

			d8. g16
			d8 g

			d4
			d16 g d g

			d8 g
			d4

			\time 3/4
			\ra d4
			(#9 d4)
			r8 g8
			\break
		}

		\time 2/4
		\repeat volta 2 {
			\fla d8. g16
			d8 g

			\ra d4
			(#9 d8) g

			d16 g d g
			d4

			g4
			d8 d
			\break

			g8. g16
			d8 g

			\ra d4
			(#9 d8) g

			d16 g d g
			d4

			\time 3/4
			g4
			\ra d4
			(#9 d8) g
			\break
		}

		\time 2/4
		\mark \default

		d8 d
		g4

		g8 d16 g
		d g d g

		d8 d
		g4

		\time 3/4
		g8 d16 g
		\ra d4
		(#9 d8) g
		\break

		\time 2/4
		d8 d
		g4

		g8 d16 g
		d g d g

		d8 d
		g4

		\time 3/4
		d16 g d g
		\ra d4
		(#9 d4)
		\break

		\time 2/4
		\repeat volta 2 {
			\fla d4
			d8 d

			g g
			\ra d8 (#5 d8)

			g8 g
			d g

			\time 3/4
			d16 g d g
			\ra d4
			(#9 d8) g
			\break

			\time 2/4
			d8. g16
			d8 g

			\fla d4->
			d16 g d g

			d8 d
			g4

			\time 3/4
			\ra d4
			(#9 d4)
			r4
			\break
		}
	}
}