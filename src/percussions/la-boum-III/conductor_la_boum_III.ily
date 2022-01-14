% LilypondScores:percus
\version "2.23.5"

\include "src/percussions/core.ily"

\header {
	title = "La Boum III" 
	instrument = "Tambourin - Darbouka - Tom - Basse"
	composer = "Bagad Brieg - Lorient 1999"
	tagline = "Marche issue du répertoire du Bagad Brieg (Championat national des Bagadoù, Lorient 1999"
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
		\tempo 4 = 88

		<<
			\include "tambourin.ily"
			\include "darbouka.ily"
			\include "tom.ily"			
			\include "basse.ily"
		>>
	}
}
