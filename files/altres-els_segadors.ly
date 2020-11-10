\version "2.16.0"

\header {
  dedication="Himne"
  title="      "
  subtitle="Els Segadors"
  subsubtitle="(Himne Nacional de Catalunya)"
  poet=""
  meter=""
  piece=""
  composer=""
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative a'
{
  \clef treble
  \key c \major
  \time 1/4
  a8. b16 \tempo 4 = 70  |
  \time 3/4   c4. d8 b c  |
  a2 c8. d16  |
  e4. e8 g e  |
  %05
  d4 c c8. d16  \bar "||"
  \time 2/4   e8 f b, c  \bar "||"
  \time 3/4   d2 b8. c16  |
  d4 f e8 d  |
  \time 2/4   b8 c a4  |
  %10
  r8 a a8. a16  |
  a2  |
  r8 e' e8. e16  \bar "||"
  \time 3/4   f8. f16 f8 e d e  \bar "||"
  \time 2/4   b4 c  |
  %15
  r8 a a8. a16  |
  a2.  \bar "|." % troigo!
}

liniaroAb =
\relative a'
{
  \tempo 4 = 70
  \clef treble
  \key c \major
  \time 1/4
  a8. b16  |
  \time 3/4   c4. d8 b c  |
  a2 a8. b16  |
  c4. c8 e c ~  |
  %05
  c8 b e4 c8. b16  \bar "||"
  \time 2/4   a2  \bar "||"
  \time 3/4   b8 a gis4 b8. a16  |
  b4 d gis,8 b  |
  \time 2/4   gis4 a  |
  %10
  r8 a a8. a16  |
  a2  |
  r8 c c8. c16  \bar "||"
  \time 3/4   d8. d16 d8 c b4  \bar "||"
  \time 2/4   gis4 a  |
  %15
  r8 e' f8. d16  |
  e2.  \bar "|." % troigo!
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Gralla 1"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument=""}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \midi {}
  }
}

