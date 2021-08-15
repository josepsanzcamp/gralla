\version "2.22.1"
% automatically converted by musicxml2ly from ivo_jorda_cercavila-polca_dels_primers_dies.xml
\pointAndClickOff

\header {
    title =  "Polca dels primers dies"
    copyright =  "Repertori per a gralles - Cercavila"
    composer =  "Ivó Jordà - 2012"
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
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative b' {
    \clef "treble" \time 2/4 \key g \major \partial 8 \stemDown b16 [
    \stemDown c16 ] \repeat volta 2 {
        | % 1
        \stemDown d8 [ \stemDown g8 ] \stemDown g8 [ \stemDown fis8 ] | % 2
        \stemDown g8 [ \stemDown e8 ] \stemDown e8 [ \stemDown e16
        \stemDown d16 ] | % 3
        \stemDown c8 [ \stemDown a16 \stemDown b16 ] \stemDown c16 ( [
        \stemDown e16 ) \stemDown d16 \stemDown c16 ] | % 4
        \stemDown b8 [ \stemDown c8 ] \stemDown d8 [ \stemDown b16
        \stemDown c16 ] | % 5
        \stemDown d8 [ \stemDown g8 ] \stemDown g8 [ \stemDown fis8 ] | % 6
        \stemDown e8 [ \stemDown a8 ] \stemDown a8 [ \stemDown a16
        \stemDown g16 ] \break | % 7
        \stemDown fis8 [ \stemDown e16 \stemDown fis16 ] \stemDown b8 [
        \stemDown a8 ] }
    \alternative { {
            | % 8
            \stemDown g8 [ \stemDown g8 ] \stemDown g8 [ \stemDown b,16
            \stemDown c16 ] }
        {
            \bar "||"
            \stemDown g'8 [ \stemDown g8 ] \stemDown fis8 [ \stemDown f8
            ] }
        } \repeat volta 2 {
        | \barNumberCheck #10
        \key c \major \stemDown e8 [ \stemDown e16 \stemDown f16 ]
        \stemDown g8 [ \stemDown e8 ] | % 11
        \stemDown d16 ( [ \stemDown e16 ) \stemDown d16 \stemDown c16 ]
        \stemDown b4 | % 12
        \stemDown d8 [ \stemDown d16 \stemDown e16 ] \stemDown f8 [
        \stemDown d8 ] \break | % 13
        \stemDown e8 [ \stemDown f8 ] \stemDown g4 | % 14
        \stemDown gis8 [ \stemDown e16 \stemDown fis16 ] \stemDown gis8
        [ \stemDown b8 ] | % 15
        \stemDown a16 ( [ \stemDown b16 ) \stemDown a16 \stemDown gis16
        ] \stemDown a4 | % 16
        \stemDown d,8 [ \stemDown d16 \stemDown e16 ] \stemDown f8 [
        \stemDown b,8 ] }
    \alternative { {
            | % 17
            \stemDown d8 [ \stemDown c8 ] \stemDown c4 }
        {
            \bar "||"
            \stemDown c4. \stemDown b16 [ \stemDown c16 ] }
        } | % 19
    \key g \major \stemDown d8 [ \stemDown g8 ] \stemDown g8 [ \stemDown
    fis8 ] | \barNumberCheck #20
    \stemDown g8 [ \stemDown e8 ] \stemDown e8 [ \stemDown e16 \stemDown
    d16 ] \break | % 21
    \stemDown c8 [ \stemDown a16 \stemDown b16 ] \stemDown c16 ( [
    \stemDown e16 ) \stemDown d16 \stemDown c16 ] | % 22
    \stemDown b8 [ \stemDown c8 ] \stemDown d8 [ \stemDown b16 \stemDown
    c16 ] | % 23
    \stemDown d8 [ \stemDown g8 ] \stemDown g8 [ \stemDown fis8 ] | % 24
    \stemDown e8 [ \stemDown a8 ] \stemDown a8 [ \stemDown a16 \stemDown
    g16 ] | % 25
    \stemDown fis8 [ \stemDown e16 \stemDown fis16 ] \stemDown b8 [
    \stemDown a8 ] | % 26
    \stemDown g8 [ \stemDown g8 ] \stemDown g4 \bar "|."
    }

