% LilypondScores:percus
\version "2.18.2"

% http://lilypond.org/doc/v2.19/Documentation/notation/common-notation-for-percussion

\header {
	title = \markup { \fontsize #4 \bold "Tours d'Orvault" }
	subtitle = \markup { \fontsize #1 \bold " Bagad Orvez | Version concerts 2020" }
	instrument = "Bidon - Tom - Wood blocks - Bongos"
	composer = "R. Jego-Aquilina / G. Nury"
	tagline = \markup {
		\fontsize #-4 "Thèmes traditionnels et d'inspiration traditionnelle"
	}
}


\include "core.ily"

\score {		   
	\new DrumStaff {
		\tempo 4 = 90
		\mark "A - INTRODUCTION"
		\drummode {
			\tambourinestyle
			\set DrumStaff.instrumentName = #"Bidon"
			\time 4/4
			\repeat volta 4 {
				\bar ".|:"
				tamb8.^\markup "x4 pour intro bidon en solo" tamb16
				r8 tamb8
				r8 tamb8
				tamb4
				\bar ":|.|:"
				tamb8.^\markup "x16" tamb16
				r8 tamb8
				r8 tamb8
				tamb4
				\bar ":|."
				\break
			}
		}
	}
}
\score {		   
	\new DrumStaff {
		\drummode {
			\tambourinestyle
			\set DrumStaff.instrumentName = #"Tom ténor"
			\time 4/4
			\repeat volta 4 {
				\bar ".|:"
				r1^\markup "x4 pour intro bidon en solo"
				\bar ":|.|:"
				r1^\markup "x16"
				\bar ":|."
				\break
			}
		}
	}
}
\score {		   
	\new DrumStaff {
		\drummode {
			\woodblockstyle
			\set DrumStaff.instrumentName = #"Wood blocks"
			\time 4/4
			\repeat volta 4 {
				\bar ".|:"
				r1^\markup "x4 pour intro bidon en solo"
				\bar ":|.|:"
				r1^\markup "x16"
				\bar ":|."
				\break
			}
		}
	}
}
\score {		   
	\new DrumStaff {
		\drummode {
			\twotomstyle
			\set DrumStaff.instrumentName = #"Bongos"
			\time 4/4
			\repeat volta 4 {
				\bar ".|:"
				r1^\markup "x4 pour intro bidon en solo"
				\bar ":|.|:"
				r1^\markup "x16"
				\bar ":|."
				\break
			}
		}
	}
}
\score {		   
	\new DrumStaff {
		\mark "B - BAGAD"
		\drummode {
			\tambourinestyle
			\set DrumStaff.instrumentName = #"Bidon"
			\time 4/4
			\repeat volta 4 {
				\bar ".|:"
				r1^\markup "x8"
				r1
				\bar ":|."
				\break
			}
		}
	}
}
\score {		   
	\new DrumStaff {
		\drummode {
			\tambourinestyle
			\set DrumStaff.instrumentName = #"Tom ténor"
			\time 4/4
			\repeat volta 4 {
				\bar ".|:"
				tamb8.^\markup "x8" tamb16
				r8 tamb8
				r8 tamb8
				tamb4
				
				tamb8. tamb16
				r8 tamb8
				r8 tamb8
				tamb4
				\bar ":|."
				\break
			}
		}
	}
}
\score {		   
	\new DrumStaff {
		\drummode {
			\woodblockstyle
			\set DrumStaff.instrumentName = #"Wood blocks"
			\time 4/4
			\repeat volta 4 {
				\bar ".|:"
				cb4^\markup "x8"
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
}
\score {		   
	\new DrumStaff {
		\drummode {
			\twotomstyle
			\set DrumStaff.instrumentName = #"Bongos"
			\time 4/4
			\repeat volta 4 {
				\bar ".|:"
				toml8^\markup "x8" toml16 toml16
				toml16 toml16 tomh8
				r8 toml16 toml16
				tomh8 toml8

				toml8 toml16 toml16
				toml16 toml16 tomh8
				r8 toml16 toml16
				tomh4
				\bar ":|."
				\break
			}
		}
	}
}
\score {		   
	\new DrumStaff {
		\mark "C - COUPLE"
		\drummode {
			\tambourinestyle
			\set DrumStaff.instrumentName = #"Bidon"
			\time 4/4
			\repeat volta 4 {
				\bar ".|:"
				r1^\markup "x8"
				\bar ":|."
				\break
			}
		}
	}
}
\score {		   
	\new DrumStaff {
		\drummode {
			\tambourinestyle
			\set DrumStaff.instrumentName = #"Tom ténor"
			\time 4/4
			\repeat volta 4 {
				\bar ".|:"
				r1^\markup "x8"
				\bar ":|."
				\break
			}
		}
	}
}
\score {		   
	\new DrumStaff {
		\drummode {
			\woodblockstyle
			\set DrumStaff.instrumentName = #"Wood blocks"
			\time 4/4
			\repeat volta 4 {
				\bar ".|:"
				r1^\markup "x8"
				\bar ":|."
				\break
			}
		}
	}
}
\score {		   
	\new DrumStaff {
		\drummode {
			\twotomstyle
			\set DrumStaff.instrumentName = #"Bongos"
			\time 4/4
			\repeat volta 4 {
				\bar ".|:"
				r1^\markup "x8" 
				\bar ":|."
				\break
			}
		}
	}
}
\score {		   
	\new DrumStaff {
		\mark "D - BAGAD"
		\drummode {
			\tambourinestyle
			\set DrumStaff.instrumentName = #"Bidon"
			\time 4/4
			\repeat volta 4 {
				\bar ".|:"
				r1^\markup "x4"
				r1
				\bar ":|."
				\break
			}
		}
	}
}
\score {		   
	\new DrumStaff {
		\drummode {
			\tambourinestyle
			\set DrumStaff.instrumentName = #"Tom ténor"
			\time 4/4
			\repeat volta 4 {
				\bar ".|:"
				tamb8.^\markup "x4" tamb16
				r8 tamb8
				r8 tamb8
				tamb4
				
				tamb8. tamb16
				r8 tamb8
				r8 tamb8
				tamb4
				\bar ":|."
				\break
			}
		}
	}
}
\score {		   
	\new DrumStaff {
		\drummode {
			\woodblockstyle
			\set DrumStaff.instrumentName = #"Wood blocks"
			\time 4/4
			\repeat volta 4 {
				\bar ".|:"
				cb4^\markup "x4"
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
}
\score {		   
	\new DrumStaff {
		\drummode {
			\twotomstyle
			\set DrumStaff.instrumentName = #"Bongos"
			\time 4/4
			\repeat volta 4 {
				\bar ".|:"
				toml8^\markup "x4" toml16 toml16
				toml16 toml16 tomh8
				r8 toml16 toml16
				tomh8 toml8

				toml8 toml16 toml16
				toml16 toml16 tomh8
				r8 toml16 toml16
				tomh4
				\bar ":|."
				\break
			}
		}
	}
}
\score {		   
	\new DrumStaff {
		\mark "E - TRANSITION"
		\drummode {
			\tambourinestyle
			\set DrumStaff.instrumentName = #"Bidon"
			\time 4/4
			\repeat volta 4 {
				\bar ".|:"
				tamb8.^\markup "x8" tamb16
				r8 tamb8
				r8 tamb8
				tamb4
				\bar ":|.|:"
				r1^\markup "x4"
				\bar ":|."
				\break
			}
		}
	}
}
\score {		   
	\new DrumStaff {
		\drummode {
			\tambourinestyle
			\set DrumStaff.instrumentName = #"Tom ténor"
			\time 4/4
			\repeat volta 4 {
				\bar ".|:"
				r1^\markup "x8"
				\bar ":|.|:"
				r1^\markup "x4"
				\bar ":|."
				\break
			}
		}
	}
}
\score {		   
	\new DrumStaff {
		\drummode {
			\woodblockstyle
			\set DrumStaff.instrumentName = #"Wood blocks"
			\time 4/4
			\repeat volta 4 {
				\bar ".|:"
				r1^\markup "x8"
				\bar ":|.|:"
				r1^\markup "x4"
				\bar ":|."
				\break
			}
		}
	}
}
\score {		   
	\new DrumStaff {
		\drummode {
			\twotomstyle
			\set DrumStaff.instrumentName = #"Bongos"
			\time 4/4
			\repeat volta 4 {
				\bar ".|:"
				r1^\markup "x8"
				\bar ":|.|:"
				r1^\markup "x4"
				\bar ":|."
				\break
			}
		}
	}
}
\score {		   
	\new DrumStaff {
		\mark "F - CHANT"
		\drummode {
			\tambourinestyle
			\set DrumStaff.instrumentName = #"Bidon"
			\time 4/4
			\repeat volta 4 {
				\bar ".|:"
				r1^\markup "x19"
				\bar ":|."
				\break
			}
		}
	}
}
\score {		   
	\new DrumStaff {
		\drummode {
			\tambourinestyle
			\set DrumStaff.instrumentName = #"Tom ténor"
			\time 4/4
			\repeat volta 4 {
				\bar ".|:"
				r1^\markup "x19"
				\bar ":|."
				\break
			}
		}
	}
}
\score {		   
	\new DrumStaff {
		\drummode {
			\woodblockstyle
			\set DrumStaff.instrumentName = #"Wood blocks"
			\time 4/4
			\repeat volta 4 {
				\bar ".|:"
				r1^\markup "x19"
				\bar ":|."
				\break
			}
		}
	}
}
\score {		   
	\new DrumStaff {
		\drummode {
			\twotomstyle
			\set DrumStaff.instrumentName = #"Bongos"
			\time 4/4
			\repeat volta 4 {
				\bar ".|:"
				r1^\markup "x19" 
				\bar ":|."
				\break
			}
		}
	}
}
\score {		   
	\new DrumStaff {
		\mark "G - TRANSITION"
		\drummode {
			\tambourinestyle
			\set DrumStaff.instrumentName = #"Bidon"
			\time 4/4
			\repeat volta 4 {
				\bar ".|:"
				tamb8.^\markup "x4" tamb16
				r8 tamb8
				r8 tamb8
				tamb4
				\bar ":|."
				\break
			}
		}
	}
}
\score {		   
	\new DrumStaff {
		\drummode {
			\tambourinestyle
			\set DrumStaff.instrumentName = #"Tom ténor"
			\time 4/4
			\repeat volta 4 {
				\bar ".|:"
				r1^\markup "x4"
				\bar ":|."
				\break
			}
		}
	}
}
\score {		   
	\new DrumStaff {
		\drummode {
			\woodblockstyle
			\set DrumStaff.instrumentName = #"Wood blocks"
			\time 4/4
			\repeat volta 4 {
				\bar ".|:"
				r1^\markup "x4"
				\bar ":|."
				\break
			}
		}
	}
}
\score {		   
	\new DrumStaff {
		\drummode {
			\twotomstyle
			\set DrumStaff.instrumentName = #"Bongos"
			\time 4/4
			\repeat volta 4 {
				\bar ".|:"
				r1^\markup "x4"
				\bar ":|."
				\break
			}
		}
	}
}
\score {		   
	\new DrumStaff {
		\mark "H - BAGAD"
		\drummode {
			\tambourinestyle
			\set DrumStaff.instrumentName = #"Bidon"
			\time 4/4
			\repeat volta 4 {
				\bar ".|:"
				tamb8.^\markup "x2" tamb16
				r8 tamb8
				r8 tamb8
				tamb4

				tamb8. tamb16
				r8 tamb8
				r8 tamb8
				tamb4
				\bar ":|."
				r1

				tamb8. tamb16
				r8 tamb8
				r8 tamb8
				tamb4
				\bar ".|:"
				tamb8.^\markup "x2" tamb16
				r8 tamb8
				r8 tamb8
				tamb4

				tamb8. tamb16
				r8 tamb8
				r8 tamb8
				tamb4
				\bar ":|."
				\break
			}
		}
	}
}
\score {		   
	\new DrumStaff {
		\drummode {
			\tambourinestyle
			\set DrumStaff.instrumentName = #"Tom ténor"
			\time 4/4
			\repeat volta 4 {
				\bar ".|:"
				tamb8.^\markup "x2" tamb16
				r8 tamb8
				r8 tamb8
				tamb4

				tamb8. tamb16
				r8 tamb8
				r8 tamb8
				tamb4
				\bar ":|."
				r1

				tamb8. tamb16
				r8 tamb8
				r8 tamb8
				tamb4
				\bar ".|:"
				tamb8.^\markup "x2" tamb16
				r8 tamb8
				r8 tamb8
				tamb4

				tamb8. tamb16
				r8 tamb8
				r8 tamb8
				tamb4
				\bar ":|."
				\break
			}
		}
	}
}
\score {		   
	\new DrumStaff {
		\drummode {
			\woodblockstyle
			\set DrumStaff.instrumentName = #"Wood blocks"
			\time 4/4
			\repeat volta 4 {
				\bar ".|:"
				cb4^\markup "x2"
				r4
				r8 rb8
				rb8 cb8

				cb4
				r4
				r8 rb16 rb16
				rb4
				\bar ":|."
				r1

				cb4
				r4
				r8 rb16 rb16
				rb4
				\bar ".|:"
				cb4^\markup "x2"
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
}
\score {		   
	\new DrumStaff {
		\drummode {
			\twotomstyle
			\set DrumStaff.instrumentName = #"Bongos"
			\time 4/4
			\repeat volta 4 {
				\bar ".|:"
				r1^\markup "x2"
				r1
				\bar ":|."
				r1
				r1
				\bar ".|:"
				r1^\markup "x2"
				r1
				\bar ":|."
				\break
			}
		}
	}
}