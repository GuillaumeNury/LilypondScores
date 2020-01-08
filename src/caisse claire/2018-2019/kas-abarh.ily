% LilypondScores
\version "2.18.2"

\include "src/caisse claire/core.ily"

\header {
	title = "Kas Abarh"
	instrument = "Caisses Claires"
	composer = "Bodadeg Ar Sonerion"
	tagline = ##f
}


\new DrumStaff {
	\drummode {
		\mark \default
		\time 2/4
		\include "kas-abarh/theme_a.ily"

		\mark \default
		\include "kas-abarh/theme_b.ily"
	}
}