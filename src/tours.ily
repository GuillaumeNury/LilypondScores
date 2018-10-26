% LilypondScores
\version "2.18.2"

\include "src/core.ily"

\header {
	title = "Tours"
	instrument = "Caisses Claires: A B C B C B"
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
		\mark "Thème C"
		\include "src/tours/theme_c.ily"
	}
}