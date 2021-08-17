\version "2.16.0"

\header {
  dedication="Vals"
  title="  "
  subtitle="Camilo"
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
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \repeat volta 2 { \time 1/4 g4  |
  \time 3/4   g'2.  |
  r4 g4. a8  |
  e2.  |
  %05
  r8 e d c b a  |
  f'2.  |
  r8 f e d cis d  |
  a'2.  |
  g4 r g,  |
  %10
  g'2.  |
  r4 g4. a8  |
  e2.  |
  r8 e d c b a  |
  f'2 d8 c  |
  %15
  b4 e4. d8 }
  \alternative { { c2 r4 }
  { c8 d16 c b8 c e g } }
  \mark "Fine" c4 r2  |
  \repeat volta 2 { e,4 a g  |
  %20
  e4 d4. c8  |
  e2 r4  |
  r2 r4  |
  e4 a g  |
  e4 d4. e8  |
  %25
  f2 r4  |
  r2 r4  |
  a4 d c  |
  a4 f4. d8  |
  b2.  |
  %30
  r2 d8 e  |
  f2.  |
  r2 a4  |
  g2.  |
  r2 r4  |
  %35
  e4 a g  |
  e4 d4. c8  |
  e2 r4  |
  r2 r4  |
  e4 a g  |
  %40
  f4 e4. cis8  |
  e2.  |
  d2 r4  |
  d4 e f  |
  a2 gis4  |
  %45
  g2.  |
  r2 r4  |
  f4 g a  |
  b2 d4  |
  \mark "D.C. al Fine" c2 r4  | }
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \repeat volta 2 { \time 1/4 g4  |
  \time 3/4   e'2.  |
  r4 e4. f8  |
  c4. d8 b4  |
  %05
  c8 c b a g a  |
  d4. f8 d4  |
  g8 d c b ais b  |
  dis4 f2  |
  e4 r g,  |
  %10
  e'2.  |
  r4 e4. f8  |
  c4. c8 d4  |
  c8 c b a g a  |
  r8 e' d c b a  |
  %15
  b4 b4. g8 }
  \alternative { { g2 r4 }
  { g4 r2 } }
  e'4 r2  |
  \repeat volta 2 { g,4 f' e  |
  %20
  gis,4 gis4. a8  |
  g2 r4  |
  r2 r4  |
  c4 f e  |
  a,4 ais g  |
  %25
  d'2 r4  |
  r2 r4  |
  f4 b a  |
  f4 d4. b8  |
  g2.  |
  %30
  r2 b8 c  |
  d2.  |
  r2 f4  |
  e2.  |
  r2 r4  |
  %35
  g,4 f' e  |
  gis,4 gis4. a8  |
  g2 r4  |
  r2 r4  |
  c4 c e  |
  %40
  cis4 cis4. a8  |
  cis4 a cis  |
  a2 r4  |
  gis4 c d  |
  f2 f4  |
  %45
  e4. d8 c4  |
  b4 c e  |
  d4 e f  |
  f2 f4  |
  e2 r4  | }
}

liniaroAc =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \repeat volta 2 { \time 1/4 r4  |
  \time 3/4   r4 g gis  |
  a4 r2  |
  r4 g gis  |
  %05
  a4 r2  |
  r4 a ais  |
  b4 r2  |
  c2 b4  |
  c4 r2  |
  %10
  r4 g gis  |
  a4 r2  |
  r4 g gis  |
  a4 r2  |
  a4 g a  |
  %15
  g4 b4. b8 }
  \alternative { { g2 r4 }
  { g4 r g } }
  c4 r2  |
  \repeat volta 2 { g2.  |
  %20
  gis2.  |
  g4 g a  |
  b4 a g  |
  g2.  |
  a4 g2  |
  %25
  b4 a b  |
  a4 a g  |
  a2.  |
  a2.  |
  g4. a8 b4  |
  %30
  g4 r2  |
  r2 b8 a  |
  g4 a b  |
  c4. b8 a4  |
  g4 g a  |
  %35
  g4 g a  |
  gis2.  |
  g2 g4  |
  g2.  |
  g2.  |
  %40
  g2.  |
  g2 g4  |
  a2 r4  |
  gis2.  |
  a2 gis4  |
  %45
  g2.  |
  g2.  |
  g2.  |
  g2 g4  |
  c2 r4  | }
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

