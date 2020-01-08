% LilypondScores
\version "2.18.2"

\include "src/caisse claire/core.ily"

\header {
	title = "Ronds de Sautron"
	instrument = "Caisses Claires"
	composer = "Aurélien Étienne"
	tagline = ##f
}


\new DrumStaff {
	\drummode {
		\mark \default
		\include "ronds-de-sautron/theme_a.ily"
		\mark \default
		\include "ronds-de-sautron/theme_b.ily"
	}
}