\version "2.18.2"

\new DrumStaff {
	\set DrumStaff.vocalName = #"Bidon"
	\set DrumStaff.shortVocalName = #"Bidon"
	\tempo 4 = 90

	\mark "A - INTRODUCTION"
	\drummode {
		\time 4/4
		\tambourinestyle
		\repeat volta 4 {
			\bar ".|:"
			tamb8.%{^\markup \bold "solo bidon"%} tamb16
			r8 tamb8
			r8 tamb8
			tamb4

			tamb8. tamb16
			r8 tamb8
			r8 tamb8
			tamb4
			\bar ":|.|:"

			\break

			tamb8.%{^\markup \bold "8"%} tamb16
			r8 tamb8
			r8 tamb8
			tamb4

			tamb8. tamb16
			r8 tamb8
			r8 tamb8
			tamb4
			\break
		}
	}

	\mark "B - BAGAD"
	\drummode {
		\time 4/4
		\tambourinestyle
		\repeat volta 4 {
			\bar ":|.|:"
			r1%{^\markup \bold "x8"%}
			r1
			\break
		}
	}

	\mark "C - COUPLE"
	\drummode {
		\time 4/4
		\tambourinestyle
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
		\tambourinestyle
		\repeat volta 4 {
			\bar ":|.|:"
			r1%{^\markup \bold "x4"%}
			r1
			\break
		}
	}

	\mark "E - TRANSITION"
	\drummode {
		\time 4/4
		\tambourinestyle
		\repeat volta 4 {
			\bar ":|.|:"
			tamb8.%{^\markup \bold "x4"%} tamb16
			r8 tamb8
			r8 tamb8
			tamb4

			tamb8. tamb16
			r8 tamb8
			r8 tamb8
			tamb4
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
		\tambourinestyle
		\repeat volta 4 {
			\bar ":|.|:"
			r1%{^\markup \bold "x19"%}
			\break
		}
	}

	\mark "G - TRANSITION"
	\drummode {
		\time 4/4
		\tambourinestyle
		\repeat volta 4 {
			\bar ":|.|:"
			tamb8. tamb16
			r8 tamb8
			r8 tamb8
			tamb4
			
			tamb8. tamb16
			r8 tamb8
			r8 tamb8
			tamb4
			\break
		}
	}

	\mark "H - BAGAD"
	\drummode {
		\time 4/4
		\tambourinestyle
		\repeat volta 4 {
			\bar ":|.|:"
			tamb8. tamb16
			r8 tamb8
			r8 tamb8
			tamb4

			tamb8. tamb16
			r8 tamb8
			r8 tamb8
			tamb4
			\bar ":|."
			\break
			
			r1

			tamb8. tamb16
			r8 tamb8
			r8 tamb8
			tamb4
			\break
			
			\bar ".|:"
			tamb8. tamb16
			r8 tamb8
			r8 tamb8
			tamb4

			tamb8. tamb16
			r8 tamb8
			r8 tamb8
			tamb4
			\bar ":|."
			\break
		}
	}
}