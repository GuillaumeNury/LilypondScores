% LilypondScores:archived
\version "2.18.2"

\include "src/caisse claire/core.ily"

\header {
	title = "Suite Tours (4 novembre 2018)"
	instrument = "Caisses Claires"
	composer = "Aurélien Étienne / Guillaume Nury"
	tagline = ##f
}

\new DrumStaff {
	\drummode {
		\time 2/4
		\mark "Percu"
		\repeat unfold 8 {
			\repeat unfold 2 {
				\include "core/rythme_percu.ily"
			}
			\break
		}
		\mark "A"
		\include "tours/theme_a.ily"
		\mark "B"
		\include "tours/theme_b.ily"
		\mark "Pause"
		r2 r2 r2 r2
		\break
		\mark "C"
		\include "tours/theme_c.ily"
		\mark "B"
		\include "tours/theme_b.ily"
		\mark "Percu"
		\repeat unfold 4 {
			\repeat unfold 2 {
				\include "core/rythme_percu.ily"
			}
			\break
		}
		\mark "Fût"
		\include "core/intro_fut.ily"
		\mark "Chant"
		r2 r2 r2 r2
		\break
		\mark "Fût"
		\include "core/intro_fut.ily"
		\mark "A"
		\include "tours/theme_a.ily"
		\mark "B"
		\include "tours/theme_b.ily"
	}
}