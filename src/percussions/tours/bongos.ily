\version "2.18.2"

\new DrumStaff {
	\set DrumStaff.vocalName = #"Bongos"
	\set DrumStaff.shortVocalName = #"Bongos"
	\tempo 4 = 90

	\boxMark "A - INTRODUCTION"
	\drummode {
		\time 4/4
		\twotomstyle
		\repeat volta 4 {
			\bar ".|:"
			R1%{^\markup \bold "solo bidon"%}
			R1
			\bar ":|.|:"
			\break

			\hiddenTime 4/4

			R1%{^\markup \bold "x8"%}
			R1
			\break
		}
	}

	\boxMark "B - BAGAD"
	\drummode {
		\time 4/4
		\twotomstyle
		\repeat volta 4 {
			\bar ":|.|:"
			toml8%{^\markup \bold "x8"%} toml16 toml16
			toml16 toml16 tomh8
			r8 toml16 toml16
			tomh8 toml8

			toml8 toml16 toml16
			toml16 toml16 tomh8
			r8 toml16 toml16
			tomh4
			\break
		}
	}

	\boxMark "C - COUPLE"
	\drummode {
		\time 4/4
		\twotomstyle
		\repeat volta 4 {
			\bar ":|.|:"
			R1%{^\markup \bold "x4"%} 
			R1
			\break
		}
	}

	\boxMark "D - BAGAD"
	\drummode {
		\time 4/4
		\twotomstyle
		\repeat volta 4 {
			\bar ":|.|:"
			toml8%{^\markup \bold "x4"%} toml16 toml16
			toml16 toml16 tomh8
			r8 toml16 toml16
			tomh8 toml8

			toml8 toml16 toml16
			toml16 toml16 tomh8
			r8 toml16 toml16
			tomh4
			\break
		}
	}

	\boxMark "E - TRANSITION"
	\drummode {
		\time 4/4
		\twotomstyle
		\repeat volta 4 {
			\bar ":|.|:"
			R1%{^\markup \bold "x4"%}
			R1
			\bar ":|."
			\break

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
		\twotomstyle
		R1*19
		\break
	}

	\boxMark "G - TRANSITION"
	\drummode {
		\time 4/4
		\twotomstyle
		\repeat volta 4 {
			\bar ".|:"
			R1
			R1
			\break
		}
	}

	\boxMark "H - BAGAD"
	\drummode {
		\time 4/4
		\twotomstyle
		\repeat volta 4 {
			\bar ":|.|:"
			R1
			R1
			\bar ":|."
			\break
			
			\hiddenTime 4/4
			R1
			R1
			\break
			
			\bar ".|:"
			R1
			R1
			\bar ":|."
			\break
		}
	}
}

