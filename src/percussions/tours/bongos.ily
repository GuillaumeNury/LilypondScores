\version "2.23.5"

\new DrumStaff {
	\set DrumStaff.vocalName = #"Bongos"
	\set DrumStaff.shortVocalName = #"Bongos"
	\tempo 4 = 90

	\boxMark "A - INTRODUCTION"
	\drummode {
		\time 4/4
		\bongostyle
		\repeat volta 2 {
			\bar ".|:"
			R1%{^\markup \bold "solo bidon"%}
			R1
			\bar ":|.|:"
			\break

			}

		\break
		\hiddenTime 4/4

		\repeat volta 8 {
			R1%{^\markup \bold "x8"%}
			R1
			\break
		}
	}

	\boxMark "B - BAGAD"
	\drummode {
		\time 4/4
		\bongostyle
		\repeat volta 8 {
			\bar ":|.|:"
			bol8%{^\markup \bold "x8"%} bol16 bol16
			bol16 bol16 boh8
			r8 bol16 bol16
			boh8 bol8

			bol8 bol16 bol16
			bol16 bol16 boh8
			r8 bol16 bol16
			boh4
			\break
		}
		\bar ":|."
	}

	\boxMark "C - COUPLE"
	\drummode {
		\time 4/4
		\bongostyle
		R1*8
		\break
	}

	\boxMark "D - BAGAD"
	\drummode {
		\time 4/4
		\bongostyle
		\repeat volta 8 {
			\bar ".|:"
			bol8%{^\markup \bold "x4"%} bol16 bol16
			bol16 bol16 boh8
			r8 bol16 bol16
			boh8 bol8

			bol8 bol16 bol16
			bol16 bol16 boh8
			r8 bol16 bol16
			boh4
			\break
		}
	}

	\boxMark "E - TRANSITION"
	\drummode {
		\time 4/4
		\bongostyle
		\repeat volta 4 {
			\bar ":|.|:"
			R1%{^\markup \bold "x4"%}
			R1
			\bar ":|.|:"
		}
		\break

		\repeat volta 2 {
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
		\bongostyle
		R1*19
		\break
	}

	\boxMark "G - TRANSITION"
	\drummode {
		\time 4/4
		\bongostyle
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
		\bongostyle
		\repeat volta 2 {
			\repeat volta 2 {
				\bar ":|.|:"
				R1
				R1
				\bar ":|."
			}
			\break
			
			\hiddenTime 4/4
			R1
			\break
				
			\repeat volta 2 {
				\bar ".|:"
				R1
				R1
				\bar ":|."
				\break
			}
		}
	}
}

