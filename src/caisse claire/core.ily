\include "lib/scottish-drums.ily"
\include "theme/core.ily"

circle =
\once \override NoteHead.stencil = #(lambda (grob)
		(let* ((note (ly:note-head::print grob))
			(combo-stencil (ly:stencil-add
				note
				(circle-stencil note 0.1 0.3))))
			(ly:make-stencil (ly:stencil-expr combo-stencil)
				(ly:stencil-extent note X)
				(ly:stencil-extent note Y))))

% FLIP FLAP
flip = #(define-music-function (parser location note) (ly:music?)
	#{ \circle \xNote $note #}
)

% BOXED THEME MARK
boxMark = #(define-music-function (parser location text) (string?)
	#{
		\mark \markup {
			\box \pad-around #0.75
			\bold $text
		}
	#}
)

\layout {
	\override Score.RehearsalMark.font-size = 3
	\override Score.RehearsalMark.font-series = #'bold
	\override Score.RehearsalMark.extra-offset = #'(0 . 3)
	\override Score.MetronomeMark.extra-offset = #'(-3 . 4)
	\override Score.MetronomeMark.break-align-symbols = #'(RehearsalMark)
}

\paper {
	system-system-spacing.basic-distance = #16
	score-system-spacing.basic-distance = #30

	% Print tagline one every pages
	oddFooterMarkup = \markup {
		\column {
			\fill-line {
				\fromproperty #'header:tagline
			}
		}
	}

	bookTitleMarkup = \markup {
		\override #'(baseline-skip . 3.5)
		\column {
			\fill-line { \fromproperty #'header:dedication }
			\override #'(baseline-skip . 3.5)
			\column {
				\fill-line {
					\fontsize #8 \bold
					\fromproperty #'header:title
				}
				\fill-line {
					\center-column {
						\vspace #1
						\line {
							\fontsize #-0.25 \bold
							\fromproperty #'header:subtitle
						}
						\line {
							\fontsize #-0.25 \bold
							\fromproperty #'header:arranger
						}
					}
				}
				\fill-line {
					\smaller \bold
					\fromproperty #'header:subsubtitle
				}
				\vspace #2
				\fill-line {
					\fromproperty #'header:poet
					{ \fontsize #1.5 \bold \fromproperty #'header:instrument }
					\null
				}
				\fill-line {
					\null
					\null
					\fromproperty #'header:composer
				}
				\vspace #1
				\fill-line {
					\fromproperty #'header:meter
				}
			}
		}
	}

	scoreTitleMarkup = \markup { \column {
		\on-the-fly \print-all-headers { \bookTitleMarkup \hspace #1 }
		\fill-line {
			\fromproperty #'header:piece
			\fromproperty #'header:opus
		}
	}}
}