\version "2.18.2"

\new DrumStaff {
	\set DrumStaff.vocalName = #"Tambourin"
	\set DrumStaff.shortVocalName = #"Tambourin"
	\tempo 4 = 90

	\boxMark "A"
	\drummode {
		\time 3/4
		\onetomstyle
		\repeat volta 2 {
			\bar ".|:"
			tamb4
			tamb8 tamb8
			r4

			tamb8 tamb8
			r4
			r4

			tamb4
			tamb8 tamb8
			r4

			tamb8 tamb8
			r4
			r4
			\bar ":|.|:"
		}
	}

	\boxMark "B"
	\drummode {
		\time 3/4
		\twotomstyle
		\repeat volta 2 {
			\bar ":|.|:"
			tamb4
			r8 tamb8
			tamb4

			tamb4
			r8 tamb8
			tamb4

			tamb4
			r8 tamb8
			tamb4

			tamb4
			r8 tamb8
			tamb4
			\bar ":|."
			\break
		}
	}
}
