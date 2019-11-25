%{
	SOURCE : https://simonfroger.wordpress.com/lilypond/caisse-claire-ecossaise/

	Configuration d'un fichier LilyPond pour l'écriture d'une partition de
	caisse claire écossaise.
	
	Version : 2.0
	
	Auteur : Simon Froger
	
	Remerciements : Pierre Perol-Schneider, Gilles Thibault.
	
	Ajouter la ligne suivante à votre fichier :
	\include "[path]/scottish-drums.ily"
	
	Écrire obligatoirement la musique dans :
	\new DrumStaff {
		\drummode {
		 [musique]
		}
	}

MANUEL D'UTILISATION :

d : coup droit
g : coup gauche

-> : accentuation
\v : accentuation forte
	[exemples :
		coup droit (noire) accentué : d4->
		coup gauche (noire) très accentué : g4\v
	]
	
FLA et DRAG :
fonctions à placer avant la note:
\fla 	[exemple : FLA droit (noire) : \fla d4 ]
\drag	[exemple : DRAG gauche accentué (noire) : \drag g4-> ]

RA :
fonction suivie de la note concernée, puis du n° de RA :
\ra [note] #[nombre]
[exemple : RA de 9 entre deux noires : \ra d4( #9 d) ]
Si on ne veut pas de n° de RA, il faut entrer :
\ra [note] #0

%}

\version "2.18.0"

% définition des noms de notes : d pour main droite, g pour main gauche
drumPitchNames =
#(append '(
	(d . main-droite)
	(g . main-gauche)
	)
drumPitchNames
)

% position par rapport à la ligne : main droite en haut, main gauche en bas
#(define mysnaredrums '(
	(main-droite	default	#f	1)
	(main-gauche	default	#f	-1))
)

% marges internes :
\paper {
	markup-system-spacing #'basic-distance = #25 % distance titres - systèmes
	system-system-spacing #'basic-distance = #15 % distance entre systèmes
}

\midi {
}

\layout {
	% pas de retrait de la première ligne
	indent = 0
	% Les hampes se poussent devant les n° de RA
	% il faudra faire précéder un \markup par \textLengthOff 
	\textLengthOn
	
	% indications de nuances en haut
	\dynamicUp
	% On assigne à la partition le mode précédemment défini :
	\set DrumStaff.drumStyleTable = #(alist->hash-table mysnaredrums)
	\context {
		\DrumStaff
		% une seule ligne sur la portée
		\override StaffSymbol.line-positions = #'(0)
		% longueur des barres de mesure
		\override BarLine.bar-extent = #'(-2 . 2)
		% hampes
		\override Stem.direction = #-1 			% vers le bas
		\override Stem.length = #11				% longueur des hampes sans ligatures
		\override Stem.stemlet-length = #1.5 		% longueur des petites hampes
		% ligatures horizontales et au même niveau
		\override Beam.positions = #'(-5.5 . -5.5)
		% positionnement des n° de ra sous les courbes
		\override TextScript.outside-staff-priority = ##f
		\override TextScript.side-axis = #0
		\override TextScript.staff-padding = #3
		\override TextScript.X-offset = #2 		% décalage par rapport à la hampe de la note
		\override TextScript.extra-offset = #'(-0.3 . 0)
		% tremolos (RA)
		\override StemTremolo.slope = #0.5				% inclinaison
		\override StemTremolo.beam-width = #1.5			% largeur
		\override StemTremolo.beam-thickness = #0.3		% épaisseur
		\override StemTremolo.extra-offset = #'(0 . 0.6)	% position verticale
		%\override StemTremolo.Y-offset = #-3.3
		% Crochets de reprises
		\consists "Horizontal_bracket_engraver"
		\override HorizontalBracket.staff-padding = #6.5		% distance par rapport à la portée
		\override HorizontalBracket.direction = #DOWN			% position en-dessous de la portée
		\override HorizontalBracket.bracket-flare = #'(0 . 0)	% crochets verticaux
	}
	\context {
		\Score
		% alignement des indications de repère sur la clef
		\override RehearsalMark.break-align-symbols = #'(clef)
		% distance des indications de repère par rapport à la portée
		\override RehearsalMark.padding = #3
		% hauteur des boites de reprise
		\override VoltaBracket.edge-height = #'(1.5 . 1.5)
	}
}

% notes d'ornements :
startGraceMusic = {
	\stemUp											% hampes vers le haut
	\tiny
	\override Flag.stroke-style = #"grace"		% barre oblique sur les hampes
	\once \override Beam.positions = #'(3 . 3)	% position des ligatures pour les drag
	\once \override DrumStaff.Stem.length = #7	% position des extrémités des hampes
}
stopGraceMusic =  {
	%\override Beam.positions = #'(-6 . -6)
	\revert Flag.stroke-style
	%\revert DrumStaff.Stem.length
	\normalsize
	\stemNeutral
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%     FONCTIONS SPÉCIALES      %%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% TRIOLETS & QUINTOLETS :

triolet = #(define-music-function
	(parser location myMusic)
	(ly:music?)
	#{ \drummode { \tuplet 3/2 { #myMusic } } #}
	)

quintolet = #(define-music-function
	(parser location myMusic)
	(ly:music?)
	#{ \drummode { \tuplet 5/4 { #myMusic } } #}
	)


