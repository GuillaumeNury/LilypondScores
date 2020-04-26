\version "2.18.2"

\new DrumStaff {
	\set DrumStaff.vocalName = #"Bidon"
	\set DrumStaff.shortVocalName = #"Bidon"
	% \tempo 4 = 90

	\boxMark "A - INTRODUCTION"
	\drummode {
		\time 4/4
		\bidonstyle
		\repeat volta 2 {
			\bar ".|:"
			timl8.%{^\markup \bold "solo bidon"%} timl16
			r8 timl8
			r8 timl8
			timl4

			timl8. timl16
			r8 timl8
			r8 timl8
			timl4
			\bar ":|.|:"
		}

		\break
		\hiddenTime 4/4

		\repeat volta 8 {
			timl8.%{^\markup \bold "8"%} timl16
			r8 timl8
			r8 timl8
			timl4

			timl8. timl16
			r8 timl8
			r8 timl8
			timl4
			\break
		}
	}

	\boxMark "B - BAGAD"
	\drummode {
		\time 4/4
		\bidonstyle
		\repeat volta 8 {
			\bar ":|.|:"
			R1%{^\markup \bold "x8"%}
			R1
			\break
		}
		\bar ":|."
	}

	\boxMark "C - COUPLE"
	\drummode {
		\time 4/4
		\bidonstyle
		R1*8
		\break
	}

	\boxMark "D - BAGAD"
	\drummode {
		\time 4/4
		\bidonstyle
		\bar ".|:"

		\repeat volta 8 {
			R1%{^\markup \bold "x4"%}
			R1
			\break
		}
	}

	\boxMark "E - TRANSITION"
	\drummode {
		\time 4/4
		\bidonstyle
		\repeat volta 4 {
			\bar ":|.|:"
			timl8.%{^\markup \bold "x4"%} timl16
			r8 timl8
			r8 timl8
			timl4

			timl8. timl16
			r8 timl8
			r8 timl8
			timl4
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
		\bidonstyle
		R1*19
		\break
	}

	\boxMark "G - TRANSITION"
	\drummode {
		\time 4/4
		\bidonstyle
		\repeat volta 2 {
			\bar ".|:"
			timl8. timl16
			r8 timl8
			r8 timl8
			timl4
			
			timl8. timl16
			r8 timl8
			r8 timl8
			timl4
			\break
		}
	}

	\boxMark "H - BAGAD"
	\drummode {
		\time 4/4
		\bidonstyle
		\repeat volta 2 {
			\repeat volta 2 {
				\bar ":|.|:"
				timl8. timl16
				r8 timl8
				r8 timl8
				timl4

				timl8. timl16
				r8 timl8
				r8 timl8
				timl4
				\bar ":|."
				\break
			}

			\hiddenTime 4/4
			R1

			\break

			\repeat volta 2 {
				\bar ".|:"
				timl8. timl16
				r8 timl8
				r8 timl8
				timl4

				timl8. timl16
				r8 timl8
				r8 timl8
				timl4
				\bar ":|."
				\break
			}
		}
	}
}