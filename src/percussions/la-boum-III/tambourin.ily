\version "2.23.5"

\new DrumStaff {
	\set DrumStaff.vocalName = #"Tambourin"
	\set DrumStaff.shortVocalName = #"Tambourin"
	\tempo 4 = 88

	\boxMark "A - Ritournelle en boucle"
	\drummode {
		\time 4/4
		\tambourinestyle
		\repeat volta 5 {
			\repeat volta 3 {
				\bar ".|:"
				\annotation "3x"
				r4 \startTextSpan
				tamb4 \stopTextSpan
				r4
				tamb4

				r4
				tamb4
				r4
				tamb4
				\bar ":|."
				\break
			}
			r4
			tamb4
			r4
			tamb4

			tamb8. tamb8. r8
			tamb8. tamb8. r8
			\bar "|."
			\break
		}
	}

	\boxMark "B - Final"
	\drummode {
		\time 4/4
		\tambourinestyle
		\repeat volta 3 {
			\bar ".|:"
			\annotation "3x"
			r4 \startTextSpan
			tamb4 \stopTextSpan
			r4
			tamb4

			r4
			tamb4
			r4
			tamb4
			\bar ":|."
			\break
		}
		r4
		tamb4
		r4
		tamb4

		tamb8. tamb8. r8
		tamb8. tamb8. r8
		\bar "||"
		\time 5/4
		tamb8. tamb8. r8
		tamb8. tamb8. r8
		tamb4
		\bar "|."
		\break
	}
}