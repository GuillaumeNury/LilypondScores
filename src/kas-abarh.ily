% LilypondScores:draft
\version "2.18.2"

\include "../lib/scottish-drums.ily"

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
		\include "src/kas-abarh/theme_a.ily"

		\mark \default
		\include "src/kas-abarh/theme_b.ily"
	}
}