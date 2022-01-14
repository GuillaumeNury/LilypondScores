% LilypondScores:archived
\version "2.23.5"

\include "src/caisse claire/core.ily"

\header {
	title = "Suite Tours (4 novembre 2018)"
	instrument = "PARTITION POUR CAISSES CLAIRES"
	composer = "Aurélien Étienne / Guillaume Nury"
}

\new DrumStaff {
	\drummode {
		\time 2/4
		\boxMark "Percu"
		\repeat unfold 8 {
			\repeat unfold 2 {
				\include "core/rythme_percu.ily"
			}
			\break
		}
		\boxMark "A"
		\include "tours/theme_a.ily"
		\boxMark "B"
		\include "tours/theme_b.ily"
		\boxMark "Pause"
		r2 r2 r2 r2
		\break
		\boxMark "C"
		\include "tours/theme_c.ily"
		\boxMark "B"
		\include "tours/theme_b.ily"
		\boxMark "Percu"
		\repeat unfold 4 {
			\repeat unfold 2 {
				\include "core/rythme_percu.ily"
			}
			\break
		}
		\boxMark "Fût"
		\include "core/intro_fut.ily"
		\boxMark "Chant"
		r2 r2 r2 r2
		\break
		\boxMark "Fût"
		\include "core/intro_fut.ily"
		\boxMark "A"
		\include "tours/theme_a.ily"
		\boxMark "B"
		\include "tours/theme_b.ily"
	}
}