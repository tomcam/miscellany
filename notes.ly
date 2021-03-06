% Minimum Lilypad version required for the non-music variables feature
% \include "settings.ly"

\header {
  	title = "How to create a tunebook with Lilypad"
}

bullet = \markup { \char ##x2022 }

%{ ***********************************
   * MULTILINE COMMENT TEMPLATE
   * 
   ********************************* 
%}


%{ ***********************************
   * TEMPLATE for score inside markup
   * Using 2-column format
   ***********************************
%{ ***********************************
   * 
   * 
   * 
   ********************************* 
%}

%{ ***********************************

\markup {
	\vspace #2
	\column {
		\wordwrap \bold { "XXX" } 
		\wordwrap { A note about
			\typewriter {"\\XX"} {":"}
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
			"    \\grace a8 g4 fis8 e4 g8 |"
			"}"
			"\\addlyrics {"
			"    W X Y, Z |"
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
				\grace a8 g4 fis8 e4 g8 |
			}
			\addlyrics {
				W X Y, Z |
			}
			>>
		}
	}	
}

\markup {
	\vspace #1
	\line {"To XXX, visit http:XXX"}
}

*********************************** %}


\markup {
	\vspace #1
	\column {
		\line \bold { "To do:" } 
		\wordwrap {  { \bullet } Bass clef section unfinished }
		\wordwrap {  { \bullet } Explain triplets better }
		\wordwrap {  { \bullet } wordwrap section not wrapping! }
		\wordwrap {  { \bullet } Figure out how to get HTML links working }
		\wordwrap {  { \bullet } Figure out how to get old in markup }
		\wordwrap {  { \bullet } Do a better job with bar lines. See http://lilypond.org/doc/v2.19/Documentation/notation/  }
	}

}



%{ ***********************************
   * 
   * WRITING THE SCORE 1.
   * 
   *********************************** 
%}

\markup {
	\vspace #2
	\fontsize #6
	\line \bold { "Writing the score" } 
}


\markup {
	\vspace #1
	\column {
		\bold { "The minimum file" } 
		\line {  { \bullet } "From the" \bold { File } "menu, choose" \bold "New" }
		"A simple notepad appears."

		\wordwrap {  { \bullet } "The first line should be" \typewriter { "\\version",} followed by whatever the current version of Lilypad is in quotes. }
		"For example:"
		\typewriter {"\\version \"2.19.54\"" }
		"If you don't know the version number, you can find it out like this:"
		\wordwrap {  { \bullet } "From the" \bold { LilyPond } "menu, choose" \bold {About LilyPond} "and look at the numbers and dots following the word" \bold "Version" }
		\line { " " }
		\line {  { \bullet } "Follow it with the notes of the score:"}
		\typewriter {
         	"{"
         	"     c d e f"
         	"}"
		}
		"So the whole file looks like this:"
		\hspace #8 \column {
			\typewriter {
         		"\\version \"2.19.54\" "  
         		"{"
         		"     c d e f"
         		"}"
			}
		"To see what it will look like, you need to typeset the file, but first save it."
		\line {  { \bullet } "From the" \bold { File } "menu, choose" \bold "Save" or press Command+Save. }
		"Now compile it:" 
		\line {  { \bullet } "From the" \bold { Compile } "menu, choose" \bold "Typeset" or press Command+R. } 
		}
	}
}

\markup {
	\vspace #1
	\line { "Results:" }
}

{
	c d e f
}

%{ ***********************************
   * 
   * CHANGING THE CLEF
   * 
   ********************************* 
%}

\markup {
	\column {
		\line \bold { Changing the clef }
		\wordwrap { 
			You can see that's not the natural range for the notes.
			The clef is assumed to be treble. You can specify the clef easily
			using \typewriter { "\\clef" }
		}
	}
}


\markup {
	\vspace #1
	\column {
		\hspace #8 \column \typewriter {
			"\\version \"2.19.54\" "  
			"{"
			"    \\clef bass"
			"     c d e f"
			"}"
		}
	}
	\column {
		\line { " " }
		\line { " " }
		\line { " " }
		\score {
			\absolute {
				\clef bass
				{ c d e f }
			}	
			
		}
	}	
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
	\column {
		\wordwrap \bold { "To add grace notes that aren't included in the note count, use" } 
		\typewriter {"\\grace"} {"followed by the grace note." }
		\wordwrap { 
		In this case, the \typewriter {"\\grace a8"} isn't applied to
		the measure count.
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
			"    \\grace a8 g4 fis8 e4 g8 |"
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
				\grace a8 g4 fis8 e4 g8 |
			}
			\addlyrics {
				can of grog, If |
			}
			>>
		}
	}	
}

