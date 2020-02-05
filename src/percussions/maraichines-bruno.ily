% LilypondScores:percus
\version "2.18.2"

% http://lilypond.org/doc/v2.19/Documentation/notation/common-notation-for-percussion

\header {
	title = \markup { \fontsize #3 "Suite de Maraîchines (Bruno)" }
	instrument = "Tom + Bidon + Cymbale"
	composer = "Ronan Jego-Aquilina"
	tagline = ##f
}

\include "core.ily"

\new DrumStaff {
	\drummode {
		\hithatstyle
		\set DrumStaff.instrumentName = #"Cymbale"
		\repeat volta 2 {
			\mark \markup { \box \bold "Intro percus" }
			\tempo 4. = 126
			\time 12/8
			\bar ".|:"
			hihat4.^\markup "x2" 
			r4.
			r4.
			r4.

			hihat4. 
			r4.
			r4.
			r4.

			hihat4. 
			r4.
			r4.
			r4.

			hihat4. 
			r4.
			r4.
			hihat4.

			\bar ":|."
			\break
		}
	}
}

\new DrumStaff {
	\drummode {
		\tambourinestyle
		\set DrumStaff.instrumentName = #"Tom"
		\repeat volta 8 {
			\mark \markup { \box \bold "A1" }
			\time 12/8
			\bar ".|:"
			tamb4.^\markup "x8" 
			r4.
			tamb4 tamb8
			r4.

			tamb4.
			r4.
			tamb8 tamb8 tamb8
			tamb4.
			\bar ":|."
			\break
		}
	}
}
\new DrumStaff {
	\drummode {
		\tambourinestyle
		\set DrumStaff.instrumentName = #"Tom"
		\repeat volta 8 {
			\mark \markup { \box \bold "A2" }
			\time 12/8
			\bar ".|:"
			tamb4.^\markup "x8" 
			r4.
			tamb4 tamb8
			r4.

			tamb4.
			r4.
			tamb8 tamb8 tamb8
			tamb4.
			\bar ":|."
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
		\set DrumStaff.instrumentName = #"Bidon"
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
		\set DrumStaff.instrumentName = #"Tom"
		\repeat volta 8 {
			\mark \markup { \box \bold "C" }
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
		\set DrumStaff.instrumentName = #"Tom"
		\repeat volta 4 {
			\mark \markup { \box \bold "D1" }
			\time 4/4
			\bar ".|:"
			r4^\markup "x4"
			r4
			r4
			r4

			tamb8 tamb8
			tamb8. tamb16
			tamb8 tamb8
			tamb4
			\bar ":|."
			\break
		}
	}
}
\new DrumStaff {
	\drummode {
		\tambourinestyle
		\set DrumStaff.instrumentName = #"Tom"
		\repeat volta 4 {
			\mark \markup { \box \bold "D2" }
			\time 4/4
			\bar ".|:"
			r4^\markup "x4"
			r4
			r4
			r4

			tamb8 tamb8
			tamb8. tamb16
			tamb8 tamb8
			tamb4
			\bar ":|."

			tamb8 tamb8
			tamb8. tamb16
			tamb8 tamb8
			tamb4
			\bar "|."
			\break
		}
	}
}