\version "2.16.0"

\header {
  dedication=""
  title="  "
  subtitle="Marxa dels armats de Manresa"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="El Bages"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  e8. d16 (  |
  \time 4/4   \repeat volta 2 { c8-. r ) e4 ( d8-. r ) f4 (  |
  e8-. ) r e2 d8. c16  |
  b8. c16 d4 ~ d8. d16 e8. d16  |
  %05
  d4. b8 c-. r e8. ( d16 )  |
  c8-. r ( e4 ) d8-. ( r f4 ) (  |
  e8-. ) r a2 f8. ( d16  |
  c8-. ) r c4 ( b8-. ) r b4 (  |
  c8-. ) r c4-. c8-. r b8. ( c16 )  |
  %10
  d4. c8 ( b r c8. ) d16 (  |
  e4. d8 c ) r e8. ( d16  |
  c8 ) r c4 c8 e d c  |
  c4. ( d16 c b8 ) r b8. c16  |
  d4. c8 b r c8. d16 (  |
  %15
  e4. d8 c ) r e8. ( d16  |
  c8 ) r c4 ( b8 ) r b4 (  |
  c8 ) r c4-. c8-. r g4  \bar "||"
  g'4 f e f  |
  g8. a16 g8. f16 e8 r g,4  |
  %20
  g'4 g8. g16 a8 g f e  |
  f2 r4 d8. e16  |
  f4 f f8 g a f  |
  e8 d e f g4 r8. g16  |
  g8. a16 g8-. r16 e f8. g16 f8 r16 d }
  %25
  \alternative { { c4-. c-. c8-. r e8. ( d16 ) }
  { c4-. c-. c8-. r r4 } } \bar "||"
}

liniaroAb =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  c8. b16 (  |
  \time 4/4   \repeat volta 2 { a8-. r ) c4 b8-. ( r ) d4 (  |
  c8-. ) r c2 b8. a16  |
  gis8. a16 b4 ~ b8. b16 c8. b16  |
  %05
  b4. gis8 a-. r c8. ( b16 )  |
  a8-. r ( c4 ) b8-. ( r d4 ) (  |
  c8-. ) r f2 d8. ( b16  |
  a8-. ) r a4 ( gis8-. ) r gis4 (  |
  a8-. ) r a4-. a8-. r gis8. ( a16 )  |
  %10
  b4. a8 ( gis r a8. ) b16 (  |
  c4. b8 a ) r c8. ( b16  |
  a8 ) r a4 a8 c b a  |
  a4. ( b16 a gis8 ) r gis8. a16  |
  b4. a8 gis r a8. b16 (  |
  %15
  c4. b8 a ) r c8. ( b16  |
  a8 ) r a4 ( gis8 ) r gis4 (  |
  a8 ) r a4-. a8-. r g4  \bar "||"
  e'4 d c d  |
  e8. f16 e8. d16 c8 r g4  |
  %20
  e'4 e8. e16 f8 e d c  |
  d2 r4 b8. c16  |
  d4 d d8 e f d  |
  c8 b c d e4 r8. e16  |
  e8. f16 e8-. r16 c d8. e16 d8 r16 b }
  %25
  \alternative { { a4-. a-. a8-. r c8. ( b16 ) }
  { c4-. c-. c8-. r r4 } } \bar "||"
}

\book {

\paper {
  print-page-number = false
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
        \new Staff \with {instrumentName = #"" } \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
        \new Staff \with {instrumentName = #"" } \liniaroAb
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"" } \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"" } \liniaroAb
      >>
    }
    \midi {}
  }
}

}

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a6landscape")
  #(layout-set-staff-size 14)
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
      >>
    }
    \layout {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"" } \liniaroAb
      >>
    }
    \layout {}
  }
}

}

