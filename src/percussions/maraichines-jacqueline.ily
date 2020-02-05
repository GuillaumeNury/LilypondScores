% LilypondScores:percus
\version "2.18.2"

% http://lilypond.org/doc/v2.19/Documentation/notation/common-notation-for-percussion

\header {
	title = \markup { \fontsize #4 \bold "Suite de Maraîchines (Jacqueline)" }
	instrument = "Wood Blocks + Bidon"
	composer = "Ronan Jego-Aquilina"
	tagline = ##f
}

\layout {
	\numericTimeSignature

	% Do not print end of line TimeSignature
	\override Staff.TimeSignature.break-visibility = ##(#f #t #t)
}

\new DrumStaff {
	\drummode {	
		#(define mydrums '((ridebell default #t  3)
						(cowbell  default #t -2)))
		\override DrumStaff.StaffSymbol.line-positions = #'(-2 3)
		\set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
		\override Staff.BarLine.bar-extent = #'(-1.5 . 1.5)
		\repeat volta 4 {
			\mark \markup { \box \bold "Intro percus" }
			\time 12/8
			\bar ".|:"
			\override NoteHead.color = #blue rb4.^\markup "x4" 
			\override NoteHead.color = #red cb8 \override NoteHead.color = #red cb8 \override NoteHead.color = #red cb8 
			\override NoteHead.color = #blue rb4 \override NoteHead.color = #red cb8
			r4.

			\override NoteHead.color = #blue rb4.
			\override NoteHead.color = #red cb4.
			\override NoteHead.color = #blue rb8 \override NoteHead.color = #red cb8 \override NoteHead.color = #blue rb8
			\override NoteHead.color = #red cb4.
			\bar ":|."
			\break
		}
	}
}
\new DrumStaff {
	\drummode {	
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
		\repeat volta 4 {
			\mark \markup { \box \bold "A2" }
			\time 12/8
			\bar ".|:"
			\override NoteHead.color = #blue rb4.^\markup "x4" 
			\override NoteHead.color = #red cb8 \override NoteHead.color = #red cb8 \override NoteHead.color = #red cb8 
			\override NoteHead.color = #blue rb4 \override NoteHead.color = #red cb8
			r4.

			\override NoteHead.color = #blue rb4.
			\override NoteHead.color = #red cb4.
			\override NoteHead.color = #blue rb8 \override NoteHead.color = #red cb8 \override NoteHead.color = #blue rb8
			\override NoteHead.color = #red cb4.
			\break
		}
	}
}
\new DrumStaff {
	\drummode {
		#(define mydrums '((tambourine default #t 0)))
		\override Staff.StaffSymbol.line-positions = #'( 0 )
		\override Staff.BarLine.bar-extent = #'(-1.5 . 1.5)
		\set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
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
		#(define mydrums '((tambourine default #t 0)))
		\override Staff.StaffSymbol.line-positions = #'( 0 )
		\override Staff.BarLine.bar-extent = #'(-1.5 . 1.5)
		\set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
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
		\mark \markup { \box \bold "D1" }
		\repeat volta 4 {
			\time 4/4	
			\bar ".|:"
			r1^\markup "x4"
			\break
		}
		\repeat volta 4 {
			\time 4/4	
			\bar ".|:"
			\override NoteHead.color = #red cb8^\markup "x4" \override NoteHead.color = #blue rb8
			\override NoteHead.color = #red cb8 \override NoteHead.color = #blue rb16 \override NoteHead.color = #blue rb16
			\override NoteHead.color = #blue rb4
			r4
			\break
		}
	}
}
\new DrumStaff {
	\drummode {
		\mark \markup { \box \bold "D2" }
		\repeat volta 4 {
			\time 4/4	
			\bar ".|:"
			r1^\markup "x4"
			\break
		}
		\repeat volta 4 {
			\time 4/4	
			\bar ".|:"
			\override NoteHead.color = #red cb8^\markup "x4" \override NoteHead.color = #blue rb8
			\override NoteHead.color = #red cb8 \override NoteHead.color = #blue rb16 \override NoteHead.color = #blue rb16
			\override NoteHead.color = #blue rb4
			r4
			\break
		}
		\override NoteHead.color = #red cb8 \override NoteHead.color = #blue rb8
		\override NoteHead.color = #red cb8 \override NoteHead.color = #blue rb16 \override NoteHead.color = #blue rb16
		\override NoteHead.color = #blue rb8 \override NoteHead.color = #red cb8
		\override NoteHead.color = #blue rb4
		\bar "|."
		\break
	}
}