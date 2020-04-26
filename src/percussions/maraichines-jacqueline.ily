% LilypondScores:percus
\version "2.18.2"

% http://lilypond.org/doc/v2.19/Documentation/notation/common-notation-for-percussion
\header {
	title = \markup { \fontsize #3 "Suite de Maraîchines (Jacqueline)" }
	instrument = "Wood Blocks + Bidon"
	composer = "Ronan Jego-Aquilina"
	tagline = ##f
}

\include "core.ily"

\new DrumStaff {
	\drummode {
		\woodblockstyle
		\set DrumStaff.instrumentName = #"Wood Blocks"
		\repeat volta 4 {
			\mark \markup { \box \bold "Intro percus" }
			\tempo 4. = 126
			\time 12/8
			\bar ".|:"
			wbh4.^\markup "x4"
			wbl8 wbl8 wbl8
			wbh4 wbl8
			r4.
			wbh4.
			wbl4.
			wbh8 wbl8 wbh8
			wbl4.
			\bar ":|."
			\break
		}
	}
}
\new DrumStaff {
	\drummode {
		\tambourinestyle
		\repeat volta 8 {
			\mark \markup { \box \bold "A1" }
			\time 12/8
			\bar ".|:"
			r1.^\markup "x8"
			\bar ":|."
			\break
		}
	}
}
\new DrumStaff {
	\drummode {
		\woodblockstyle
		\set DrumStaff.instrumentName = #"Wood Blocks"
		\repeat volta 4 {
			\mark \markup { \box \bold "A2" }
			\time 12/8
			\bar ".|:"
			wbh4.^\markup "x4"
			wbl8 wbl8 wbl8
			wbh4 wbl8
			r4.
			wbh4.
			wbl4.
			wbh8 wbl8 wbh8
			wbl4.
			\break
		}
	}
}
\new DrumStaff {
	\drummode {
		\tambourinestyle
		\set DrumStaff.instrumentName = #"Bidon"
		\repeat volta 8 {
			\mark \markup { \box \bold "B1" }
			\time 4/4
			\tempo 4 = 126
			\bar ".|:"
			tamb4^\markup "x8"
			tamb4
			tamb8 tamb8
			r8 tamb8
			r8 tamb8
			r8 tamb8
			r8 tamb8
			tamb8 r8
			\bar ":|."
			\break
		}
	}
}
\new DrumStaff {
	\drummode {
		\tambourinestyle
		\set DrumStaff.instrumentName = #" "
		\repeat volta 8 {
			\mark \markup { \box \bold "B2" }
			\time 4/4
			\bar ".|:"
			r1^\markup "x8"
			\bar ":|."
			\break
		}
	}
}
\new DrumStaff {
	\drummode {
		\tambourinestyle
		\repeat volta 8 {
			\mark \markup { \box \bold "C" }
			\time 4/4
			\bar ".|:"
			r1^\markup "x8"
			\break
		}
	}
}
\new DrumStaff {
	\drummode {
		\woodblockstyle
		\set DrumStaff.instrumentName = #"Wood Blocks"
		\mark \markup { \box \bold "D1" }
		\repeat volta 1 {
			\time 4/4
			\bar ".|"
			r4 r4 r4 r4
			r4 r4 r4 r4
			r4 r4 r4 r4
			r4 r4 r4 r4
			\bar "|."
		}
	}
}
\new DrumStaff {
	\drummode {
		\woodblockstyle
		\set DrumStaff.instrumentName = #"Wood Blocks"
		\repeat volta 1 {
			\bar ".|"
			wbl8 wbh8
			wbl8 wbh16 wbh16
			wbh4
			r4

			wbl8 wbh8
			wbl8 wbh16 wbh16
			wbh4
			r4

			wbl8 wbh8
			wbl8 wbh16 wbh16
			wbh4
			r4

			wbl8 wbh8
			wbl8 wbh16 wbh16
			wbh4
			r4
			\bar "|."
		}
	}
}
\new DrumStaff {
	\drummode {
		\woodblockstyle
		\set DrumStaff.instrumentName = #"Wood Blocks"
		\mark \markup { \box \bold "D2" }
		\repeat volta 1 {
			\time 4/4
			\bar ".|"
			r4 r4 r4 r4
			r4 r4 r4 r4
			r4 r4 r4 r4
			r4 r4 r4 r4
			\bar "|."
		}
	}
}
\new DrumStaff {
	\drummode {
		\woodblockstyle
		\set DrumStaff.instrumentName = #"Wood Blocks"
		\repeat volta 1 {
			\bar ".|"
			wbl8 wbh8
			wbl8 wbh16 wbh16
			wbh4
			r4

			wbl8 wbh8
			wbl8 wbh16 wbh16
			wbh4
			r4

			wbl8 wbh8
			wbl8 wbh16 wbh16
			wbh4
			r4

			wbl8 wbh8
			wbl8 wbh16 wbh16
			wbh4
			r4
			\bar "|."
		}
	}
}
\new DrumStaff {
	\drummode {
		\woodblockstyle
		\set DrumStaff.instrumentName = #"Wood Blocks"
		\repeat volta 1 {
			\bar ".|"
			wbl8 wbh8
			wbl8 wbh16 wbh16
			wbh8 wbl8
			wbh4
			\bar "|."
		}
	}
}