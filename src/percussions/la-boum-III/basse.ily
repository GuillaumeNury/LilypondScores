\version "2.23.5"

\new DrumStaff {
	\set DrumStaff.vocalName = #"Basse"
	\set DrumStaff.shortVocalName = #"Basse"
	\tempo 4 = 88

	\boxMark "A - Ritournelle en boucle"
	\drummode {
		\time 4/4
		\bassestyle
		\repeat volta 5 {
			\repeat volta 3 {
				\bar ".|:"
				bd4
				bd4
				bd8 bd8
				r4

				bd4.
				bd4.
				bd4
				\bar ":|."
				\break
			}
			bd4
			bd4
			bd8 bd8
			r4

			bd4.
			bd4.
			bd4
			\bar "|."
			\break
		}
	}

	\boxMark "B - Final"
	\drummode {
		\time 4/4
		\bassestyle
		\repeat volta 3 {
			\bar ".|:"
			bd4
			bd4
			bd8 bd8
			r4

			bd4.
			bd4.
			bd4
			\bar ":|."
			\break
		}
		bd4
		bd4
		bd8 bd8
		r4

		bd4.
		bd4.
		bd4
		\bar "||"
		\time 5/4
		bd4.
		bd4.
		bd4
		bd4
		\bar "|."
		\break
	}
}