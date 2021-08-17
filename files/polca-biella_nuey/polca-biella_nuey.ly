\version "2.16.0"

\header {
  dedication="Polca"
  title="  "
  subtitle="Biella nuey"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Blas Coscollar"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative b''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 1/8
  b16 a  |
  \time 2/4   \repeat volta 2 { g8 fis g a  |
  g8 fis fis4  |
  c16 d e fis g8 fis  |
  %05
  e8 d d8. b16  |
  d8. b16 e8. b16  |
  d8 c c8. c16  |
  e8. c16 fis8. c16  |
  e8 d d b'16 a  |
  %10
  g8 fis g a  |
  g8 fis fis8. e16  |
  dis8 e fis a  |
  g4 r8 e16 fis  |
  \times 2/3 { g8 fis g } \times 2/3 { a g a }  |
  %15
  b8 d, r16 b d g  |
  fis8 e fis a }
  \alternative { { g4 g8 b16 a }
  { g4 g8 r } }
  \key c \major   \repeat volta 2 { e8 g e c  |
  %20
  f8 f f4  |
  f8 a f d  |
  a'8 g g4  |
  gis8 gis gis gis  |
  a4 r8. g16  |
  %25
  fis8 fis fis fis  |
  g4 r8. f16  |
  e8 g e c  |
  f8 f f4  |
  f8 a f d  |
  %30
  a'8 g g4  |
  a8 c a f  |
  e4 r8 g  |
  a8 g f d  |
  c4 c8 r  | }
}

liniaroAb =
\relative d''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 1/8
  r8  |
  \time 2/4   \repeat volta 2 { d8 d d d  |
  d8 d d4  |
  a8 d16 d d8 d  |
  %05
  c8 b b4  |
  b4 b  |
  b8 a a4  |
  c4 c  |
  c8 b b4  |
  %10
  d8 d d d  |
  d8 d d4  |
  b8 cis d dis  |
  e4 r  |
  e8 e16 fis e8 d  |
  %15
  d8 b r16 b b b  |
  d8 c d c }
  \alternative { { b4 b8 r }
  { b4 b8 r } }
  \key c \major   \repeat volta 2 { c8 e c a  |
  %20
  c8 b b4  |
  d8 f d b  |
  f'8 e e4  |
  e8 e d d  |
  c4 r8. e16  |
  %25
  d8 d c c  |
  b4 r8. d16  |
  c8 e c a  |
  c8 b b4  |
  d8 f d b  |
  %30
  f'8 e e4  |
  f8 a f d  |
  c4 r8 e  |
  f8 d b g  |
  c4 c8 r  | }
}

liniaroAc =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 1/8
  r8  |
  \time 2/4   \repeat volta 2 { r8 b r b  |
  r8 c c4  |
  r8 c r c  |
  %05
  r8 g g4  |
  r8 g r g  |
  r8 c c4  |
  r8 a r a  |
  r8 g g4  |
  %10
  r8 b r b  |
  r8 c c4  |
  r8 b r b  |
  c4 r  |
  r8 c r d  |
  %15
  r8 g, r g  |
  r8 d' r d }
  \alternative { { d4 d8 r }
  { d4 d8 r } }
  \key c \major   \repeat volta 2 { g,4 g  |
  %20
  g8 g g4  |
  g4 g  |
  b8 c c4  |
  b4 b  |
  c4 r  |
  %25
  a4 a  |
  b4 r  |
  g4 g  |
  g8 g g4  |
  g4 g  |
  %30
  b8 c c4  |
  c4 r8 g  |
  g4 r8 c  |
  c4 g  |
  c4 c8 r  | }
}

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a4")
  #(layout-set-staff-size 20)
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
        \new Staff \with {instrumentName = #"" } \liniaroAb
        \new Staff \with {instrumentName = #"" } \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
        \new Staff \with {instrumentName = #"" } \liniaroAb
        \new Staff \with {instrumentName = #"" } \liniaroAc
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

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"" } \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"" } \liniaroAc
      >>
    }
    \midi {}
  }
}

}

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a5landscape")
  #(layout-set-staff-size 16)
  #(define output-suffix "a5")
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

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"" } \liniaroAc
      >>
    }
    \layout {}
  }
}

}

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a6landscape")
  #(layout-set-staff-size 12)
  #(define output-suffix "a6")
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

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"" } \liniaroAc
      >>
    }
    \layout {}
  }
}

}

