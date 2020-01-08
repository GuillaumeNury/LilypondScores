% LilypondScores
\version "2.18.2"

\include "src/caisse claire/core.ily"

\header {
	title = "Evit Mont d’an Iliz"
	instrument = "Caisses Claires"
	composer = "Aurélien Étienne"
	tagline = ##f
}

\new DrumStaff {
	\drummode {
		\time 4/4
		\mark \default
		\include "evit-mont-d-an-iliz/theme_a.ily"

		\mark \default
		\include "evit-mont-d-an-iliz/theme_b.ily"

		\mark "Fin"
		\include "evit-mont-d-an-iliz/fin.ily"
	}
}