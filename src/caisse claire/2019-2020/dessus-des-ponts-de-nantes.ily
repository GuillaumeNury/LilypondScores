% LilypondScores
\version "2.23.5"

\include "src/caisse claire/core.ily"

\header {
	title = "Dessus les ponts de Nantes"
	instrument = "PARTITION POUR CAISSES CLAIRES"
	composer = "Alexandre Guiodo"
	arranger = "Arrangement : Ronan JEGO-AQUILINA"
	tagline = "Thèmes traditionnels et d'inspiration traditionnelle"
}

\new DrumStaff {
	\tempo 4. = 72

	\drummode {
		\time 3/4
		\boxMark "Boucle"

		\repeat volta 2 {
			\bar ".|:"
			\fla d16-> g d g
			d g \fla d8->
			\fla g8-> d
			\break

			\fla d16-> g d g
			d g d32\< g d g\!
			d8-> g
			\break

			\fla d16-> g d g
			d[ g \drag d16-> d]
			g8-> d
		}
		\break
	}

	\drummode {
		\time 3/4
		\boxMark "Fin"

		\fla d16-> g d g
		d16 g d32\< g d g\!
		d16-> g d32\< g d g\!

		d4->
		r4
		r
		\bar "|."
	}
}
