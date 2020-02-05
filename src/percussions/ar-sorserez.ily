% LilypondScores:percus
\version "2.18.2"

% http://lilypond.org/doc/v2.19/Documentation/notation/common-notation-for-percussion

\header {
	title = \markup { \fontsize #4 \bold "Ar Sorserez (Marie)" }
	instrument = "Toms + Cymbales"
	composer = "Christophe Declercq"
	tagline = ##f
}

cymbales = \drummode {
	% Thème A
	cymc4 r4 r4 r4

	\time 2/4
	cymc8. cymc16 r8 cymc8

	\time 4/4
	cymc4 r4 r4 r4
	cymc4 \skip2.
	cymc4 \skip2.

	% Thème B
	cymc4 \skip2.
	\skip2
	\skip1
	cymc4 cymc4 cymc4 r4
}

toms = \drummode {
	\repeat volta 2 {
		\mark \default
		\time 4/4
		\bar ".|:"
		tomfh4 r r r

		\bar "||"
		\time 2/4
		tomfh8. tomfh16 r8 tomfh8

		\bar "||"
		\time 4/4
		tomfh4 r r r

		\break
	}
	\alternative {
		{
			r4
			r4
			tomfh16. tomfh32 r16. tomfh32
			tomfh8 tomfh8
		}
		{
			tomfh8 tomfh16. tomfh32
			r16. tomfh32 tomfh8
			tomfh4
			r4
		}
	}
	\bar ":|."
	\break

	\mark \default
	\time 4/4
	\bar ".|:"

	tomfh4 r4 r r

	\bar "||"
	\time 2/4
	tomfh8 tomfh8 tomfh16 tomfh16 tomfh8

	\bar "||"
	\time 4/4
	tomfh8 \tuplet 3/2 { tomfh16 tomfh16 tomfh16 }
	tomfh4
	r4
	r4

	\break
	tomfh4 tomfh tomfh r4

	\bar "||"
	\time 2/4
	r4 r8 tomfh8

	\bar "||"
	\time 4/4
	tomfh4
	r8 tomfh16 tomfh16
	tomfh16 tomfh16 tomfh8
	r4

	\bar "||"
	\time 2/4
	tomfh4 r4

	\bar "||"
	\time 4/4
	r4
	tomfh8 tomfh8
	r4
	tomfh8 tomfh8

	\break

	r4 r r r

	\bar "||"
	\time 2/4
	tomfh16. tomfh32 r16. tomfh32
	tomfh8 tomfh8

	\bar ":|."

	tomfh4
	r4
	\bar "|."
}

\new DrumStaff {
	\tempo 4 = 80
	<<
	\new DrumVoice { \stemUp \cymbales }
	\new DrumVoice { \stemDown \toms }
	>>
}