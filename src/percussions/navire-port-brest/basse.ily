\version "2.18.2"

\new DrumStaff {
	\set DrumStaff.vocalName = #"Basse"
	\set DrumStaff.shortVocalName = #"Basse"
	\tempo 4 = 90

	\boxMark "A"
	\drummode {
		\time 3/4
		\bassestyle
		\repeat volta 2 {
			\bar ".|:"
			bd4
			r4
			r4

			bd4
			r4
			bd4

			bd4
			r4
			r4

			bd4
			r4
			bd4
			\bar ":|.|:"
		}
	}

	\boxMark "B"
	\drummode {
		\time 3/4
		\bassestyle
		\repeat volta 2 {
			\bar ":|.|:"
			bd4
			r4
			r4

			bd4
			r4
			r4

			bd4
			r4
			r4

			bd4
			r4
			r4
			\bar ":|."
			\break
		}
	}
}
