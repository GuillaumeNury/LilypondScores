% LilypondScores:percus
\version "2.23.5"

\header {
	title = \markup { \fontsize #4 \bold "Marches Orvez" }
	instrument = "Tom + Wood blocks"
	composer = "Guillaume Nury / Christophe Declercq"
	tagline = ##f
}

\book {
	\score {
		% WoodBlock Rouge b'
		% WoodBlock Bleu d''
		% Tom e'

		\new Staff {
			\time 2/4
			\override Staff.Clef.color = #white
			\override Staff.Clef.layer = #-1

			\repeat volta 2 {
				r4
				e'8.
				b'16
				d''8
				b'
				e'4
			}
		}

		\header {
			piece = \markup { \fontsize #3 \bold "Kadoudal" }
		}
	}

	\score {
		% WoodBlock Rouge b'
		% WoodBlock Bleu d''
		% Tom e'

		\new Staff {
			\time 4/4
			\override Staff.Clef.color = #white
			\override Staff.Clef.layer = #-1
			\mark \default

			\repeat volta 8 {
				e'8.^\markup "x8"
				e'16
				e'8
				e'8
				r8
				d''8
				\set Timing.beamExceptions = #'()
				d''8
				e'8
				e'8.
				e'16
				e'8
				e'8
				r4
				b'4
			}

			\break
			\mark \default

			e'8.
			e'16
			e'8
			e'8
			r8
			d''8
			\set Timing.beamExceptions = #'()
			d''8
			e'8
			e'8.
			e'16
			e'8
			e'8
			r4
			b'4
			\repeat volta 2 {
				e'8.
				e'16
				e'8
				e'8
				r8
				d''8
				\set Timing.beamExceptions = #'()
				d''8
				e'8
				\time 2/4
				e'4
				r4
			}

			\break
			\mark \default

			\repeat volta 2 {
				e'8.
				e'16
				e'8
				e'8
				r8
				d''8
				\set Timing.beamExceptions = #'()
				d''8
				e'8
				e'8.
				e'16
				e'8
				e'8
				r4
				b'4
				e'8.
				e'16
				e'8
				e'8
				r8
				d''8
				\set Timing.beamExceptions = #'()
				d''8
				e'8
				\time 2/4
				e'4
				r4
			}
		}

		\header {
			piece = \markup { \fontsize #3 \bold "Marche Vannetaise" }
			opus = "A B C A B C"
		}
	}

	\score {
		% WoodBlock Rouge b'
		% WoodBlock Bleu d''
		% Tom e'

		\layout {
			ragged-right = ##f
		}

		\new Staff {
			\time 2/4
			\override Staff.Clef.color = #white
			\override Staff.Clef.layer = #-1


			\mark \default
			\repeat volta 4 {
				d''4^\markup "x4"
				d''8
				e'8
				d''4
				d''8
				e'8
			}

			\mark \default
			\repeat volta 4 {
				d''4^\markup "x4"
				d''8
				e'8
				d''8
				b'8
				b'8
				e'8
			}

		}

		\header {
			piece = \markup { \fontsize #3 \bold "Evit Mont d'an iliz" }
			opus = "A B B A B B"
		}
	}
}