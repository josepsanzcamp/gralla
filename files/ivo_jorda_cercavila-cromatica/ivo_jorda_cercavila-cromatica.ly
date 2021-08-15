\version "2.22.1"
% automatically converted by musicxml2ly from ivo_jorda_cercavila-cromatica.xml
\pointAndClickOff

\header {
    title =  "Cromàtica"
    copyright =  "Repertori per a gralles - Cercavila"
    composer =  "Ivó Jordà - 2015"
    tagline=""
    subtitle =  Polca
    }

#(set-global-staff-size 16.530285714285714)
\paper {
    
    paper-width = 21.0\cm
    paper-height = 29.71\cm
    top-margin = 1.27\cm
    bottom-margin = 1.27\cm
    left-margin = 1.52\cm
    right-margin = 1.01\cm
    between-system-space = 1.75\cm
    page-top-space = 1.01\cm
    indent = 1.6153846153846154\cm
    }
\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative e'' {
    \clef "treble" \time 2/4 \key c \major \partial 4. \stemDown e8
    \stemDown f8 [ \stemDown fis8 ] \repeat volta 2 {
        | % 1
        \mark \markup { \musicglyph "scripts.segno" } \stemDown g8 [
        \stemDown c,8 ] \stemDown d8 [ \stemDown dis8 ] | % 2
        \stemDown e8 [ \stemDown g,8 ] \stemUp a8 [ \stemUp ais8 ] | % 3
        \stemDown b8. [ \stemDown d16 ] \stemDown b4 | % 4
        r8 \stemDown d8 \stemDown cis8 [ \stemDown c8 ] | % 5
        \stemDown b8. [ \stemDown d16 ] \stemDown b4 | % 6
        r8 \stemDown cis8 \stemDown d8 [ \stemDown dis8 ] | % 7
        \stemDown e2 | % 8
        r8 \stemDown e8 \stemDown f8 [ \stemDown fis8 ] \break | % 9
        \stemDown g8 [ \stemDown c,8 ] \stemDown d8 [ \stemDown dis8 ] |
        \barNumberCheck #10
        \stemDown e8 [ \stemDown as8 ] \stemDown g8 [ \stemDown fis8 ] | % 11
        \stemDown f2 | % 12
        r8 \stemDown c8 \stemDown d8 [ \stemDown dis8 ] | % 13
        \stemDown e8 [ \stemDown g,8 ] \stemUp a8 [ \stemUp ais8 ] | % 14
        \stemUp b8 [ \stemUp g8 ] \stemDown es'8 [ \stemDown d8 ] | % 15
        \stemDown c2 }
    \alternative { {
            ^\markup{ \bold\tiny {Fine} } | % 16
            r8 \stemDown e8 \stemDown f8 [ \stemDown fis8 ] }
        {
            | % 17
            r8 \stemDown e8 \stemDown g8 [ \stemDown fis8 ] }
        } \break \repeat volta 2 {
        | % 18
        \stemDown f4 \stemDown a4 | % 19
        r8 \stemDown g8 \stemDown fis8 [ \stemDown f8 ] |
        \barNumberCheck #20
        \stemDown e4 \stemDown g4 | % 21
        r8 \stemDown c,8 \stemDown cis8 [ \stemDown d8 ] | % 22
        \acciaccatura { \stemUp f8 } \stemDown e8. [ \stemDown d16 ]
        \acciaccatura { \stemUp f8 } \stemDown e8. [ \stemDown d16 ] | % 23
        \acciaccatura { \stemUp f8 } \stemDown e8. [ \stemDown d16 ]
        \stemDown f16 ( [ \stemDown e16 ) \stemDown d16 \stemDown cis16
        ] }
    \alternative { {
            | % 24
            \stemDown c8. [ \stemDown e16 ] \stemDown g4 | % 25
            r8 \stemDown e8 \stemDown g8 [ \stemDown fis8 ] }
        {
            | % 26
            \stemDown c2 ~ }
        } | % 27
    \stemDown c8 [ \stemDown e8 ] \stemDown f8 [ \stemDown fis8 ]
    ^\markup{ \bold\tiny {D.S. al Fine} } \bar "|."
    }

