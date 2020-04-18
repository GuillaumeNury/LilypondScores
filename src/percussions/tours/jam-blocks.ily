\version "2.18.2"

\new DrumStaff {
	\set DrumStaff.vocalName = #"Jam blocks"
	\set DrumStaff.shortVocalName = #"Jam blocks"
	\tempo 4 = 90

	\drummode{
		\mark "A - INTRODUCTION"
		\time 4/4
		\woodblockstyle
		\repeat volta 4 {
			\bar ".|:"
			r1^\markup \bold "solo bidon"
			r1
			\bar ":|.|:"
			\break

			r1^\markup \bold "x8"
			r1
			\break
		}

		\mark "B - BAGAD"
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

		\mark "C - COUPLE"
		\time 4/4
		\woodblockstyle
		\repeat volta 4 {
			\bar ":|.|:"
			r1^\markup \bold "x4"
			r1
			\break
		}

		\mark "D - BAGAD"
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

		\mark "E - TRANSITION"
		\time 4/4
		\woodblockstyle
		\repeat volta 4 {
			\bar ":|.|:"
			r1^\markup \bold "x4"
			r1
			\bar ":|.|:"

			\break

			r1
			r1
			\break
		}

		\mark "F - CHANT"
		\time 4/4
		\woodblockstyle
		\repeat volta 4 {
			\bar ":|.|:"
			r1^\markup \bold "x19"
			\break
		}

		\mark "G - TRANSITION"
		\time 4/4
		\woodblockstyle
		\repeat volta 4 {
			\bar ":|.|:"
			r1
			r1
			\break
		}

		\mark "H - BAGAD"
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
			
			r1

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