%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                             %
%                                             %
%         SAVE UNDER NEW TITLE NOW!           %
%                                             %
%                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "settings.ly"

\header{
  	title = "TITLE"
	composer = "Trad."
	tagline = ""
}

% Display range and key. They are side by side,
% so they each get a column.
% Nest \score inside \markup to get 2 columns
\markup {
 	\column {
		\line \bold { "Range:" }
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
	}
 	\hspace #10 % Add some right margin to the first column
 	\column {
 		\bold "Key:"
		"F Major"
	} % column
	\line { " " }
} % markup


% Everything enclosed by these brackets plays simultaneously
<<
	\relative f' {
		\key f \major
		\time 4/4
		\clef treble 
		c d e f
	} 
	
	\addlyrics {
	} 

% Everything enclosed by these brackets plays simultaneously
>>


