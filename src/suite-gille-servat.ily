% LilypondScores
\version "2.18.2"

\include "../lib/scottish-drums.ily"

\header {
	title = "Suite Gille Servat"
	instrument = "Caisses Claires"
	composer = "Aurélien Étienne"
	tagline = ##f
}

\book {
	\score {
		\new DrumStaff {
			\drummode {
				\time 2/4
				% Partie rythmique
				\repeat unfold 3 {
					\include "src/core/rythme_percu.ily"
				}
				\include "src/core/intro_fut.ily"
			}
		}
		\header {
			piece = \markup { \fontsize #2 \bold "Intro Tours" }
		}
	}
	\score {
		\new DrumStaff {
			\drummode {
				\time 2/4
				\repeat unfold 2 {
					\include "src/tours/theme_a.ily"
					\include "src/tours/theme_b.ily"
				}
				\include "src/core/intro_fut.ily"
				\include "src/tours/theme_a.ily"
				\include "src/tours/theme_b.ily"
			}
		}
		\header {
			piece = \markup { \fontsize #2 \bold "Tours" }
		}
	}
}