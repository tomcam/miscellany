% Minimum Lilypad version required for the non-music variables feature
\version "2.19.54"  

\header {
  	title = "How to create a tunebook with Lilypad"
}

\markup {
	\line \bold { "Adding text:" }
}
\markup {
	\vspace #1
	\column \typewriter {
		"\\markup {"
		"    \"Adding text\""
		"}"
	}
}


% Display range and key. They are side by side,
% so they each get a column.
% Nest \score inside \markup to get 2 columns
\markup {
		\line \bold { "Code inside markup:" }
		\score {
			\absolute 
			{
				\key f \major
				\clef treble
				% Suppress time signature
				\once \override Staff.TimeSignature #'stencil = ##f 
			 c' f'' 
			}
		}
	\line { " " }
} % markup



\markup {
	\vspace #2
	\line \bold { "Here's ow to get code inside markup" }
}
\markup {
	\column \typewriter {
	"\\markup {"
    "    \\score {"
	"        \\absolute"
	"        {"
    "          \\key f \\major"
	"          \\clef treble"
	"          % Suppress time signature"
    "          \\once \\override Staff.TimeSignature #'stencil = ##f "
    ""
    "          c' f''" 
	"        }"
    "    }"
	"}"
	} % \typewriter
}



\markup {
	\vspace #2
	\line \bold { "Changing text attributes" }
}
\markup {
	\vspace #1
	\column \typewriter {
		"\\markup {"
		"    \\line {\"hello,\"} \\bold {\"world\"}"
		"    \\line \\italic {\"hello,\"} {\"world\"}"
		"}"
	}
}
\markup {
	\vspace #1
	\line {"hello," } \bold { "world." }
}
\markup {
	\line  \italic {"hello," } { "world." }
}


\markup {
	\vspace #1
	\line \bold { "Lines of text:" }
}
\markup {
	\vspace #1
	\column \typewriter {
		"\\markup {"
		"    \\line {\"\"}"
		"}"
	}
}

\markup {
	\line \bold { "Formatted Lines of text:" }
}
\markup {
	\vspace #1
	\column \typewriter {
		"\\markup {"
		"    \\line \\bold {\"\"}"
		"}"
	}
}


\markup {
	\vspace #1
	\line \bold { "Multiple lines of unformatted code" }
}
\markup {
	\vspace #1
	\column \typewriter {
        "\\markup {"
         "    \\column \\typewriter {"
         "        % Put text between double quotes."
         "        % Each one creates a new line"
         "        \"\""
         "        \"\""
         "    }"
        "}"
    }
}

\markup {
	\line \bold { "Blank lines" }
}
\markup {
	\vspace #-.25
	\column \typewriter {
		"\\markup {"
        "    % Replace #1 with numbers like #6 or #.25"
		"    \vspace #1"
		"}"
	}
}

