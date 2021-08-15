\version "2.22.1"
% automatically converted by musicxml2ly from ivo_jorda_cercavila-la_castellera.xml
\pointAndClickOff

\header {
    title =  "La Castellera"
    copyright =  "Repertori per a gralles - Cercavila"
    composer =  "Ivó Jordà - 2010"
    tagline=""
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
PartPOneVoiceOne =  \relative c'' {
    \clef "treble" \time 2/4 \key c \major | % 1
    \stemDown c8 [ _\f \stemDown c16 \stemDown c16 ] \stemDown c16 ( [
    \stemDown g16 ) \stemDown c16 \stemDown e16 ] | % 2
    \stemDown d8 [ \stemDown d16 \stemDown d16 ( ] \stemDown d16 [
    \stemDown a16 ) \stemDown d16 \stemDown f16 ] | % 3
    \stemDown a4 \stemDown g16 ( [ \stemDown f16 ) \stemDown e16
    \stemDown d16 ] | % 4
    \stemDown c4 r8 \stemUp g8 \repeat volta 2 {
        | % 5
        \stemDown c16 ( [ \stemDown d16 ) \stemDown c16 \stemDown b16 ]
        \stemDown c8 [ \stemDown e8 ] | % 6
        \stemDown d8 \stemUp a4 \stemDown f'16 [ \stemDown f16 ] | % 7
        \stemDown f8 [ \stemDown e16 \stemDown e16 ] \stemDown e8 [
        \stemDown d16 \stemDown d16 ] | % 8
        \stemDown d8 [ \stemDown c8 ] \stemUp g8 [ \stemUp g8 ] \break | % 9
        \stemDown e'16 ( [ \stemDown f16 ) \stemDown e16 \stemDown d16 ]
        \stemDown e8 [ \stemDown g8 ] | \barNumberCheck #10
        \stemDown f8 [ \stemDown a8 ] \stemDown a4 | % 11
        \stemDown g4 \stemDown g4 }
    \alternative { {
            | % 12
            \stemDown c,4 r8 \stemUp g8 }
        {
            | % 13
            \stemDown c8 [ \stemDown e8 ( ] \stemDown d8 ) [ \stemDown c8
            ] }
        } \repeat volta 2 {
        | % 14
        \stemDown e2 ~ | % 15
        \stemDown e8 [ \stemDown e8 ( ] \stemDown d8 ) [ \stemDown c8 ]
        | % 16
        \stemDown a'8 \stemDown g4. ~ | % 17
        \stemDown g8 [ \stemDown e8 ( ] \stemDown d8 ) [ \stemDown c8 ]
        | % 18
        \stemDown b8 ( [ \stemDown d8 ) ] \stemDown g8 [ \stemDown f8 ]
        | % 19
        \stemDown e8 ( [ \stemDown d8 ) ] \stemDown c8 [ \stemDown b8 ]
        \break | \barNumberCheck #20
        \stemDown c8 ( [ \stemDown d8 ) ] \stemDown e4 ~ | % 21
        \stemDown e8 [ \stemDown e8 ( ] \stemDown d8 ) [ \stemDown c8 ]
        | % 22
        \stemDown e2 ~ | % 23
        \stemDown e8 [ \stemDown c8 ( ] \stemDown d8 ) [ \stemDown e8 ]
        | % 24
        \stemDown f8 \stemDown a4. ~ | % 25
        \stemDown a8 [ \stemDown a8 ] \stemDown b8 [ \stemDown a8 ] | % 26
        \stemDown g8. [ \stemDown f16 ] \stemDown d8 [ \stemDown e8 ] | % 27
        \stemDown f8 [ \stemDown f8 ] \stemDown e8 [ \stemDown d8 ] \bar
        "||"
        \stemDown c4 r4 ^\markup{ \bold\tiny {To Coda} } \bar "||"
        r4 _\mf r8 \stemUp g8 \bar "||"
        \break | \barNumberCheck #30
        \key es \major \stemDown c16 ( [ \stemDown d16 ) \stemDown c16
        \stemDown b16 ] \stemDown c8 [ \stemDown es8 ] | % 31
        \stemDown d8 [ \stemDown as8 ~ ] \stemUp as4 | % 32
        \stemDown c8 ^. [ _\mp \stemDown b8 ^. ] \stemDown b8 ^. r8 | % 33
        \stemUp as8 _. [ _\mf \stemUp g8 _. ] \stemUp g8 _. [ \stemUp g8
        ] | % 34
        \stemDown e'16 ( [ \stemDown f16 ) \stemDown e16 \stemDown d16 ]
        \stemDown e8 [ \stemDown g8 ] | % 35
        \stemDown f8 [ \stemDown as8 ] \stemDown as8 r8 \bar "||"
        \stemDown g8 [ \stemDown f16 \stemDown es16 ] \stemDown d8 [
        \stemDown es16 \stemDown d16 ] ^\markup{ \bold\tiny {D.C. al
                Coda} } \bar "||"
        \key c \major \mark \markup { \musicglyph "scripts.coda" }
        \stemDown c4 ^. \stemDown g'4 ^- | % 38
        \stemDown c4 ^> r4 \bar "|."
        }
    }

PartPTwoVoiceOne =  \relative g' {
    \clef "treble" \time 2/4 \key c \major | % 1
    \stemUp g4 _\f r8 \stemDown c16 [ \stemDown c16 ] | % 2
    \stemUp a4 r8 \stemDown d16 [ \stemDown d16 ] | % 3
    \stemDown f4 ^. \stemDown b,4 ^> | % 4
    \stemDown c4 r4 \repeat volta 2 {
        | % 5
        \stemUp g8 [ _\mf \stemUp g16 \stemUp g16 ] \stemUp g8 [ \stemUp
        c8 ] | % 6
        r8 \stemDown d8 \stemDown d8 [ \stemDown c8 ] | % 7
        \stemDown b4 \stemDown b4 | % 8
        \stemUp g8 [ \stemUp g8 ] \stemUp g8 r8 \break | % 9
        \stemDown c8 [ \stemDown c16 \stemDown b16 ] \stemDown c8 [
        \stemDown b8 ] | \barNumberCheck #10
        \stemUp a4. \stemDown b16 [ \stemDown c16 ] | % 11
        \stemDown d8 [ \stemDown b16 \stemDown c16 ] \stemDown d8 [
        \stemDown d8 ] }
    \alternative { {
            | % 12
            \stemDown e8 [ \stemDown g,8 ] \stemUp g8 r8 }
        {
            | % 13
            \stemUp g4 r4 }
        } \repeat volta 2 {
        | % 14
        r8 \stemDown c8 ( \stemUp b8 [ \stemUp a8 ) ] | % 15
        \stemUp g2 ~ | % 16
        \stemUp g8 [ \stemUp g8 ( ] \stemUp a8 ) [ \stemUp b8 ] | % 17
        \stemDown c2 | % 18
        \stemDown b4 \stemDown d4 | % 19
        \stemDown b8 [ \stemDown b8 ] \stemUp a8 [ \stemUp g8 ] \break |
        \barNumberCheck #20
        \stemUp g4. \stemDown c8 | % 21
        \stemDown c4 r4 | % 22
        r8 \stemDown c8 ( \stemUp b8 [ \stemUp a8 ) ] | % 23
        \stemUp g2 | % 24
        r8 \stemDown c8 ( \stemUp b8 ) [ \stemUp a8 ] | % 25
        \stemDown c8 [ \stemDown c8 ] \stemDown d8 [ \stemDown c8 ] | % 26
        \stemUp b8. [ \stemUp a16 ] \stemDown b8 [ \stemDown c8 ] | % 27
        \stemDown d8 [ \stemDown d8 ] \stemDown c8 [ \stemDown b8 ] \bar
        "||"
        \stemDown c8 ^. [ _\f \stemDown es16 \stemDown es16 ] \stemDown
        g8 [ \stemDown es8 ] \bar "||"
        \stemDown g8 [ \stemDown es8 ] \stemDown g8 [ \stemDown es8 ]
        \bar "||"
        \break | \barNumberCheck #30
        \key es \major \stemDown es8 ^. [ _\mp \stemDown es8 ^. ]
        \stemDown es8 ^. r8 | % 31
        \stemDown d8 ^. [ \stemDown d8 ^. ] \stemDown d8 ^. [ \stemDown
        f16 _\mf \stemDown f16 ] | % 32
        \stemDown f8 [ \stemDown es16 \stemDown es16 ] \stemDown es8 [
        \stemDown d16 \stemDown d16 ] | % 33
        \stemDown d8 [ \stemDown c8 ] \stemUp g8 r8 | % 34
        \stemDown c8 ^. [ _\mp \stemDown c8 ^. ] \stemDown c8 ^. r8 | % 35
        \stemDown c8 ^. [ \stemDown c8 ^. ] \stemDown c8 ^. r8 \bar "||"
        \stemDown d8 [ \stemDown d16 \stemDown c16 ] \stemDown b8 [
        \stemDown c16 \stemDown b16 ] \bar "||"
        \key c \major \stemDown c4 ^. \stemDown b4 ^- | % 38
        \stemDown c4 ^> r4 \bar "|."
        }
    }

