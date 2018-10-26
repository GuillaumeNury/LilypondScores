% LilypondScores:draft
\version "2.18.2"

\include "../lib/scottish-drums.ily"

\header {
	title = "Les Paludiers"
	instrument = "Caisses Claires"
	composer = "Christophe Declercq"
	tagline = ##f
}

\new DrumStaff {
	\drummode {
		\time 12/8
		\mark \default
		\include "src/paludiers/theme_a.ily"
	}
}