% NUANCES :
v = #(define-event-function (parser location) ()
  #{ \upbow #}
)

% NUANCE AVEC LIGNE D'EXTENSION :
dynLine = #(define-music-function (parser location text)
	(markup?)
	#{
		\once \override TextSpanner.style = #'line
		\once \override TextSpanner.bound-details.left.text = \markup {
			\combine
				\draw-line #'(0 . -1)
				\draw-line #'(1 . 0)
			\dynamic #text
		}
		\once \override TextSpanner.bound-details.right.text = \markup { \draw-line #'(0 . -1) }
	#}
)


% CROCHETS DE REPRISE :
% Début :
dr = #(define-event-function (parser location) ()
      	#{ \startGroup #}
      	)
% Fin :
fr = #(define-event-function (parser location) ()
      	#{ \stopGroup #}
      	)


% FLAS et DRAGS :
fla = #(define-music-function (parser location myNote)
	(ly:music?)
	(define test
		(filter
		       (lambda(m) (= (ly:music-property m 'span-direction 0) -1))
		       (extract-named-music myNote '(NoteGroupingEvent))
		)
	)
	(if (not (null? test))
		(music-filter
			(lambda (event) (not (member (ly:music-property event 'name) '(NoteGroupingEvent))))
			 myNote
		)
	)
	(if (eq? (ly:music-property myNote 'drum-type) 'main-droite)
	    (if (null? test)
			#{ \drummode { \grace g8 #myNote } #}	
			#{ \drummode { \grace g8\startGroup #myNote } #}
		)
	    (if (null? test)
		    #{ \drummode { \grace d8 #myNote } #}
		    #{ \drummode { \grace d8\startGroup #myNote } #}
		)
	)
)

drag = #(define-music-function (parser location myNote)
	(ly:music?)
	(define test
		(filter
		       (lambda(m) (= (ly:music-property m 'span-direction 0) -1))
		       (extract-named-music myNote '(NoteGroupingEvent))
		)
	)
	(if (not (null? test))
		(music-filter
			(lambda (event) (not (member (ly:music-property event 'name) '(NoteGroupingEvent))))
			 myNote
		)
	)
	(if (eq? (ly:music-property myNote 'drum-type) 'main-droite)
	    (if (null? test)
			#{ \drummode { \grace { g16[ g] } #myNote } #}
			#{ \drummode { \grace { g16[\startGroup g] } #myNote } #}
		)
	    (if (null? test)
			#{ \drummode { \grace { d16[ d] } #myNote } #}
			#{ \drummode { \grace { d16[\startGroup d] } #myNote } #}
		)
	)
)


% RA :
ra = #(define-music-function
	(parser location myNote myRa)
	(ly:music? number?)
	(define myCoef (ly:duration-log (ly:music-property myNote 'duration)))
	(set! (ly:music-property myNote 'articulations)
        (cons (make-music 'TremoloEvent 'tremolo-type 
                   (* (if (> 8 myRa) 4 8) (expt 2 (if (= 1 myCoef) 2 myCoef)))
              )
              (ly:music-property myNote 'articulations)
        )
    )
	(if (< 0 myRa)
		(set! (ly:music-property myNote 'articulations)
		      (cons (make-music 'TextScriptEvent 'direction -1 'text (number->string myRa))
			      (ly:music-property myNote 'articulations)
			  )
	    )
	)
	myNote
)

% DIVISION DES LIGATURES :
divLig = #(define-music-function (parser location) ()
    #{
    	\set subdivideBeams = ##t
		\set baseMoment = #(ly:make-moment 1 8)
		\set beatStructure = #'(2 2 2 2 2)
    #}
)