PartPThreeVoiceOne =  \relative e' {
    \clef "treble" \time 2/4 \key c \major | % 1
    \stemUp e4 _\f r8 \stemUp g16 [ \stemUp g16 ] | % 2
    \stemUp f4 r8 \stemUp a16 [ \stemUp a16 ] | % 3
    \stemDown d4 ^. \stemUp g,4 ^> | % 4
    \stemUp e4 r4 \repeat volta 2 {
        | % 5
        \stemUp e4 _\mf \stemUp e8 [ \stemUp g8 ] | % 6
        \stemUp f4 \stemUp a4 | % 7
        \stemUp g8 [ \stemUp a8 ] \stemUp g8 [ \stemUp f8 ] | % 8
        \stemUp e8 [ \stemUp e8 ] \stemUp e8 r8 \break | % 9
        \stemUp e8 [ \stemUp g8 ] \stemUp e8 [ \stemUp g8 ] |
        \barNumberCheck #10
        \stemUp f4. \stemUp g16 [ \stemUp a16 ] | % 11
        \stemUp b8 [ \stemUp g16 \stemUp a16 ] \stemDown b8 [ \stemDown
        b8 ] }
    \alternative { {
            | % 12
            \stemUp c8 [ \stemUp e,8 ] \stemUp e8 r8 }
        {
            | % 13
            \stemUp e4 r4 }
        } \repeat volta 2 {
        | % 14
        \stemUp e4 \stemUp g4 | % 15
        \stemDown c4 r4 | % 16
        r8 \stemUp e,8 ( \stemUp f8 [ \stemUp g8 ] | % 17
        \stemUp a8 ) [ \stemUp g8 ( ] \stemUp f8 [ \stemUp e8 ) ] | % 18
        \stemUp g4. \stemUp a8 | % 19
        \stemUp g4. \stemUp f8 \break | \barNumberCheck #20
        \stemUp e4. \stemUp e8 | % 21
        \stemUp g4 r4 | % 22
        \stemUp e4 \stemUp g4 | % 23
        \stemDown c4 \stemDown bes4 | % 24
        \stemUp a8 ( [ \stemUp g8 ) ] \stemUp f4 ~ | % 25
        \stemUp f4 r4 | % 26
        \stemUp g8. [ \stemUp f16 ] \stemUp g8 [ \stemUp g8 ] | % 27
        \stemUp a4 \stemUp g4 \bar "||"
        \stemUp e8 _. [ _\f \stemUp g16 \stemUp g16 ] \stemUp g8 [
        \stemUp g8 ] \bar "||"
        \stemUp g8 [ \stemUp g8 ] \stemUp g8 [ \stemUp g8 ] \bar "||"
        \break | \barNumberCheck #30
        \key es \major \stemUp g8 _. [ _\mp \stemUp g8 _. ] \stemUp g8
        _. r8 | % 31
        \stemUp f8 _. [ \stemUp f8 _. ] \stemUp f8 _. r8 | % 32
        \stemUp as8 _. [ \stemUp g8 _. ] \stemUp g8 _. r8 | % 33
        \stemUp f8 _. [ \stemUp es8 _. ] \stemUp es8 _. r8 | % 34
        \stemUp g8 _. [ \stemUp g8 _. ] \stemUp g8 _. r8 | % 35
        \stemUp f8 _. [ \stemUp f8 _. ] \stemUp f8 _. r8 \bar "||"
        \stemUp f4 \stemUp g4 \bar "||"
        \key c \major \stemUp e4 _. \stemUp f4 _- | % 38
        \stemUp e4 ^> r4 \bar "|."
        }
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

