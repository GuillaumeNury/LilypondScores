% LilypondScores:percus
\version "2.18.2"

\header {
	title = \markup { \fontsize #4 \bold "Tours d'Orvault" }
	subtitle = \markup { \fontsize #1 \bold " Bagad Orvez | Version concerts 2020" }
	instrument = "Jam blocks - Bongos - Tom - Bidon"
	composer = "R. Jego-Aquilina / G. Nury"
	tagline = \markup {
		\fontsize #-4 "Thèmes traditionnels et d'inspiration traditionnelle"
	}
}

\include "src/percussions/core.ily"

\layout {
	indent = 18
	short-indent = 18

	\override DrumStaff.InstrumentName.self-alignment-X = #RIGHT
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