\version "2.23.5"

\new DrumStaff {
	\set DrumStaff.vocalName = #"Darbouka"
	\set DrumStaff.shortVocalName = #"Darbouka"
	\tempo 4 = 90

	\boxMark "A"
	\drummode {
		\time 3/4
		\twotomstyle
		\repeat volta 2 {
			\bar ".|:"
			r4
			r4
			r8 tomh8

			r4
			r4
			tomh4

			r4
			r4
			r8 tomh8

			r4
			r4
			tomh4
			\bar ":|.|:"
		}
	}

	\boxMark "B"
	\drummode {
		\time 3/4
		\twotomstyle
		\repeat volta 2 {
			\bar ":|.|:"
			r4
			r8 tomh8
			tomh4

			r4
			r8 tomh8
			tomh4

			r4
			r8 tomh8
			tomh4

			r4
			r8 tomh8
			tomh4
			\bar ":|."
			\break
		}
	}
}
