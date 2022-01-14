% LilypondScores:draft:percus
\version "2.23.5"

\header {
	title = "Kas Ma Sac'h"
	instrument = "PARTITION POUR TOMS CYMBALES ET JAM BLOCKS"
	composer = "Aurélien Étienne"
	tagline = "DOCUMENT EN COURS D'ÉCRITURE - NE PAS DIFFUSER"
}

\include "src/percussions/core.ily"

\paper {
	score-system-spacing.basic-distance = #20
}


\layout {
	indent = 18
	short-indent = 18

	\context {
		\Score
		proportionalNotationDuration = #(ly:make-moment 1/10)
	}
}

\new DrumStaff {
	% \tempo 4 = 76 TODO

	\drummode {
		\time 4/4
		\boxMark "A"
		\tambourinestyle
		\repeat volta 2 {
			\bar ".|:"
				
			tamb16 tamb16 tamb8
			tamb8 tamb8
			tamb8[ tamb8]
			tamb8 tamb8

			tamb16 tamb16 tamb8
			tamb8 tamb8
			tamb8[ tamb8]
			tamb8 tamb8

			\break

			tamb16 tamb16 tamb8
			tamb8 tamb8
			tamb8[ tamb8]
			tamb8 tamb8

			tamb16 tamb16 tamb8
			tamb8 tamb8
			tamb8[ tamb8]
			tamb8 tamb8

			\break
		}
	}

	\drummode {
		\time 4/4
		\boxMark "B"
		\tambourinestyle
		\repeat volta 2 {
			\bar ":|.|:"
				
			tamb16 tamb16 tamb8 
			tamb16 tamb16 tamb8
			r4
			r4

			tamb16 tamb16 tamb8
			r8 tamb8
			tamb8 tamb8
			tamb4

			\break

			tamb16 tamb16 tamb8 
			tamb16 tamb16 tamb8
			r4
			r4

			tamb16 tamb16 tamb8
			r8 tamb8
			tamb8 tamb8
			tamb4

			\break
		}
	}

	\drummode {
		\time 4/4
		\boxMark "C"
		\tambourinestyle
		\repeat volta 2 {
			\bar ":|.|:"
				
			tamb16 tamb8 tamb16 
			tamb8 tamb8
			tamb16 tamb8 tamb16 
			tamb8 tamb8

			tamb16 tamb8 tamb16 
			tamb8 tamb8
			\tuplet 3/2 { tamb8 tamb8 tamb8 }
			tamb4

			\break

			tamb16 tamb8 tamb16 
			tamb8 tamb8
			tamb16 tamb8 tamb16 
			tamb8 tamb8

			tamb16 tamb8 tamb16 
			tamb8 tamb8
			\tuplet 3/2 { tamb8 tamb8 tamb8 }
			tamb4

			\bar ":|."
			\break
		}
	}

}

% \score {
% 	\layout { }

% 	\myMusic
% }

% \score {
% 	\midi { }

% 	\unfoldRepeats \myMusic
% }