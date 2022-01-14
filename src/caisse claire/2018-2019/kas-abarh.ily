% LilypondScores
\version "2.23.5"

\include "src/caisse claire/core.ily"

\header {
	title = "Kas Abarh"
	instrument = "PARTITION POUR CAISSES CLAIRES"
	composer = "Bodadeg Ar Sonerion"
}


\new DrumStaff {
	\drummode {
		\boxMark "A"
		\time 2/4
		\include "kas-abarh/theme_a.ily"
	}
}

\new DrumStaff {
	\drummode {
		\boxMark "B"
		\include "kas-abarh/theme_b.ily"
	}
}