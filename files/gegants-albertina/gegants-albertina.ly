\version "2.16.0"

\header {
  dedication="Ball de gegants"
  title="  "
  subtitle="Albertina"
  subsubtitle="Sardana curta del gegants de Navata"
  poet=""
  meter=""
  piece=""
  composer="Albert Cuevas"
  arranger="Arr. Perepau Jiménez, 1989"
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative g''
{
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 { g4 d8. e16 \tempo 4 = 100  |
  f8 e d4  |
  d8 e d c  |
  b4 g  |
  %05
  g'4 d8. e16  |
  f8 e d4  |
  d8 e d c }
  \alternative { { d4 r }
  { d4 r8 b16 c } }
  %10
  \repeat volta 2 { \mark \markup {\musicglyph #"scripts.segno"} d8 d e e  |
  f8 f e e  |
  d8 d c c  |
  b4 g8 b16 c  |
  d8 d e e  |
  %15
  f8 f e e  |
   d8 d e fis }
  \alternative { { g4 r8 b,16 c }
  { \mark "D.C." g'4 r } }
  \repeat volta 2 {
  b4 a8 g  |
  %20
  a4. g8  |
  f8 e f a  |
  g4 d  |
  b'4 a8 g  |
  a4. g8  |
  %25
  f8 e f a }
  \alternative { { g4 r }
  { \mark "D.S." g4 r8 b,16 c } }
  \mark \markup {\musicglyph #"scripts.coda"} r4 g'-.  \bar "|."
}

liniaroAb =
\relative g''
{
  \tempo 4 = 100
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 { g4 f  |
  c4 b  |
  b8 c4 a8  |
  g8 b g4  |
  %05
  d'4 b8 c  |
  a4. c8  |
  b8 c4 a8 }
  \alternative { { g4 r }
  { g4 r8 g16 a } }
  %10
  \repeat volta 2 { b4-. b8 c  |
  d4-. c8 b  |
  a4-. g8 a  |
  g4-. r8 g16 a  |
  b4-. b8 c  |
  %15
  d4-. c8 b  |
  a8 ( b c d ) }
  \alternative { { b4 r8 g16 a }
  { b4 r } }
  \repeat volta 2 {
  d8 b16 c d8 b  |
  %20
  c8 d e4  |
  a,8 c4 d8  |
  d4 b  |
  d8 b16 c d8 e  |
  d8 e f4  |
  %25
  c8 a4 d8 }
  \alternative { { b4 r }
  { b4 r8 g16 a } }
  r4 b-.  \bar "|."
}

liniaroAc =
\relative g''
{
  \tempo 4 = 100
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 { g4 d8. e16 _"Només com a segona"  |
  f8 e d4  |
  d8 e d c  |
  b4 g  |
  %05
  g'4 d8. e16  |
  f8 e d4  |
  d8 e d c }
  \alternative { { d4 r }
  { d4 r } }
  %10
  \repeat volta 2 { r8 g,-. g4-.  |
  r8 g-. g4-.  |
  r8 g-. g4-.  |
  r8 g-. g4-.  |
  r8 g-. g4-.  |
  %15
  r8 g-. g4-.  |
  a8 ( b c d ) }
  \alternative { { b4 r }
  { b4 r } }
  \repeat volta 2 {
  d4 b  |
  %20
  c4. c8  |
  f8 c4 d8  |
  d4 d  |
  d4 b  |
  c4. c8  |
  %25
  f8 e c8. d16 }
  \alternative { { b4 r }
  { d4 r } }
  r4 g,-.  \bar "|."
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
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
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
  \header {instrument="Gralla 2"}
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

\bookpart {
  \header {instrument="Gralla 3"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
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
  \header {instrument="Gralla 1"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \layout {}
  }
}

\bookpart {
  \header {instrument="Gralla 2"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \layout {}
  }
}

\bookpart {
  \header {instrument="Gralla 3"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \layout {}
  }
}

}

