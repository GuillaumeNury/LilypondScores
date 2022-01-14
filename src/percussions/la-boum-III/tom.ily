\version "2.23.5"

\new DrumStaff {
	\set DrumStaff.vocalName = #"Tom"
	\set DrumStaff.shortVocalName = #"Tom"
	\tempo 4 = 88

	\boxMark "A - Ritournelle en boucle"
	\drummode {
		\time 4/4
		\twotomstyle
		\repeat volta 5 {
			\repeat volta 3 {
				\bar ".|:"
				toml8 toml8
				tomh8. toml8. toml8
				tomh8 toml8

				toml8 toml8
				tomh8 toml8
				r8 toml8
				tomh4
				\bar ":|."
				\break
			}
			toml8 toml8
			tomh8. toml8. toml8
			tomh8 toml8

			toml8. tomh8. toml8
			toml8. tomh8. toml8
			\bar "|."
			\break
		}
	}

	\boxMark "B - Final"
	\drummode {
		\time 4/4
		\twotomstyle
		\repeat volta 3 {
			\bar ".|:"
			toml8 toml8
			tomh8. toml8. toml8
			tomh8 toml8

			toml8 toml8
			tomh8 toml8
			r8 toml8
			tomh4
			\bar ":|."
			\break
		}
		toml8 toml8
		tomh8. toml8. toml8
		tomh8 toml8

		toml8. tomh8. toml8
		toml8. tomh8. toml8
		\bar "||"
		\time 5/4
		toml8. tomh8. toml8
		toml8. tomh8. toml8
		toml4
		\bar "|."
		\break
	}
}
