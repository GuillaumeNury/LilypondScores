% LilypondScores
\version "2.18.2"

\include "src/caisse claire/core.ily"

\header {
	title = "Evit Mont d’an Iliz"
	instrument = "PARTITION POUR CAISSES CLAIRES"
	composer = "Aurélien Étienne"
	tagline = ##f
}

\new DrumStaff {
	\drummode {
		\time 4/4
		\boxMark "A"
		\include "evit-mont-d-an-iliz/theme_a.ily"
	}
}
\new DrumStaff {
	\drummode {
		\boxMark "B"
		\include "evit-mont-d-an-iliz/theme_b.ily"
	}
}

\new DrumStaff {
	\drummode {
		\boxMark "Fin"
		\include "evit-mont-d-an-iliz/fin.ily"
	}
}