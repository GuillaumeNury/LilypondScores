\version "2.18.2"

\new DrumStaff {
	\set DrumStaff.vocalName = #"Bongos"
	\set DrumStaff.shortVocalName = #"Bongos"
	\tempo 4 = 90

	\mark "A - INTRODUCTION"
	\drummode {
		\time 4/4
		\twotomstyle
		\repeat volta 4 {
			\bar ".|:"
			r1%{^\markup \bold "solo bidon"%}
			r1
			\bar ":|.|:"
			\break

			r1%{^\markup \bold "x8"%}
			r1
			\break
		}
	}

	\mark "B - BAGAD"
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

	\mark "C - COUPLE"
	\drummode {
		\time 4/4
		\twotomstyle
		\repeat volta 4 {
			\bar ":|.|:"
			r1%{^\markup \bold "x4"%} 
			r1
			\break
		}
	}

	\mark "D - BAGAD"
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

	\mark "E - TRANSITION"
	\drummode {
		\time 4/4
		\twotomstyle
		\repeat volta 4 {
			\bar ":|.|:"
			r1%{^\markup \bold "x4"%}
			r1
			\bar ":|.|:"
			\break

			r1
			r1
			\break
		}
	}

	\mark "F - CHANT"
	\drummode {
		\time 4/4
		\twotomstyle
		\repeat volta 4 {
			\bar ":|.|:"
			r1%{^\markup \bold "x19"%} 
			\break
		}
	}

	\mark "G - TRANSITION"
	\drummode {
		\time 4/4
		\twotomstyle
		\repeat volta 4 {
			\bar ":|.|:"
			r1
			r1
			\break
		}
	}

	\mark "H - BAGAD"
	\drummode {
		\time 4/4
		\twotomstyle
		\repeat volta 4 {
			\bar ":|.|:"
			r1
			r1
			\bar ":|."
			\break
			
			r1
			r1
			\break
			
			\bar ".|:"
			r1
			r1
			\bar ":|."
			\break
		}
	}
}