\markup {
	\vspace #1
	\line {"To learn about constructs similar to grace notes, visit http://lilypond.org/doc/v2.18/Documentation/notation/special-rhythmic-concerns"}
}

%{ ***********************************
   * 
   * Trill 1
   * 
   ********************************* 
%}

\markup {
	\vspace #2
	\column {
		\wordwrap \bold { "Adding a trill mark above the note" } 
		\wordwrap { 

			To create a { \bold \italic tr } just add
			\typewriter { "\\trill" } directly after the note name, 
			with no space. For example, \typewriter { "c8" } becomes
			 \typewriter { "c8\\trill" }. In the example below, the 
			trill is being added over a grace note.
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
			"    \\grace c8\\trill b4. a8 g8. [b16] |"
			"}"
			"\\addlyrics {"
			"    plea- sure this _ |"
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
				\grace c8\trill b4. a8 g8. [b16]  | 
			}
			\addlyrics {
				plea- sure this _ |
			}
			>>
		}
	}	
}

\markup {
	\vspace #1
	\line {"See also http://lilypond.org/doc/v2.19/Documentation/notation/expressive-marks-as-lines#trills"}
}


%{ ***********************************
   * 
   * Note length #1: Whole and half
   * 
   ********************************* 
%}

\markup {
	\vspace #2
	\line 
	{   \bold { "Append" \typewriter {"1"} { "to make a whole note,"}
		{"and"} \typewriter {"2"} {"to make a half note."} }
	} 
}

\markup {
	\vspace #1
	\column {
		\hspace #8 \column \typewriter {
			"\\version \"2.19.54\" "  
			"\\relative c' {"
			"\\time 4/4"
         	"     c2 d2 | e1"
 			"}"
		}
	}
	\column {
		\line { " " }
		\score {
			\relative c' {
			\time 4/4
				 c2 d2 | e1
			}
		}
	}	
}

%{ ***********************************
   * 
   * Note length #2: Quarters and eighths
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
   * Note length #3: Sixteenths, etc
   * 
   ********************************* 
%}

\markup {
	\vspace #2
	\fontsize #4
	\line \bold { "Note lengths: sixteenths and beyond" } 
}

\markup {
	\vspace #2
	\column {
		\wordwrap \bold { "Append" \typewriter 16 "to make it a 16th note," \typewriter 32 "to make it a 32nd note, and so on." }
		\wordwrap { "By the way, the" \typewriter [  and 
			\typewriter ] ensure beams are used instead of flags.  }
	}
}

\markup {
	\vspace #1
	\column {
		\hspace #8 \column \typewriter {
			"\\version \"2.19.54\" "  
			"\\relative c' {"
			"\\time 2/4"
			"     c8 d e16 f g"
			"     a b32 [c32 d32 e32]"
			"}"
		}
	}
	\column {
		\line { " " }
		\score {
			\relative c' {
			\time 2/4
				c8 d e16 f g
				a b32 [c32 d32 e32]
				
			}
		}
	}	
}





%{ ***********************************
   * 
   * Note length #4 : Repeat shortcut
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
   * Adding phrase marks INTRO
   * 
   *********************************** 
%}


\markup {
	\vspace #2
	\column {
		\line \bold { "Adding phrase marks and beams" } 
		\wordwrap { 
			In this example the last beat needs a phrase mark over the 
			both sixteenths and the eight notes:
		}
	}
}


%{ ***********************************
   * 
   * Adding beams
   * 
   *********************************** 
%}


\markup {
	\vspace #2
	\column {
		\wordwrap \bold { "Adding beams: Using [ and ] to replace flags with beams." } 
		\wordwrap { Use parentheses \typewriter {"["} and \typewriter {"]"} 		to surround the all but the first note to be included in the phrase. 		Here's what the code looks like, first without the brackets and
		second with the brackets. Note that the \typewriter {"e16"} is 		not included, just the trailing notes: \typewriter { "[fis16 g8]"}
		}
	}
}

\markup {
	\vspace #1
	\column {
		\hspace #8 \column \typewriter {
			"\\version \"2.19.54\" "  
			"\\relative e'' {"
			"     \\key e \\minor"
			"     \\time 3/4"
			"     e2 e16 fis16 g8"
			"}"
		}
	}
	\column {
		\line { " " }
		\line { " " }
		\line { " " }
		\line { " " }
		\score {
			\version "2.19.54" 
			\relative e'' { 
				\autoBeamOff	
				\key e \minor
				\time 3/4
				e2 e16 fis16 g8      
			}
		}
	}	
}