PartPTwoVoiceOne =  \relative c'' {
    \clef "treble" \time 2/4 \key c \major \partial 4. \stemDown c8
    \stemDown d8 [ \stemDown dis8 ] \repeat volta 2 {
        | % 1
        \stemUp e8 [ \stemUp e,8 ] \stemUp f8 [ \stemUp fis8 ] | % 2
        \stemUp g8 [ \stemUp e8 ] \stemUp f8 [ \stemUp fis8 ] | % 3
        \stemUp g8. [ \stemUp b16 ] \stemUp g4 | % 4
        r8 \stemDown b8 \stemUp ais8 [ \stemUp a8 ] | % 5
        \stemUp g8. [ \stemUp b16 ] \stemUp g4 | % 6
        r8 \stemUp ais8 \stemDown b8 [ \stemDown b8 ] | % 7
        \stemDown c2 | % 8
        r8 \stemDown c8 \stemDown d8 [ \stemDown dis8 ] \break | % 9
        \stemUp e8 [ \stemUp e,8 ] \stemUp f8 [ \stemUp fis8 ] |
        \barNumberCheck #10
        \stemUp g8 [ \stemUp c8 ] \stemDown b8 [ \stemDown bes8 ] | % 11
        \stemUp a2 | % 12
        r8 \stemUp ais8 \stemDown b8 [ \stemDown b8 ] | % 13
        \stemUp c8 [ \stemUp e,8 ] \stemUp f8 [ \stemUp fis8 ] | % 14
        \stemUp g8 [ \stemUp f8 ] \stemUp g8 [ \stemUp f8 ] | % 15
        \stemUp e2 }
    \alternative { {
            | % 16
            r8 \stemDown c'8 \stemDown d8 [ \stemDown dis8 ] }
        {
            | % 17
            R2 }
        } \break \repeat volta 2 {
        | % 18
        r8 \stemUp f,8 \stemDown a8 [ \stemDown c8 ] | % 19
        \stemDown f4 \stemDown c4 | \barNumberCheck #20
        r8 \stemUp e,8 \stemUp g8 [ \stemUp c8 ] | % 21
        \stemDown e8 [ \stemDown c8 ] \stemDown cis8 [ \stemDown d8 ] | % 22
        \acciaccatura { \stemUp d8 } \stemDown c8. [ \stemDown b16 ]
        \acciaccatura { \stemUp d8 } \stemDown c8. [ \stemDown b16 ] | % 23
        \acciaccatura { \stemUp d8 } \stemDown c8. [ \stemDown b16 ]
        \stemUp a16 ( [ \stemUp g16 ) \stemUp fis16 \stemUp f16 ] }
    \alternative { {
            | % 24
            \stemUp e8. [ \stemUp g16 ] \stemDown c4 | % 25
            \stemDown bes2 }
        {
            | % 26
            \stemUp e,2 ~ }
        } | % 27
    \stemUp e8 [ \stemUp c'8 ] \stemDown d8 [ \stemDown dis8 ] \bar "|."
    }

PartPThreeVoiceOne =  \relative c' {
    \clef "treble" \time 2/4 \key c \major \partial 4. r4. \repeat volta
    2 {
        | % 1
        \stemUp c8 \stemUp g'4 \stemUp g8 | % 2
        \stemUp c,8 [ \stemUp g'8 ] \stemUp e8 [ \stemUp g8 ] | % 3
        \stemUp d8 \stemUp g4 \stemUp f8 | % 4
        \stemUp d8 [ \stemUp g8 ] \stemUp b8 [ \stemUp g8 ] | % 5
        \stemUp d8 \stemUp g4 \stemUp f8 | % 6
        \stemUp d8 [ \stemUp g8 ] \stemUp b8 [ \stemUp g8 ] | % 7
        \stemUp c,8 \stemUp g'4 \stemUp g8 | % 8
        \stemUp c,4 r4 \break | % 9
        \stemUp c8 \stemUp g'4 \stemUp g8 | \barNumberCheck #10
        \stemUp c,8 [ \stemUp g'8 ] \stemUp e8 [ \stemUp g8 ] | % 11
        \stemUp f8 \stemUp c4 \stemUp f8 | % 12
        \stemUp a8 [ \stemUp g8 ] \stemUp f8 [ \stemUp d8 ] | % 13
        \stemUp c8 \stemUp g'4 \stemUp g8 | % 14
        \stemUp d8 [ \stemUp g8 ] \stemUp b8 [ \stemUp g8 ] | % 15
        \stemUp c,8 \stemUp g'4 \stemUp e8 }
    \alternative { {
            | % 16
            \stemUp c4 r4 }
        {
            | % 17
            \stemUp c4 r4 }
        } \break \repeat volta 2 {
        | % 18
        \stemUp f8 \stemUp f4 \stemUp c8 | % 19
        \stemUp f4 \stemUp a4 | \barNumberCheck #20
        \stemUp g8 \stemUp g4 \stemUp e8 | % 21
        \stemUp c4 \stemUp g'4 | % 22
        \stemUp g8 \stemUp d4 \stemUp d8 | % 23
        \stemUp g8 \stemUp d4 \stemUp d8 }
    \alternative { {
            | % 24
            \stemUp c8 [ \stemUp e8 ] \stemUp g8 [ \stemUp e8 ] | % 25
            \stemUp c8 [ \stemUp c8 ] \stemUp d8 [ \stemUp e8 ] }
        {
            | % 26
            \stemUp c4 \stemUp g'4 }
        } | % 27
    \stemUp c,4 r4 \bar "|."
    }


% The score definition
\book {

\paper {
  print-page-number = false
}

\bookpart {\score {
    <<
        
        \new StaffGroup
        <<
            \new Staff
            <<
                \set Staff.instrumentName = "Gralla 1"
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
                    >>
                >>
            \new Staff
            <<
                \set Staff.instrumentName = "Gralla 2"
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPTwoVoiceOne" {  \PartPTwoVoiceOne }
                    >>
                >>
            \new Staff
            <<
                \set Staff.instrumentName = "Gralla 3"
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPThreeVoiceOne" {  \PartPThreeVoiceOne }
                    >>
                >>
            
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 120 }
    }\score {
    \unfoldRepeats {
        
        \new StaffGroup
        <<
            \new Staff
            <<
                \set Staff.instrumentName = "Gralla 1"
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
                    >>
                >>
            \new Staff
            <<
                \set Staff.instrumentName = "Gralla 2"
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPTwoVoiceOne" {  \PartPTwoVoiceOne }
                    >>
                >>
            \new Staff
            <<
                \set Staff.instrumentName = "Gralla 3"
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPThreeVoiceOne" {  \PartPThreeVoiceOne }
                    >>
                >>
            
            >>
        
        }
    \midi {\tempo 4 = 120 }
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 120 }
    }}

\bookpart {\score {
    <<
        
        \new StaffGroup
        <<
            \new Staff
            <<
                \set Staff.instrumentName = "Gralla 1"
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
                    >>
                >>
                        
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 120 }
    }\score {
    \unfoldRepeats {
        
        \new StaffGroup
        <<
            \new Staff
            <<
                \set Staff.instrumentName = "Gralla 1"
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
                    >>
                >>
                        
            >>
        
        }
    \midi {\tempo 4 = 120 }
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 120 }
    }}

\bookpart {\score {
    <<
        
        \new StaffGroup
        <<
            \new Staff
            <<
                \set Staff.instrumentName = "Gralla 2"
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPTwoVoiceOne" {  \PartPTwoVoiceOne }
                    >>
                >>
                        
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 120 }
    }\score {
    \unfoldRepeats {
        
        \new StaffGroup
        <<
            \new Staff
            <<
                \set Staff.instrumentName = "Gralla 2"
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPTwoVoiceOne" {  \PartPTwoVoiceOne }
                    >>
                >>
                        
            >>
        
        }
    \midi {\tempo 4 = 120 }
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 120 }
    }}

