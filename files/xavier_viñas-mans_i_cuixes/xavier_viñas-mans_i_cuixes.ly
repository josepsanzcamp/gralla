\version "2.16.2"

\header {
  dedication=""
  title="Mans i cuixes"
  subtitle=""
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer=""
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  c8. c16 a8. g16  |
  c8. c16 a8. g16  |
  c8  c4 e8 ~  |
  e4. r8  |
  %05
  c8. c16 a8. g16  |
  c8. c16 a8. g16  |
  c8 c4 g8 ~  |
  g4. r8  |
  c8. c16 a8. g16  |
  %10
  c8. c16 a8. g16  |
  c8 c4 e8 ~  |
  e4. r8  |
  \times 2/3 { g8 g g } \times 2/3 { f f f }  |
  \times 2/3 { e8 e e } \times 2/3 { d d d }  |
  %15
  c8. g16 a8 c ~  |
  c4 r  |
  \repeat volta 2 { g'4 f  |
  d8. g16 f8 g ~  |
  g4 r  |
  %20
  g4 f  |
  d8. g16 f8 c ~ }
  \alternative { { c4 r }
  { \mark "D.C." c4 r } } \bar "||"
}

\score {
  \new StaffGroup {
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    <<
      \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
    >>
  }
  \layout {}
}
\score { \unfoldRepeats
  \new StaffGroup {
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    <<
      \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
    >>
  }
  \midi {}
}
