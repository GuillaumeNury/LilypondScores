\version "2.23.5"

\new DrumStaff {
	\set DrumStaff.vocalName = #"Jam blocks"
	\set DrumStaff.shortVocalName = #"Jam blocks"
	\tempo 4 = 90

	\drummode{
		\boxMark "A - INTRODUCTION"
		\time 4/4
		\woodblockstyle
		\repeat volta 2 {
			\bar ".|:"
			\annotation "Solo bidon"
			R1 \startTextSpan
			R1 \stopTextSpan
			\bar ":|.|:"
			\break
		}

		\repeat volta 8 {
			\hiddenTime 4/4
			\annotation "8x"
			R1 \startTextSpan
			R1 \stopTextSpan
			\break
		}

		\boxMark "B - BAGAD"
		\time 4/4
		\woodblockstyle
		\repeat volta 8 {
			\bar ":|.|:"
			\annotation "8x"
			wbl4 \startTextSpan
			r4 \stopTextSpan
			r8 wbh8
			wbh8 wbl8

			wbl4
			r4
			r8 wbh16 wbh16
			wbh4
			\bar ".|:"
			\break
		}

		\boxMark "C - COUPLE"
		\time 4/4
		\woodblockstyle

		R1*8
		\break

		\boxMark "D - BAGAD"
		\time 4/4
		\woodblockstyle
		\repeat volta 8 {
			\bar ".|:"
			\annotation "8x"
			wbl4 \startTextSpan
			r4 \stopTextSpan
			r8 wbh8
			wbh8 wbl8

			wbl4
			r4
			r8 wbh16 wbh16
			wbh4
			\break
		}

		\boxMark "E - TRANSITION"
		\time 4/4
		\woodblockstyle
		\repeat volta 4 {
			\bar ":|.|:"

			\annotation "4x"
			R1 \startTextSpan
			R1 \stopTextSpan
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

		\boxMark "F - CHANT"
		\time 4/4
		\woodblockstyle
		R1*19
		\break

		\boxMark "G - TRANSITION"
		\time 4/4
		\woodblockstyle
		\repeat volta 2 {
			\bar ".|:"
			R1
			R1
			\break
		}

		\boxMark "H - BAGAD (thème joué 2 fois)"
		\time 4/4
		\woodblockstyle
		\repeat volta 2 {
			\repeat volta 2 {
				\bar ":|.|:"
				wbl4
				r4
				r8 wbh8
				wbh8 wbl8

				wbl4
				r4
				r8 wbh16 wbh16
				wbh4
				\bar ":|."
				\break
			}
				
			\hiddenTime 4/4
			R1

			\break
				
			\repeat volta 2 {
				\bar ".|:"
				wbl4
				r4
				r8 wbh8
				wbh8 wbl8

				wbl4
				r4
				r8 wbh16 wbh16
				wbh4
				\bar ":|."
				\break
			}
		}
	}
}