\bookpart {\score {
    <<
        
        \new StaffGroup
        <<
            \new Staff
            <<
                \set Staff.instrumentName = "Gralla 3"
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPThreeVoiceOne" {  \PartPThreeVoiceOne }
                    >>
                >>
            
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 120 }
    }\score {
    \unfoldRepeats {
        
        \new StaffGroup
        <<
            \new Staff
            <<
                \set Staff.instrumentName = "Gralla 3"
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPThreeVoiceOne" {  \PartPThreeVoiceOne }
                    >>
                >>
            
            >>
        
        }
    \midi {\tempo 4 = 120 }
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 120 }
    }}

}

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a6landscape")
  #(layout-set-staff-size 14)
}

\bookpart {\score {
    <<
        
        \new StaffGroup
        <<
            \new Staff
            <<
                \set Staff.instrumentName = "Gralla 1"
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
                    >>
                >>
                        
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 120 }
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 120 }
    }}

\bookpart {\score {
    <<
        
        \new StaffGroup
        <<
            \new Staff
            <<
                \set Staff.instrumentName = "Gralla 2"
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPTwoVoiceOne" {  \PartPTwoVoiceOne }
                    >>
                >>
                        
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 120 }
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 120 }
    }}

\bookpart {\score {
    <<
        
        \new StaffGroup
        <<
            \new Staff
            <<
                \set Staff.instrumentName = "Gralla 3"
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPThreeVoiceOne" {  \PartPThreeVoiceOne }
                    >>
                >>
            
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 120 }
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 120 }
    }}

}

