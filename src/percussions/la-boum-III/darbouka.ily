\version "2.18.2"

\new DrumStaff {
	\set DrumStaff.vocalName = #"Darbouka"
	\set DrumStaff.shortVocalName = #"Darbouka"
	\tempo 4 = 88

	\boxMark "A - Ritournelle en boucle"
	\drummode {
		\time 4/4
		\darboukastyle
		\repeat volta 5 {
			\repeat volta 3 {
				\bar ".|:"
				cgl4
				cgh8 cgl8 
				r8 cgl8
				cgh4

				cgl4
				cgh8 cgl8 
				r8 cgl8
				cgh4
				\bar ":|."
				\break
			}
			cgl4
			cgh8 cgl8 
			r8 cgl8
			cgh4

			cgl8. cgh8. cgl8
			cgl8. cgh8. r8
			\bar "|."
			\break
		}
	}

	\boxMark "B - Final"
	\drummode {
		\time 4/4
		\darboukastyle
		\repeat volta 3 {
			\bar ".|:"
			cgl4
			cgh8 cgl8 
			r8 cgl8
			cgh4

			cgl4
			cgh8 cgl8 
			r8 cgl8
			cgh4
			\bar ":|."
			\break
		}
		cgl4
		cgh8 cgl8 
		r8 cgl8
		cgh4

		cgl8. cgh8. cgl8
		cgl8. cgh8. r8
		\bar "||"
		\time 5/4
		cgl8. cgh8. cgl8
		cgl8. cgh8. cgl8
		cgl4
		\bar "|."
		\break
	}
}