PartPTwoVoiceOne =  \relative g' {
    \clef "treble" \time 2/4 \key g \major \partial 8 r8 \repeat volta 2
    {
        | % 1
        r4 r8 \stemUp g16 [ \stemUp a16 ] | % 2
        \stemDown b8 [ \stemDown c8 ] \stemDown c8 [ \stemDown c16
        \stemDown b16 ] | % 3
        \stemDown c8 \stemDown c4 \stemDown c8 | % 4
        \stemDown b8 [ \stemDown c8 ] \stemDown b8 r8 | % 5
        r4 r8 \stemUp g16 [ \stemUp a16 ] | % 6
        \stemDown b8 [ \stemDown c8 ] \stemDown c8 [ \stemDown c16
        \stemDown b16 ] \break | % 7
        \stemUp a8 [ \stemUp g16 \stemUp a16 ] \stemDown d8 [ \stemDown
        c8 ] }
    \alternative { {
            | % 8
            \stemDown b8 [ \stemDown b8 ] \stemDown b8 r8 }
        {
            \bar "||"
            \stemDown b8 [ \stemDown b8 ] \stemUp a8 [ \stemUp b8 ] }
        } \repeat volta 2 {
        | \barNumberCheck #10
        \key c \major \stemDown c8 [ \stemDown c16 \stemDown d16 ]
        \stemDown e8 [ \stemDown c8 ] | % 11
        \stemDown b16 ( [ \stemDown c16 ) \stemDown b16 \stemDown a16 ]
        \stemUp g4 | % 12
        \stemDown b8 [ \stemDown b8 ] \stemUp g8 [ \stemUp b8 ] \break | % 13
        \stemDown c8 [ \stemDown b8 ] \stemDown c4 | % 14
        \stemDown b8 \stemDown b4 \stemDown b8 | % 15
        \stemDown c16 ( [ \stemDown d16 ) \stemDown c16 \stemDown b16 ]
        \stemDown c4 | % 16
        \stemDown b8 [ \stemDown b16 \stemDown b16 ] \stemDown b8 [
        \stemDown d8 ] }
    \alternative { {
            | % 17
            \stemDown f8 [ \stemDown e8 ] \stemDown e4 }
        {
            \bar "||"
            \stemDown e2 }
        } | % 19
    \key g \major r4 r8 \stemUp g,16 [ \stemUp a16 ] | \barNumberCheck
    #20
    \stemDown b8 [ \stemDown c8 ] \stemDown c8 [ \stemDown c16 \stemDown
    b16 ] \break | % 21
    \stemDown c8 \stemDown c4 \stemDown c8 | % 22
    \stemDown b8 [ \stemDown c8 ] \stemDown b8 r8 | % 23
    r4 r8 \stemUp g16 [ \stemUp a16 ] | % 24
    \stemDown b8 [ \stemDown c8 ] \stemDown c8 [ \stemDown c16 \stemDown
    b16 ] | % 25
    \stemUp a8 [ \stemUp g16 \stemUp a16 ] \stemDown d8 [ \stemDown c8 ]
    | % 26
    \stemDown b8 [ \stemDown b8 ] \stemDown b4 \bar "|."
    }

PartPThreeVoiceOne =  \relative g' {
    \clef "treble" \time 2/4 \key g \major \partial 8 \stemUp g16 [
    \stemUp a16 ] \repeat volta 2 {
        | % 1
        \stemDown b8 [ \stemDown b8 ] \stemDown b8 [ \stemDown c8 ] | % 2
        \stemUp g8 [ \stemUp g8 ] \stemUp g8 r8 | % 3
        \stemUp a8 \stemUp a4 \stemUp a8 | % 4
        \stemUp g8 [ \stemUp a8 ] \stemUp g8 [ \stemUp g16 \stemUp a16 ]
        | % 5
        \stemDown b8 [ \stemDown b8 ] \stemDown b8 [ \stemDown c8 ] | % 6
        \stemUp g8 [ \stemUp a8 ] \stemUp a8 r8 \break | % 7
        \stemUp a4 \stemUp b8 [ \stemUp a8 ] }
    \alternative { {
            | % 8
            \stemUp g8 [ \stemUp g8 ] \stemUp g8 [ \stemUp g16 \stemUp a16
            ] }
        {
            \bar "||"
            \stemUp g8 [ \stemUp g8 ] \stemUp a8 [ \stemUp g8 ] }
        } \repeat volta 2 {
        | \barNumberCheck #10
        \key c \major r8 \stemUp g8 r8 \stemUp g8 | % 11
        \stemUp g8 [ \stemUp g8 ] \stemUp g16 ( [ \stemUp a16 ) \stemUp
        b16 \stemUp a16 ] | % 12
        \stemUp g8 [ \stemUp g8 ] r8 \stemUp g8 \break | % 13
        \stemUp g8 [ \stemUp g8 ] \stemUp g4 | % 14
        \stemUp gis8 \stemUp gis4 \stemUp gis8 | % 15
        \stemUp a8 [ \stemUp a8 ] \stemUp a16 ( [ \stemUp b16 ) \stemUp
        c16 \stemUp a16 ] | % 16
        \stemUp g8 [ \stemUp g16 \stemUp g16 ] \stemUp g8 [ \stemUp g8 ]
        }
    \alternative { {
            | % 17
            \stemUp g8 [ \stemUp g8 ] \stemUp g4 }
        {
            \bar "||"
            \stemUp g4. \stemUp g16 [ \stemUp a16 ] }
        } | % 19
    \key g \major \stemDown b8 [ \stemDown b8 ] \stemDown b8 [ \stemDown
    c8 ] | \barNumberCheck #20
    \stemUp g8 [ \stemUp g8 ] \stemUp g8 r8 \break | % 21
    \stemUp a8 \stemUp a4 \stemUp a8 | % 22
    \stemUp g8 [ \stemUp a8 ] \stemUp g8 [ \stemUp g16 \stemUp a16 ] | % 23
    \stemDown b8 [ \stemDown b8 ] \stemDown b8 [ \stemDown c8 ] | % 24
    \stemUp g8 [ \stemUp a8 ] \stemUp a8 r8 | % 25
    \stemUp a4 \stemUp b8 [ \stemUp a8 ] | % 26
    \stemUp g8 [ \stemUp g8 ] \stemUp g4 \bar "|."
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