\markup {
	\vspace #1
	\column {
		\hspace #8 \column \typewriter {
			"\\version \"2.19.54\" "  
			"\\relative e'' {"
			"     \\key e \\minor"
			"     \\time 3/4"
			"     e2 e16 [fis16 g8]"
			"}"
		}
	}
	\column {
		\line { " " }
		\line { " " }
		\line { " " }
		\line { " " }
		\score {
			\version "2.19.54" 
			\relative e'' { 	
				\key e \minor
				\time 3/4
				e2 e16 [fis16 g8]      
			}
		}
	}	
}


%{ ***********************************
   * 
   * Adding phrase marks
   * 
   *********************************** 
%}


\markup {
	\vspace #2
	\column {
		\wordwrap \bold { "Adding phrase marks: Using ( and ) to show phrasing." } 
		\wordwrap { Use parentheses \typewriter {"("} and \typewriter {")"} 		to surround the all but the first note to be included in the phrase. 		Here's what the code looks like. Note that the \typewriter {"e16"} is 		not included, just the trailing notes: \typewriter { "([fis16 g8])"}
		}
	}
}


\markup {
	\vspace #1
	\column {
		\hspace #8 \column \typewriter {
			"\\version \"2.19.54\" "  
			"\\relative e'' {"
			"     \\key e \\minor"
			"     \\time 3/4"
			"     e2 e16 ([fis16 g8])"
			"}"
		}
	}
	\column {
		\line { " " }
		\line { " " }
		\line { " " }
		\line { " " }
		\score {
			\version "2.19.54" 
			\relative e'' { 	
				\key e \minor
				\time 3/4
				e2 e16 ([fis16 g8])      
			}
		}
	}	
}


%{ ***********************************
   * 
   * Triplets
   * 
   ********************************* 
%}


\markup {

	\vspace #2
	\column {
		\wordwrap \bold { "Triplets" } 
		\wordwrap { 
			Use \typewriter {"\\tuplet"}, followed by fraction
			 (\typewriter {"3/2"} in this case), followed by the notes
			enclosed in \typewriter {"{"} and \typewriter {"}"}.
		}
	}
}

\markup {
	\vspace #1
	\column {
		\hspace #8 \column \typewriter {
			"\\version \"2.19.54\" "  
			"\\relative g' {"
			"    \\key g \\major"
			"    \\clef treble"
			"    \\time 4/4"
			"    \\tuplet 3/2 {c8 [b a]} d c b4. b8"
			"}"
		}
	}
	\column {
		\line { " " }
		\line { " " }
		\line { " " }
		\line { " " }
		\line { " " }
		\score {
			\relative g' {
				\key g \major
				\clef treble
				\time 4/4
					\tuplet 3/2 {c8 [b a]} d c b4. b8 
			}
		}
	}	
}



%{ ***********************************
   * 
   * Triplets with phrase marks
   * 
   ********************************* 
%}


\markup {

	\vspace #2
	\column {
		%\wordwrap \bold { "Triplets" } 
		\wordwrap  { 
			"To get a phrase mark, surround the second two notes with parentheses:" 
		} 
	}
}

\markup {
	\vspace #1
	\column {
		\hspace #8 \column \typewriter {
			"\\version \"2.19.54\" "  
			"\\relative g' {"
			"    \\key g \\major"
			"    \\clef treble"
			"    \\time 4/4"
			"    \\tuplet 3/2 {c8 ([(b a])} d c b4. b8"
			"}"
		}
	}
	\column {
		\line { " " }
		\line { " " }
		\line { " " }
		\line { " " }
		\line { " " }
		\score {
			\relative g' {
				\key g \major
				\clef treble
				\time 4/4
					\tuplet 3/2 {c8 ([(b a])} d c b4. b8 
			}
		}
	}	
}




%{ ***********************************
   * 
   * FERMATA
   * 
   ********************************* 
%}

