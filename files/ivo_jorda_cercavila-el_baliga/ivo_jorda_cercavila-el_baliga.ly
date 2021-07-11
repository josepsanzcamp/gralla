\version "2.22.1"
% automatically converted by musicxml2ly from ivo_jorda_1_cercavila-el_baliga.xml
\pointAndClickOff

\header {
    title =  "El Baliga"
    copyright =  "Repertori per a gralles - Cercavila"
    composer =  "Ivó Jordà - 2012"
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
    \clef "treble" \time 2/4 \key g \major | % 1
    \stemDown g8 [ \stemDown g16 \stemDown g16 ] \stemDown fis8 [
    \stemDown fis16 \stemDown fis16 ] | % 2
    \stemDown g8 [ \stemDown d8 ] \stemDown g8 [ \stemDown fis8 ]
    \repeat volta 2 {
        | % 3
        \stemDown g2 | % 4
        r8 \stemDown d8 \stemDown g8 [ \stemDown fis8 ] | % 5
        \stemDown e2 | % 6
        r8 \stemDown d8 \stemDown e8 [ \stemDown d8 ] | % 7
        \stemDown fis8 [ \stemDown fis8 ] \stemDown e8 [ \stemDown d8 ]
        | % 8
        \stemDown fis8 [ \stemDown fis8 ] \stemDown e8 [ \stemDown d8 ]
        | % 9
        \stemDown b4. \stemDown c8 \break | \barNumberCheck #10
        \stemDown b8 [ \stemDown d8 ] \stemDown g8 [ \stemDown fis8 ] | % 11
        \stemDown g2 | % 12
        r8 \stemDown d8 \stemDown g8 [ \stemDown fis8 ] | % 13
        \stemDown e2 | % 14
        r8 \stemDown e8 \stemDown c8 [ \stemDown b8 ] | % 15
        \stemDown c8 [ \stemDown c8 ] \stemDown b8 [ \stemDown c8 ] | % 16
        \stemDown d8 [ \stemDown d8 ] \stemDown e8 [ \stemDown fis8 ] | % 17
        \stemDown g2 ~ | % 18
        \stemDown g4 \stemDown d4 \bar "||"
        \break | % 19
        \stemDown d4 \stemDown c8 [ \stemDown b8 ~ ] | \barNumberCheck
        #20
        \stemDown b8 [ \stemDown b8 ] \stemDown c8 [ \stemDown d8 ] | % 21
        \stemDown e4 \stemDown g8 [ \stemDown e8 ~ ] | % 22
        \stemDown e4 \stemDown g4 | % 23
        \stemDown fis4 \stemDown e8 [ \stemDown d8 ~ ] | % 24
        \stemDown d8 [ \stemDown d8 ] \stemDown e8 [ \stemDown c8 ] | % 25
        \stemDown d4 \stemDown c8 [ \stemDown b8 ~ ] | % 26
        \stemDown b4 \stemDown d4 | % 27
        \stemDown d4 \stemDown c8 [ \stemDown b8 ~ ] \break | % 28
        \stemDown b8 [ \stemDown b8 ] \stemDown c8 [ \stemDown d8 ] | % 29
        \stemDown e4 \stemDown g8 [ \stemDown e8 ~ ] | \barNumberCheck
        #30
        \stemDown e4 \stemDown g4 | % 31
        \stemDown fis4 \stemDown e8 [ \stemDown d8 ~ ] | % 32
        \stemDown d8 [ \stemDown fis8 ] \stemDown e8 [ \stemDown d8 ] }
    \alternative { {
            | % 33
            \stemDown g2 ~ | % 34
            \stemDown g8 [ \stemDown d8 ] \stemDown g8 [ \stemDown fis8
            ] }
        {
            | % 35
            \stemDown g2 ~ }
        } | % 36
    \stemDown g4 r4 \bar "|."
    }

PartPTwoVoiceOne =  \relative b' {
    \clef "treble" \time 2/4 \key g \major | % 1
    \stemDown b8 [ \stemDown b16 \stemDown b16 ] \stemDown c8 [
    \stemDown c16 \stemDown c16 ] | % 2
    \stemDown b8 r8 r4 \repeat volta 2 {
        | % 3
        r8 \stemDown b8 \stemDown d8 [ \stemDown c8 ] | % 4
        \stemDown b2 | % 5
        r8 \stemUp g8 \stemDown c8 [ \stemDown b8 ] | % 6
        \stemDown c2 | % 7
        \stemUp a4. \stemUp a8 | % 8
        \stemUp a4. \stemUp a8 | % 9
        \stemUp g4. \stemUp a8 \break | \barNumberCheck #10
        \stemUp g8 r8 r4 | % 11
        r8 \stemDown b8 \stemDown d8 [ \stemDown c8 ] | % 12
        \stemDown b2 | % 13
        r8 \stemUp g8 \stemDown c8 [ \stemDown b8 ] | % 14
        \stemDown c2 | % 15
        \stemUp a4. \stemUp a8 | % 16
        \stemUp a4. \stemUp a8 | % 17
        \stemDown g8 [ \stemDown d'16 \stemDown e16 ~ ] \stemDown e16 [
        \stemDown d16 \stemDown b8 ] | % 18
        \stemUp g4 \stemDown b4 \bar "||"
        \break | % 19
        \stemDown b4 \stemUp a8 [ \stemUp g8 ~ ] | \barNumberCheck #20
        \stemUp g8 [ \stemUp g8 ] \stemUp a8 [ \stemUp b8 ] | % 21
        \stemDown c4 \stemUp c8 [ \stemUp g8 ~ ] | % 22
        \stemUp g4 \stemDown c4 | % 23
        \stemDown d4 \stemDown c8 [ \stemDown b8 ~ ] | % 24
        \stemDown b8 [ \stemDown b8 ] \stemDown c8 [ \stemDown a8 ] | % 25
        \stemDown b4 \stemUp a8 [ \stemUp g8 ~ ] | % 26
        \stemUp g8 [ \stemUp g8 ] \stemUp a8 [ \stemUp b8 ] | % 27
        \stemDown b4 \stemUp a8 [ \stemUp g8 ~ ] \break | % 28
        \stemUp g8 [ \stemUp g8 ] \stemUp a8 [ \stemUp b8 ] | % 29
        \stemDown c4 \stemUp c8 [ \stemUp g8 ~ ] | \barNumberCheck #30
        \stemUp g4 \stemUp g4 | % 31
        \stemUp a8 \stemUp a4 \stemDown b8 | % 32
        \stemDown c8 \stemDown c4 \stemUp a8 }
    \alternative { {
            | % 33
            \stemDown b2 ~ | % 34
            \stemDown b8 r8 r4 }
        {
            | % 35
            \stemDown b2 ~ }
        } | % 36
    \stemDown b4 r4 \bar "|."
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

