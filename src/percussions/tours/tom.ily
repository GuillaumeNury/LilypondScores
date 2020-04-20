\version "2.18.2"

\new DrumStaff {
	\set DrumStaff.vocalName = #"Tom"
	\set DrumStaff.shortVocalName = #"Tom"
	\tempo 4 = 90

	\boxMark "A - INTRODUCTION"
	\drummode {
		\time 4/4
		\tambourinestyle
		\repeat volta 4 {
			\bar ".|:"
			R1%{^\markup \bold "solo bidon"%}
			R1
			\bar ":|.|:"
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
		\tambourinestyle
		\repeat volta 4 {
			\bar ":|.|:"
			tamb8.%{^\markup \bold "x8"%} tamb16
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

	\boxMark "C - COUPLE"
	\drummode {
		\time 4/4
		\tambourinestyle
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
			\break
		}
	}

	\boxMark "E - TRANSITION"
	\drummode {
		\time 4/4
		\tambourinestyle
		\repeat volta 4 {
			\bar ":|.|:"
			R1%{^\markup \bold "x4"%}
			R1
			\bar ":|.|:"
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
		\tambourinestyle
		R1*19
		\break
	}

	\boxMark "G - TRANSITION"
	\drummode {
		\time 4/4
		\tambourinestyle
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

			\hiddenTime 4/4
			R1

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
