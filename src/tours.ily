% LilypondScores
\version "2.18.2"

\include "../lib/scottish-drums.ily"

\header {
	title = "Tours"
	instrument = "Caisses Claires"
	composer = "Aurélien Étienne"
	tagline = ##f
}

\new DrumStaff {
	\drummode {
		\time 2/4
		\mark "Thème A"
		\include "src/tours/theme_a.ily"
		\mark "Thème B"
		\include "src/tours/theme_b.ily"
	}
}