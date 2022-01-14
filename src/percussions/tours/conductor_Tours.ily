% LilypondScores:percus
\version "2.23.5"

\include "src/percussions/core.ily"

\header {
	title = "Tours d'Orvault" 
	subtitle = "Bagad Orvez | Version concerts 2020"
	instrument = "Jam blocks - Bongos - Tom - Bidon"
	composer = "R. Jego-Aquilina / G. Nury"
	tagline = "Thèmes traditionnels et d'inspiration traditionnelle"
}

\layout {
	indent = 18
	short-indent = 18

	\context {
		\Score
		proportionalNotationDuration = #(ly:make-moment 1/10)
	}
}

\score {
	\new StaffGroup {
		<<
			\include "jam-blocks.ily"
			\include "bongos.ily"
			\include "tom.ily"
			\include "bidon.ily"
			% \include "basse.ily"
		>>
	}
}

\score {
	\midi { }

	\unfoldRepeats \new StaffGroup {
		\tempo 4 = 90

		<<
			\include "jam-blocks.ily"
			\include "bongos.ily"
			\include "tom.ily"
			\include "bidon.ily"
			% \include "basse.ily"
		>>
	}
}
