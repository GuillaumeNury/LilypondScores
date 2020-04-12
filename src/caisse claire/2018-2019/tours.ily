% LilypondScores
\version "2.18.2"

\include "src/caisse claire/core.ily"

\header {
	title = "Tours"
	instrument = "Caisses Claires: A B C B C B"
	composer = "Aurélien Étienne"
}

\new DrumStaff {
	\drummode {
		\time 2/4
		\boxMark "A"
		\include "tours/theme_a.ily"
	}
}

\new DrumStaff {
	\drummode {
		\boxMark "B"
		\include "tours/theme_b.ily"
	}
}

\new DrumStaff {
	\drummode {
		\boxMark "C"
		\include "tours/theme_c.ily"
	}
}