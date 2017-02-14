%{ ***********************************
   * 
   * RENAME THIS SECTION
   * 
   ********************************* 
%}

\markup {

	\vspace #2
	\column {
		\wordwrap \bold { "XXX" } 
		\wordwrap { A note about using the
			\typewriter {"\\XX"} feature:
		}
	}
}

\markup {
	\vspace #1
	\column {
		\hspace #8 \column \typewriter {
			"\\version \"2.19.54\" "  
			"<<"
			"\\relative g' {"
			"    \\key g \\major"
			"    \\clef treble"
			"    \\time 6/8"
			"    a8 g4 fis8 e4 g8 |"
			"}"
			"\\addlyrics {"
			"    Tra la la la |"
			"}"
			">>"
		}
	}
	\column {
		\line { " " }
		\line { " " }
		\line { " " }
		\line { " " }
		\line { " " }
		\score {
			<<
			\relative g' {
				\key g \major
				\clef treble
				\time 6/8
				g8 a b d4.\fermata |
			}
			\addlyrics {
				Tra la la la |
			}
			>>
		}
	}	
}
