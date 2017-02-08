% Minimum Lilypad version required for the non-music variables feature
\version "2.19.54"  

\header {
  	title = "How to create a tunebook with Lilypad"
}

%{ ***********************************
   * COMMENT TEMPLATE
   * 
   ********************************* 
%}

%{ ***********************************
   * 
   * WRITING THE SCORE
   * 
   ********************************* 
%}

\markup {
	\vspace #2
	\fontsize #6
	\line \bold { "Writing the score" } 
}


\markup {
	\vspace #2
	\line \bold { "The minimum file" } {"From the File menu, choose About Lilypond and replace the version number below with that value"}
}

\markup {
	\vspace #1
	\hspace #8 \column \typewriter {
         "\\version \"2.19.54\" "  
         "{"
         "     c d e f"
         "}"
	}
}

\markup {
	\vspace #1
	\line { "Results:" }
	\hspace #0
}

{
	c d e f
}

\markup {
	\vspace #2
	\line \bold { "You will almost always use the" } 
	\typewriter {"relative"} {"keyword, like this:"}
}

\markup {
	\vspace #1
	\hspace #8 \column \typewriter {
         "\\version \"2.19.54\" "  
         "\\relative c' {"
         "     c d e f"
         "}"
	}
}

\markup {
	\vspace #1
	\line { "Results:" }
	\hspace #0
}

\relative c' {
	c d e f
}

%{ ***********************************
   * 
   * Sharps and flats
   * 
   ********************************* 
%}

\markup {
	\vspace #2
	\fontsize #4
	\line \bold { "Pitches" } 
}


\markup {
	\vspace #2
	\line 
	{   \bold { "Append" \typewriter {"es"} { "to a note name to add a flat,"}
		{"and"} \typewriter {"is"} {"to a note name to add a sharp"} }
	} 
}

\markup {
	\vspace #1
	\column {
		\hspace #8 \column \typewriter {
	         "\\version \"2.19.54\" "  
	         "\\relative c' {"
	         "     c d ees fis"
	         "}"
		}
	}
	\column {
		\line { " " }
		\score {
			\relative c' {
				c d ees fis
			}
		}
	}	
}

%{ ***********************************
   * 
   * Grace note
   * 
   ********************************* 
%}

\markup {
	\vspace #2
	\line \bold { "To add grace notes that aren't included in the note count, use" } 
	\typewriter {"\\grace"} {":"}
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
			"    \\grace a8 g4 fis8 e4 g8"
			"}"
			"\\addlyrics {"
			"    can of grog, If |"
			"}"
			">>"
		}
	}
	\column {
		\line { " " }
		\score {
			<<
			\relative g' {
				\key g \major
				\clef treble
				\time 6/8
				\grace a8 g4 fis8 e4 g8
			}
			\addlyrics {
				can of grog, If |
			}
			>>
		}
	}	
}



%{ ***********************************
   * 
   * Note length #1
   * 
   ********************************* 
%}

\markup {
	\vspace #2
	\fontsize #4
	\line \bold { "Note lengths" } 
}


\markup {
	\vspace #2
	\line 
	{   \bold { "Append" \typewriter {"8"} { "to make an eighth note,"}
		{"and"} \typewriter {"4"} {"to make it a quarter"} }
	} 
}

\markup {
	\vspace #1
	\column {
		\hspace #8 \column \typewriter {
			"\\version \"2.19.54\" "  
			"\\relative c' {"
			"\\time 2/4"
			"     c8 d e4"
			"}"
		}
	}
	\column {
		\line { " " }
		\score {
			\relative c' {
				c8 d e4
			}
		}
	}	
}



%{ ***********************************
   * 
   * Note length #2
   * 
   ********************************* 
%}

\markup {
	\vspace #2
	\line 
	{   \bold { "Notes use the same length until changed, so there's no reason to repeat them."}
		 
	} 
}

\markup {
	\vspace #1
	\column {
		\hspace #8 \column \typewriter {
			"\\version \"2.19.54\" "  
			"\\relative c' {"
			"\\time 4/4"
         	"     c8 d e f g4 a"
 			"}"
		}
	}
	\column {
		\line { " " }
		\score {
			\relative c' {
			\time 4/4
				c8 d e f g4 a
			}
		}
	}	
}



 
%{ ***********************************
   * 
   * MARKUP (Explanatory text)
   * 
   ********************************* 
%}

%{ ***********************************
   * TEMPLATE FOR MULTIPLE LINES
   * OF MARKUP TEXT
   ********************************* 
\markup {
	\line \bold { "Use "} { \typewriter "\\column " } 
	{ "to start new lines of text" }
}
\markup {
	\vspace #1
	\column \typewriter {
		"First line"
		"Second line"
		"And so on"
	}
}

%}

