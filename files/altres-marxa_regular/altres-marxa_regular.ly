\version "2.16.0"

\header {
  dedication="Processó"
  title="             "
  subtitle="Marxa regular"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Josep Olivella, març de 1895"
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
  \time 4/4
  e4 \times 2/3 { e8 e e } d4 g  |
  e8. d16 c8. e16 g2  |
  a4 \times 2/3 { a8 a a } \times 2/3 { g a b } c8. e,16  |
  g4. f16 e d4 r  |
  %05
  f4 \times 2/3 { f8 f f } e4 a  |
  a2 ~ \times 2/3 { a8 g f } \times 2/3 { e f d }  |
  c4 g' d g  |
  e8. f16 d8. e16 c4 r  \bar "||"
  e2. \times 2/3 { d8 e d }  |
  %10
  c4 g c e  |
  g2. \times 2/3 { f8 g f }  |
  e4 e f g  |
  a2. \times 2/3 { e8 f g }  |
  f8 r f4 ~ \times 2/3 { f8 e d } \times 2/3 { c b a }  |
  %15
  g4 \times 2/3 { g8 c e } e4 d  |
  c4 b c8 r r4  |
  \repeat volta 2 { e2 e  |
  e2 e  |
  d2 e4 d  |
  %20
  f2 e  |
  f2 c4 d  |
  e2 c4 a  |
  g2 e'4 d  |
  c8 r b4 c8 r r4  | }
}

liniaroAb =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  c4 \times 2/3 { c8 c c } b4 b  |
  c8. g16 e8. c'16 e2  |
  f4 \times 2/3 { f8 f f } \times 2/3 { e f f } e8. c16  |
  b4. d16 c b4 r  |
  %05
  d4 \times 2/3 { d8 d d } cis4 cis  |
  d4 f4. r8 a,4  |
  e4 r b' r  |
  c4 b c r  \bar "||"
  r4 c r b  |
  %10
  r4 e, g c  |
  e2. \times 2/3 { d8 e d }  |
  c4 c d e  |
  cis2. \times 2/3 { cis8 d e }  |
  d8 r d4 ~ \times 2/3 { d8 c b } \times 2/3 { a g f }  |
  %15
  e4 \times 2/3 { e8 g c } g4 f  |
  e4 f e8 r r4  |
  \repeat volta 2 { c'2 b  |
  c2 c  |
  b2 b4 b  |
  %20
  c2 c  |
  c2 c4 c  |
  c2 a4 f  |
  e2 g  |
  e8 r f4 e8 r r4  | }
}

liniaroAc =
\relative c
{
  \tempo 4=120
  \clef "treble_8"
  \key c \major
  \time 4/4
  c4 r g' g  |
  c,4 r c8 d e c  |
  f4 r c c  |
  g'2 ~ g4 r  |
  %05
  d4 r a' a  |
  d,4 r r f  |
  c4 r g' r  |
  c,4 g' c, r  \bar "||"
  c4 g' d g  |
  %10
  c,4 r r g'  |
  c,4 r g' r  |
  c,4 r r g'  |
  a4 r a r  |
  d,4 r r2  |
  %15
  c4 r c g'  |
  c,4 g' c,8 r r4  |
  \repeat volta 2 { g'2 gis  |
  a2 g  |
  g2 g4 g  |
  %20
  a2 g  |
  gis2 gis4 gis  |
  g2 f4 c  |
  c2 f  |
  c8 r g'4 c,8 r r4  | }
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
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3" } \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3" } \liniaroAc
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
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
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
        \new Staff \with {instrumentName = #"Gralla 3" } \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 3" } \liniaroAc
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
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
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
        \new Staff \with {instrumentName = #"Gralla 3" } \liniaroAc
      >>
    }
    \layout {}
  }
}

}

