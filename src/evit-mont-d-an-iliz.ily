% LilypondScores:draft
\version "2.18.2"

\include "../lib/scottish-drums.ily"

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
		\include "src/evit-mont-d-an-iliz/theme_a.ily"

		\mark \default
		\include "src/evit-mont-d-an-iliz/theme_b.ily"

		\mark "Fin"
		\include "src/evit-mont-d-an-iliz/fin.ily"
	}
}