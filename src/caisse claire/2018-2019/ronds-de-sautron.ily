% LilypondScores
\version "2.18.2"

\include "src/caisse claire/core.ily"

\header {
	title = "Ronds de Sautron"
	instrument = "PARTITION POUR CAISSES CLAIRES"
	composer = "Aurélien Étienne"
}


\new DrumStaff {
	\drummode {
		\boxMark "A"
		\include "ronds-de-sautron/theme_a.ily"
	}
}

\new DrumStaff {
	\drummode {
		\boxMark "B"
		\include "ronds-de-sautron/theme_b.ily"
	}
}