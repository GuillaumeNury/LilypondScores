\version "2.23.5"

\new DrumStaff {
	\set DrumStaff.vocalName = #"Tom"
	\set DrumStaff.shortVocalName = #"Tom"
	\tempo 4 = 90

	\boxMark "A - INTRODUCTION"
	\drummode {
		\time 4/4
		\onetomstyle
		\repeat volta 2 {
			\bar ".|:"
			R1%{^\markup \bold "solo bidon"%}
			R1
			\bar ":|.|:"
		}

		\repeat volta 8 {
			\break
			\hiddenTime 4/4
			
			R1%{%{^\markup \bold "x8"%}
			R1
			\break
		}
	}

	\boxMark "B - BAGAD"
	\drummode {
		\time 4/4
		\onetomstyle
		\repeat volta 8 {
			\bar ":|.|:"
			toml8.%{^\markup \bold "x8"%} toml16
			r8 toml8
			r8 toml8
			toml4
			
			toml8. toml16
			r8 toml8
			r8 toml8
			toml4
			\bar ":|."
			\break
		}
	}

	\boxMark "C - COUPLE"
	\drummode {
		\time 4/4
		\onetomstyle
		R1*8
		\break
	}

	\boxMark "D - BAGAD"
	\drummode {
		\time 4/4
		\onetomstyle
		\repeat volta 8 {
			\bar ".|:"
			toml8.%{^\markup \bold "x4"%} toml16
			r8 toml8
			r8 toml8
			toml4
			
			toml8. toml16
			r8 toml8
			r8 toml8
			toml4
			\break
		}
	}

	\boxMark "E - TRANSITION"
	\drummode {
		\time 4/4
		\onetomstyle
		\repeat volta 4 {
			\bar ":|.|:"
			R1%{^\markup \bold "x4"%}
			R1
		}

		\break

		\repeat volta 2 {
			\bar ":|.|:"

			\hiddenTime 4/4
			R1
			R1
			\bar ":|."
			\break
		}
	}

	\boxMark "F - CHANT"
	\drummode {
		\time 4/4
		\onetomstyle
		R1*19
		\break
	}

	\boxMark "G - TRANSITION"
	\drummode {
		\time 4/4
		\onetomstyle
		\repeat volta 2 {
			\bar ".|:"
			R1
			R1
			\break
		}
	}

	\boxMark "H - BAGAD"
	\drummode {
		\time 4/4
		\onetomstyle
		\repeat volta 2 {
			\repeat volta 2 {
				\bar ":|.|:"
				toml8. toml16
				r8 toml8
				r8 toml8
				toml4

				toml8. toml16
				r8 toml8
				r8 toml8
				toml4
				\bar ":|."
				\break
			}

			\hiddenTime 4/4
			R1
			\break

			\repeat volta 2 {
				\bar ".|:"
				toml8. toml16
				r8 toml8
				r8 toml8
				toml4

				toml8. toml16
				r8 toml8
				r8 toml8
				toml4
				\bar ":|."
				\break
			}
		}
	}
}
