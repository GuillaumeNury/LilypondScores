% LilypondScores:percus
\version "2.18.2"

\include "src/percussions/core.ily"

\header {
	title = "Y'a un navire dans le port de Brest" 
	subtitle = "Bagad Orvez | Version défilé 2020"
	instrument = "Tom - Darbouka - Tambourin"
	composer = "Collectif enseignant Sonerion / C. Declercq"
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
			\include "tambourin.ily"
			\include "darbouka.ily"
			\include "tom.ily"			
			\include "basse.ily"
		>>
	}
}

\score {
	\midi { }

	\unfoldRepeats \new StaffGroup {
		\tempo 4 = 90

		<<
			\include "tambourin.ily"
			\include "darbouka.ily"
			\include "tom.ily"			
			\include "basse.ily"
		>>
	}
}
