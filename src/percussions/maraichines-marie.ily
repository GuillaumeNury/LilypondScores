% LilypondScores:percus
\version "2.18.2"

% http://lilypond.org/doc/v2.19/Documentation/notation/common-notation-for-percussion

\header {
	title = \markup { \fontsize #4 \bold "Suite de Maraîchines" }
	instrument = "Partie Marie (Toms + Bongos)"
	composer = "Ronan Jego-Aquilina"
	tagline = ##f
}

cymbales = \drummode {
	
}

toms = \drummode {
	\repeat volta 4 {
		\mark \markup { \box \bold "Intro percus" }
		\time 12/8
		\bar ".|:"
		tommh4.^\markup "x4" 
		tomfh4 tomfh8
		tommh4 tomfh8
		r4 tomfh8

		tommh4.
		tomfh4 tomfh8
		tommh8 tomfh8 tommh8
		tomfh4.
		\bar ":|."
		\break
	}
	\repeat volta 8 {
		\mark \markup { \box \bold "A" }
		\time 12/8
		\bar ".|:"
		tommh4.^\markup "x8" 
		tomfh4 tomfh8
		tommh4 tomfh8
		r4 tomfh8

		tommh4.
		tomfh4 tomfh8
		tommh8 tomfh8 tommh8
		tomfh4.
		\bar ":|."
		\break
	}
	
	\mark \markup { \box \bold "B1" }
	\time 4/4
	tomfh4
	tomfh4 
	tommh8 tommh8
	r8 tomfh8

	r8 tomfh8
	r8 tomfh8
	r8 tommh8 
	tommh8 r8
	
	r1

	r8 tomfh8
	r8 tomfh8
	r8 tommh8 
	tommh8 r8
	\break

	r1

	r8 tomfh8
	r8 tomfh8
	r8 tommh8 
	tommh8 r8

	tomfh4
	tomfh4 
	tommh8 tommh8
	r8 tomfh8

	r8 tomfh8
	r8 tomfh8
	r8 tommh8 
	tommh8 r8

	tomfh4
	tomfh4 
	tommh8 tommh8
	r8 tomfh8

	r8 tomfh8
	r8 tomfh8
	r8 tommh8 
	tommh8 r8

	r1

	r8 tomfh8
	r8 tomfh8
	r8 tommh8 
	tommh8 r8

	r1

	r8 tomfh8
	r8 tomfh8
	r8 tommh8 
	tommh8 r8

	tomfh4
	tomfh4 
	tommh8 tommh8
	r8 tomfh8

	r8 tomfh8
	r8 tomfh8
	r8 tommh8 
	tommh8 r8

	\bar "|."
	\break

	\repeat volta 4 {
		\mark \markup { \box \bold "B2 - Bongos" }
		\time 4/4
		\bar ".|:"
		\bongostyle {
			bol8^\markup "x4" bol16 bol16
			bol8 boh16 boh16
			boh8 bol16 bol16
			bol8 boh16 boh16

			boh8 bol16 bol16
			bol16 bol16 boh16 boh16
			boh8 bol16 bol16
			bol8 r8
		}
		
		\bar ":|."
		\break
	}
	
	
	\repeat volta 8 {
		\mark \markup { \box \bold "C" }
		\time 4/4	
		\bar ".|:"
		r1^\markup "x8"
		\break
	}

	\mark \markup { \box \bold "D" }
	\time 4/4
	\bar ".|:"
	tomfh4.^\markup "x2" 
	tommh4. 
	tomfh4
	
	tomfh8 tommh8
	tommh8. tommh16
	tomfh8 tommh8
	tomfh4
	\bar ":|.|:"
	tomfh8^\markup "x2" tommh8
	tomfh8 tomfh16 tomfh16
	tommh8 tomfh8
	tomfh8 tomfh8

	tomfh8 tommh8
	tommh8. tommh16
	tomfh8 tommh8
	tomfh4
	\bar ":|."
	\break

	\bar ".|:"
	tomfh4.^\markup "x2" 
	tommh4. 
	tomfh4
	
	tomfh8 tommh8
	tommh8. tommh16
	tomfh8 tommh8
	tomfh4
	\bar ":|.|:"
	tomfh8^\markup "x2" tommh8
	tomfh8 tomfh16 tomfh16
	tommh8 tomfh8
	tomfh8 tomfh8

	tomfh8 tommh8
	tommh8. tommh16
	tomfh8 tommh8
	tomfh4
	\bar ":|."
	\break

	tomfh8 tommh8
	tommh8. tommh16
	tomfh8 tommh8
	tomfh4
	\bar "|."
	\break


	

}

\new DrumStaff {
	\tempo 4. = 126
	<<
	\new DrumVoice { \stemUp \cymbales }
	\new DrumVoice { \stemDown \toms }
	>>
}