%{ ***********************************
   * TEMPLATE for score inside markup
   * Using 2-column format
   ***********************************

\markup {
	\vspace #2
	\line \bold { "XXX" } 
	\typewriter {"XXX"} {"XXX:"}
}

\markup {
	\vspace #1
	\column {
		\hspace #8 \column \typewriter {
			"\\version \"2.19.54\" "  
			"\\relative c' {"
			"     XXX"
			"}"
		}
	}
	\column {
		\line { " " }
		\score {
			\relative c' {
				XXX
			}
		}
	}	
}

   ********************************* %}



\markup {
	\vspace #2
	\fontsize #6
	\line \bold { "Markup (adding explanatory text)" } 
}

\markup {
	\vspace #2
	\line \bold { "Blocks of text" }
}
\markup {
	\hspace #8
	\vspace #1
	\column \typewriter {
		"\\markup {"
		"    \\line {\"hello, world.\"}"
		"}"
	}
}

\markup {
	\vspace #1
	\line { "Results:" }
}

\markup {
	\hspace #8
	\vspace #1
	\line { "hello, world." }
}



\markup {
	\vspace #2
	\line \bold { "Use" } { \typewriter "\\vspace" } { "to add space between paragraphs:" } 
}

\markup {
	\vspace #1
	 \hspace #4 \column \typewriter {
		"\\markup {"
		"    \\vspace #2"
		"    \\line {\"This paragraph is down several lines\"}"
		"}"
	}
}

\markup {
	\vspace #1
	\line { "Results:" }
}

\markup {
	\hspace #8
	\vspace #2
	\line {"This paragraph is down several lines"} 
}

\markup {
	\vspace #2
	\line \bold { "Formatting blocks of text" }
}
\markup {
	\vspace #1
	\column \typewriter {
		"\\markup {"
		"    \\line {\"hello,\" \\bold \"world.\"}"
		"}"
	}
}

\markup {
	\vspace #1
	\line {"hello," \bold "world."}
}

\markup {
	\vspace #2
	\column \typewriter {
		"\\markup {"
		"    \\line { \\italic \"hello,\" \"world.\"}"
		"}"
	}
}

\markup {
	\vspace #1
	\line { \italic "hello,""world."}
}



%{ ***********************************
   * TEMPLATE for score inside markup
   ***********************************
\markup {
	\line \bold { "What this is" }
}
\markup {
	\score {
		\absolute {
			\key f \major
			\clef treble
			\once \override Staff.TimeSignature #'stencil = ##f 
			c' f'' 
		}
	}
}

   ********************************* %}





% Display range and key. They are side by side,
% so they each get a column.
% Nest \score inside \markup to get 2 columns
\markup {
	\vspace #2
	\line 
	\bold { "Score inside markup:" }
}
\markup {
	\hspace #4 \column \typewriter {
		"\\markup {"
		"    \\score {"
		"        \\absolute"
		"        {"
		"            \\key f \\major"
		"            \\clef treble"
		"            \\once \\override Staff.TimeSignature #'stencil = ##f"
		"            c' f''"
		"         }"
		"    }"
		"}"
	}
}

\markup {
	\vspace #1
	\line { "Results:" }
}

\markup {
	\vspace #1
	\score {
		\absolute {
			\key f \major
			\clef treble
			% Suppress time signature
			% I think this also works:  \omit Staff.TimeSignature
			\once \override Staff.TimeSignature #'stencil = ##f 
			 c' f'' 
		}
	}
} % markup




\markup {
	\vspace #1
	 @uref(http://lilypond.org/doc/v2.19/Documentation/notation/formatting-text, Formatting Text)
	\line { "See  @uref(http://lilypond.org/doc/v2.19/Documentation/notation/formatting-text, Formatting Text)" }
}




\markup {
	\vspace #2
	\line \bold { "Insert space before a paragraph of text" }
}
\markup {
	\hspace #8
	\vspace #1
		\column \typewriter {
		"\\markup {"
		"    \\vspace #3 % Replace 3 with desired number of lines"
		"    \\line {\"Space appears before this paragraph\"}"
		"}"
	}
}


\markup {
	\vspace #1
	\line { "Results:" }
}

\markup {
	\hspace #8
	\vspace #3 % Replace 3 with desired number of lines 
	\line {"Space appears before this paragraph"}
}

\markup {
	\line \bold { "Use \\column to create separate lines of text" }
}

\markup {
	\vspace #1
	\column \typewriter {
		"\\markup {"
		"    \\column {"
		"         \"First line\" "
		"         \"Second line\" "
		"         \"And so on\" "
		"     }"
		"}"
	}
	\hspace #10
	
	\column {
		\line {"Results:"}
		\line { " " }
		"First line"
		"Second line"
 		"And so on"
	}
}



\markup {
	\line \bold { "SPECIMEN:" }
}

