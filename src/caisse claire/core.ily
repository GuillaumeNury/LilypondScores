\include "lib/scottish-drums.ily"
\include "theme/core.ily"

circle = {
	\once \override NoteHead.stencil = #(lambda (grob)
			(let* ((note (ly:note-head::print grob))
				(combo-stencil (ly:stencil-add
					note
					(circle-stencil note 0.1 0.3))))
				(ly:make-stencil (ly:stencil-expr combo-stencil)
					(ly:stencil-extent note X)
					(ly:stencil-extent note Y))))
}

% FLIP FLAP
flip = #(define-music-function (parser location note) (ly:music?)
	#{ \circle \xNote $note #}
)

% BOXED THEME MARK
boxMark = #(define-music-function (parser location markup) (markup?)
	#{
		\mark \markup {
			\box \pad-around #0.75
			\bold $markup
		}
	#}
)

% CONDITIONNAL MARKUP
#(define-markup-command (if-property layout props symbol innermarkup) (symbol? markup?)
	(let ((property (chain-assoc-get symbol props #f)))
		(interpret-markup layout props
			(markup (if (string? property) innermarkup #'""))
		)
	)
)

\layout {
	\override Score.RehearsalMark.font-size = 3
	\override Score.RehearsalMark.font-series = #'bold
	\override Score.RehearsalMark.self-alignment-X = #LEFT
	\override Score.MetronomeMark.extra-offset = #'(7 . 4.75)
	\override Score.MetronomeMark.self-alignment-X = #LEFT
}

\paper {
	system-system-spacing.basic-distance = #16
	score-system-spacing.basic-distance = #30

	% Print tagline one every pages
	oddFooterMarkup = \markup {
		\if-property #'header:tagline {
			\column {
				\vspace #1
				\fill-line {
					\fromproperty #'header:tagline
				}
			}
		}
	}

	bookTitleMarkup = \markup {
		\column {
			\fill-line { \fromproperty #'header:dedication }
			\override #'(baseline-skip . 3.5)
			\column {
				\fill-line {
					\fontsize #8 \bold
					\fromproperty #'header:title
				}
				\if-property #'header:subtitle {
					\fill-line {
						\center-column {
							\vspace #1
							\line {
								\fontsize #-0.25 \bold
								\fromproperty #'header:subtitle
							}
						}
					}
				}
				\if-property #'header:arranger {
					\fill-line {
						\center-column {
							\vspace #0.5
							\line {
								\fontsize #-0.25 \bold
								\fromproperty #'header:arranger
							}
						}
					}
				}
				\fill-line {
					\smaller \bold
					\fromproperty #'header:subsubtitle
				}
				\if-property #'header:instrument {
					\fill-line {
						\center-column {
							\vspace #2
							\line {
								\fontsize #1.5 \bold
								\fromproperty #'header:instrument
							}
						}
					}
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