\markup {

	\vspace #2
	\column {
		\wordwrap \bold { "Fermatas" } 
		\wordwrap { 
			To add a fermata, simply append
			\typewriter {"\\fermata"} to the note with no space: 
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
			"    g8 a b d4.\\fermata |"
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

%{ ***********************************
   * 
   * BAR LINES AND REPEATS
   * 
   ********************************* 
%}
% http://lilypond.org/doc/v2.19/Documentation/notation/bars

\markup {
	\vspace #2
	\fontsize #4
	\line {   
		\bold { "Bar lines"}		 
	} 
	\column{
		\line { "See more at http://lilypond.org/doc/v2.19/Documentation/notation/bars" 
		}
	}
}


\markup {
	\vspace #1
	\column { \bold { "Double bar lines:"}		 
		\hspace #8 \column \typewriter {
			"\\version \"2.19.54\" "  
			"\\relative c' {"
			"\\time 4/4"
            "    f4 e d c \\bar \"|.\" "
 			"}"
		}
	}
	\column {
		\line { " " }
		\line { " " }
		\line { " " }
		\line { " " }
	 	\score {
			\relative c' {
			\time 4/4
				f4 e d c \bar "|."
			}
		}
	}	
}

\markup {
	\vspace #1
	\column {\bold { "Repeats:"}		 
		\hspace #8 \column \typewriter {
			"\\version \"2.19.54\" "  
			"\\relative c' {"
			"\\time 4/4"
            "    f4 e d c \\bar \":|]\" "
 			"}"
		}
	}
	\column {
		\line { " " }
		\line { " " }
		\line { " " }
		\line { " " }
		\score {
			\relative c' {
			\time 4/4
				f4 e d c \bar ":|]"
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


%{ ***********************************
   * 
   * MARKUP
   * 
   *********************************** 
%}

%{ ***********************************
   * 
   * \line
   * 
   *********************************** 
%}

\markup {
	\vspace #2
	\fontsize #6
	\line \bold { "Markup (adding explanatory text)" } 
}

\markup {
	\vspace #2
	\column {
		\wordwrap \bold { 
		For lines of text that do not word wrap use
		\typewriter {"\\line"}: 
		}
	}
}

\markup {
	\hspace #8
	\vspace #1
	\column \typewriter {
		"\\version \"2.19.54\" "  
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

%{ ***********************************
   * 
   * \wordwrap
   * 
   *********************************** 
%}

\markup {
	\vspace #2
	\column {
		\wordwrap \bold { 
		For lines of text that do word wrap use
		\typewriter {"\\wordwrap"}: 
		}
	}
}

\markup {
	\hspace #8
	\vspace #1
	\column \typewriter {
		"\\version \"2.19.54\" "  
		"\\markup {"
		"    \\wordwrap {\"Learning LilyPond markup can be a little overwhelming at first, but the flip side is that you end up learning how to create beautifully typeset music in a very short time once you've learned some of the techniques presented here. All of them are presented in a superior way by the LilyPond documentation. The only advantage of this lesson is that it focuses specifically on getting simple songs engraved as quickly sa possible.\"}"
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
	\column {
		\wordwrap { "Learning LilyPond markup can be a little overwhelming at first, but the flip side is that you end up learning how to create beautifully typeset music in a very short time once you've learned some of the techniques presented here. All of them are presented in a superior way by the LilyPond documentation. The only advantage of this lesson is that it focuses specifically on getting simple songs engraved as quickly sa possible." }
	}
}

% ///


%{ ***********************************
   * 
   * \vspace
   * 
   *********************************** 
%}


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
	\vspace #1
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
	
	\column {
		\line {" "}
		\line { " " }
		"First line"
		"Second line"
 		"And so on"
	}
}


%{ ***********************************
   * 
   * VARIABLES
   * 
   *********************************** 
%}

\markup {
	\vspace #2
	\column {
		\line \bold { "Variables-Creating your own markup elements" } 
		\line { "The bullet character looks like this:" \bullet }
		\line { "Entering it in text means using its Unicode value, like this: " \typewriter { "\\char ##x2022" } }

		\wordwrap { 
			"That's hard to remember and harder to read. Instead, you could create your own markup element named "  
			\typewriter {"\\bullet"}  
			"by defining a variable like this:" 
		}
	}
}

\markup {
	\vspace #1
	\hspace #8 \column {
		\line \typewriter {
			"bullet = \\markup {\\char ##x2022 }"
		}
	}
}

\markup {
	\vspace #1
	\column {
		\wordwrap { 
			"You would then use it by preceding it with a \\ character like any other markup. Here's a complete example of how you'd use it. Save this as a file and compile it:"
		}
	}
}

\markup {
	\vspace #1
	\hspace #8 \column {
		\typewriter {
				"\\version \"2.19.54\" "  
				"bullet = \\markup {\\char ##x2022 }"
				"\\markup {"
				"    \\line { { \bullet } Don't forget backup }"				"}"
		}
	}
	\column {
		\line { " " }
		\line { " " }
		\line { " " }
		\line { { \bullet } Don't forget backup }
	}

}

\markup {
	\vspace #9 \line \bold { "SPECIMEN:" }
	
}


\markup {
	\column {
	}
}

