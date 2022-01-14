\version "2.23.5"

\new DrumStaff {
	\set DrumStaff.vocalName = #"Tom"
	\set DrumStaff.shortVocalName = #"Tom"
	\tempo 4 = 90

	\boxMark "A"
	\drummode {
		\time 3/4
		\twotomstyle
		\repeat volta 2 {
			\bar ".|:"
			toml4
			r8 toml8
			r4

			toml8 toml8
			r4
			r4

			toml4
			r8 toml8
			r4

			toml8 toml8
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
			toml4
			r4
			r8 toml8

			toml4
			r4
			r8 toml8

			toml4
			r4
			r8 toml8

			toml4
			r4
			r8 toml8
			\bar ":|."
			\break
		}
	}
}
