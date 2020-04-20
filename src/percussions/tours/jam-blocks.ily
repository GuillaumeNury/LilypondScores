\version "2.18.2"

\new DrumStaff {
	\set DrumStaff.vocalName = #"Jam blocks"
	\set DrumStaff.shortVocalName = #"Jam blocks"
	\tempo 4 = 90

	\drummode{
		\boxMark "A - INTRODUCTION"
		\time 4/4
		\woodblockstyle
		\repeat volta 4 {
			\bar ".|:"
			R1^\markup \bold "solo bidon"
			R1
			\bar ":|.|:"
			\break

			\hiddenTime 4/4
			R1^\markup \bold "x8"
			R1
			\break
		}

		\boxMark "B - BAGAD"
		\time 4/4
		\woodblockstyle
		\repeat volta 4 {
			\bar ":|.|:"
			cb4^\markup \bold "x8"
			r4
			r8 rb8
			rb8 cb8

			cb4
			r4
			r8 rb16 rb16
			rb4
			\break
		}

		\boxMark "C - COUPLE"
		\time 4/4
		\woodblockstyle
		\repeat volta 4 {
			\bar ":|.|:"
			R1^\markup \bold "x4"
			R1
			\break
		}

		\boxMark "D - BAGAD"
		\time 4/4
		\woodblockstyle
		\repeat volta 4 {
			\bar ":|.|:"
			cb4^\markup \bold "x4"
			r4
			r8 rb8
			rb8 cb8

			cb4
			r4
			r8 rb16 rb16
			rb4
			\break
		}

		\boxMark "E - TRANSITION"
		\time 4/4
		\woodblockstyle
		\repeat volta 4 {
			\bar ":|.|:"
			R1^\markup \bold "x4"
			R1
			\bar ":|.|:"

			\break

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
		\repeat volta 4 {
			\bar ".|:"
			R1
			R1
			\break
		}

		\boxMark "H - BAGAD"
		\time 4/4
		\woodblockstyle
		\repeat volta 4 {
			\bar ":|.|:"
			cb4
			r4
			r8 rb8
			rb8 cb8

			cb4
			r4
			r8 rb16 rb16
			rb4
			\bar ":|."
			\break
			
			\hiddenTime 4/4
			R1

			cb4
			r4
			r8 rb16 rb16
			rb4
			\break
			
			\bar ".|:"
			cb4
			r4
			r8 rb8
			rb8 cb8

			cb4
			r4
			r8 rb16 rb16
			rb4
			\bar ":|."
			\break
		}
	}
}