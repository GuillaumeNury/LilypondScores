% LilypondScores:percus
\version "2.18.2"

\header {
	title = \markup { \fontsize #4 \bold "Maria Pollanton" }
	subtitle = \markup { \fontsize #1 \bold " Bagad Orvez | Version défilé 2020" }
	instrument = "Tom - Darbouka - Wood blocks"
	composer = "Guillaume Nury"
	tagline = \markup {
		\fontsize #-4 "Thèmes traditionnels et d'inspiration traditionnelle"
	}
	piece = \markup { \fontsize #1 "Tourne en boucle, avec 2 hauteurs de note (Tom, Darbouka ou Wood blocks)" }
}

\include "core.ily"

\score {		   
	\new DrumStaff {
		\tempo 4 = 104

		\drummode {
			\twotomstyle
			\time 4/4
			\repeat volta 4 {
				\bar ".|:"
					
				toml8. tomh16
				r8 toml8
				toml4
				r4
				
				toml8. tomh16
				r8 toml8
				toml4
				tomh4
			}
		}
	}
}