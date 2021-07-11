\version "2.22.1"
% automatically converted by musicxml2ly from ivo_jorda_1_cercavila-sota_un_temps_de_pluja.xml
\pointAndClickOff

\header {
    title =  "Sota un temps de pluja"
    copyright =  "Repertori per a gralles - Cercavila"
    composer =  "Ivó Jordà - 2013"
    subtitle =  Pasdoble
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
PartPOneVoiceOne =  \relative g'' {
    \repeat volta 2 {
        \clef "treble" \time 2/4 \key c \major | % 1
        \stemDown g16 ^> [ \stemDown g16 ^> \stemDown g8 ^> ] \stemDown
        f16 ^> [ \stemDown f16 ^> \stemDown f8 ^> ] | % 2
        \stemDown e8 ^> [ \stemDown g,8 ] \stemDown c8 [ \stemDown d8 ]
        \repeat volta 2 {
            | % 3
            \stemDown e8 [ \stemDown d8 ] \stemDown c8 [ \stemDown d8 ]
            | % 4
            \stemDown e8 [ \stemDown d8 ] \stemDown c8 [ \stemDown e8 ]
            | % 5
            \stemDown d4 \stemDown d4 | % 6
            r8 \stemUp g,8 \stemDown b8 [ \stemDown c8 ] | % 7
            \stemDown d8 [ \stemDown c8 ] \stemDown b8 [ \stemDown c8 ]
            | % 8
            \stemDown d8 [ \stemDown f8 ] \stemDown e8 [ \stemDown d8 ]
            \break | % 9
            \stemDown e4 \stemDown e4 | \barNumberCheck #10
            r8 \stemUp g,8 \stemDown c8 [ \stemDown d8 ] | % 11
            \stemDown e8 [ \stemDown d8 ] \stemDown c8 [ \stemDown d8 ]
            | % 12
            \stemDown e8 [ \stemDown g8 ] \stemDown f8 [ \stemDown e8 ]
            | % 13
            \stemDown f4 \stemDown f4 | % 14
            r8 \stemUp g,8 \stemDown b8 [ \stemDown c8 ] | % 15
            \stemDown d8 [ \stemDown c8 ] \stemDown b8 [ \stemDown c8 ]
            }
        \alternative { {
                | % 16
                \stemDown d8 [ \stemDown f8 ] \stemDown e8 [ \stemDown d8
                ] | % 17
                \stemDown e2 | % 18
                r8 \stemUp g,8 \stemDown c8 [ \stemDown d8 ] }
            } \break }
    \alternative { {
            | % 19
            \stemDown d8 [ \stemDown f8 ] \stemDown e8 [ \stemDown d8 ]
            }
        } | \barNumberCheck #20
    \stemDown c2 | % 21
    r8 \stemDown g'8 \stemDown g8 [ \stemDown f8 ] \bar "||"
    \stemDown e4. \stemDown d8 | % 23
    \stemDown c8 [ \stemDown d8 ] \stemDown c8 [ \stemDown b8 ] | % 24
    \stemUp a2 | % 25
    r8 \stemDown f'8 \stemDown f8 [ \stemDown e8 ] | % 26
    \stemDown d4. \stemDown c8 | % 27
    \stemDown b8 [ \stemDown c8 ] \stemUp b8 [ \stemUp a8 ] | % 28
    \stemUp g2 \break | % 29
    r8 \stemDown g'8 \stemDown g8 [ \stemDown f8 ] | \barNumberCheck #30
    \stemDown e4. \stemDown e8 | % 31
    \stemDown f8 [ \stemDown e8 ] \stemDown f8 [ \stemDown g8 ] | % 32
    \stemDown a2 | % 33
    r8 \stemDown d,8 \stemDown e8 [ \stemDown f8 ] | % 34
    \stemDown e8 [ \stemDown g8 ] \stemDown g4 | % 35
    \stemDown d8 [ \stemDown g8 ] \stemDown g8 [ \stemDown b,8 ] | % 36
    \stemDown c4 ^. \stemDown b4 ^- | % 37
    \stemDown c4 r4 \bar "|."
    }

PartPTwoVoiceOne =  \relative b' {
    \repeat volta 2 {
        \clef "treble" \time 2/4 \key c \major | % 1
        \stemDown b16 ^> [ \stemDown b16 ^> \stemDown b8 ^> ] \stemDown
        b16 ^> [ \stemDown b16 ^> \stemDown b8 ^> ] | % 2
        \stemUp c8 _> [ \stemUp g8 ] \stemDown c8 [ \stemDown b8 ]
        \repeat volta 2 {
            | % 3
            \stemDown c4 \stemUp a4 | % 4
            \stemUp g4 \stemUp e4 | % 5
            \stemUp f8 [ \stemUp g16 \stemUp a16 ] \stemDown b8 [
            \stemDown b16 \stemDown c16 ] | % 6
            \stemDown d8 [ \stemDown g,8 ] \stemUp g8 [ \stemUp a8 ] | % 7
            \stemDown b4 \stemUp g4 | % 8
            \stemUp f4 \stemUp g4 \break | % 9
            \stemDown c8 [ \stemDown b16 \stemDown a16 ] \stemUp g8 [
            \stemUp g16 \stemUp f16 ] | \barNumberCheck #10
            \stemUp e8 [ \stemUp g8 ] \stemDown c8 [ \stemDown b8 ] | % 11
            \stemDown c4 \stemUp a4 | % 12
            \stemUp g4 \stemDown bes4 | % 13
            \stemUp a8 [ \stemUp a16 \stemUp g16 ] \stemUp f8 [ \stemUp
            f16 \stemUp g16 ] | % 14
            \stemUp a8 [ \stemUp g8 ] \stemUp g8 [ \stemUp a8 ] | % 15
            \stemUp b8 [ \stemUp a8 ] \stemUp g8 [ \stemUp a8 ] }
        \alternative { {
                | % 16
                \stemUp b8 [ \stemUp g8 ] \stemUp g8 [ \stemUp b8 ] | % 17
                \stemDown c4 \stemUp g8 [ \stemUp f8 ] | % 18
                \stemUp e8 [ \stemUp g8 ] \stemDown c8 [ \stemDown b8 ]
                }
            } \break }
    \alternative { {
            | % 19
            \stemUp b8 [ \stemUp g8 ] \stemUp g8 [ \stemUp f8 ] }
        } | \barNumberCheck #20
    \stemUp e2 | % 21
    r8 \stemDown e'8 \stemDown e8 [ \stemDown d8 ] \bar "||"
    \stemDown c4. \stemUp f,8 | % 23
    \stemUp e8 [ \stemUp f8 ] \stemUp e8 [ \stemUp g8 ] | % 24
    \stemUp f2 | % 25
    r8 \stemDown d'8 \stemDown d8 [ \stemDown c8 ] | % 26
    \stemDown b4. \stemUp a8 | % 27
    \stemUp g8 [ \stemUp a8 ] \stemUp g8 [ \stemUp f8 ] | % 28
    \stemUp e2 \break | % 29
    r8 \stemDown e'8 \stemDown e8 [ \stemDown d8 ] | \barNumberCheck #30
    \stemDown cis4. \stemDown cis8 | % 31
    \stemDown d8 [ \stemDown cis8 ] \stemDown d8 [ \stemDown e8 ] | % 32
    \stemDown f2 | % 33
    r8 \stemUp f,8 \stemUp g8 [ \stemUp a8 ] | % 34
    \stemUp g8 [ \stemUp b8 ] \stemDown b4 | % 35
    \stemDown b8 [ \stemDown b8 ] \stemUp f8 [ \stemUp f8 ] | % 36
    \stemUp e4 _. \stemUp f4 _- | % 37
    \stemUp e4 r4 \bar "|."
    }


% The score definition
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

