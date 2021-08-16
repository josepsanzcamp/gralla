\version "2.16.0"

\header {
  dedication="Concert"
  title="   "
  subtitle="Coral graller número 2"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Marcel Casellas, 2001"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative a''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 4 { a2  |
  gis2  |
  e2 ~  |
  e4 g ~  |
  %05
  g4 f ~  |
  f8 a f d }
  \alternative { { e4 c  |
  r8 e f e }
  { e2 ~  |
  %10
  e4 r } }
  r2  |
  r8 e dis d  |
  cis2  |
  r8 a' gis g  |
  %15
  fis2 ~  |
  fis4. d8  |
  g4 f ~  |
  f8 e f e  \bar "||"
  e4 a  |
  %20
  gis2  |
  e2 ~  |
  e4 g ~  |
  g4 f ~  |
  f8 a f d  |
  %25
  c2 ~  |
  c8 g' a g  |
  c2 ~  |
  c4 r  \bar "|."
}

liniaroAb =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 4 { r4 c  |
  d2  |
  c2  |
  cis2  |
  %05
  d4. c8  |
  b2 }
  \alternative { { c8 b4 a8  |
  gis4 r }
  { r8 g a g  |
  %10
  c4 r } }
  r4 d  |
  gis,2  |
  a4 b  |
  b4. a8  |
  %15
  a4 d ~  |
  d8 d cis c  |
  b2 ~  |
  b4 d  \bar "||"
  d4 c  |
  %20
  d2  |
  c2  |
  cis2  |
  d4. c8  |
  b2  |
  %25
  r8 g a g  |
  r8 e' f e ~  |
  e8 f e d  |
  e4 r  \bar "|."
}

liniaroAc =
\relative e'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 4 { r2  |
  r4 e  |
  a2 ~  |
  a8 g a ais  |
  %05
  a2  |
  g2 ~ }
  \alternative { { g8 a g f  |
  e4 r }
  { r8 e f e  |
  %10
  r8 g fis f } }
  e4 f  |
  f4. r8  | % kompletite
  a4 r  |
  r4 cis  |
  %15
  d4. c8  |
  b4 a  |
  g2 ~  |
  g4 gis  \bar "||"
  a2  |
  %20
  b4 e,  |
  a2 ~  |
  a8 g a ais  |
  a2  |
  g2  |
  %25
  r8 e f e  |
  r8 c' c c  |
  c2 ~  |
  c4 r  \bar "|."
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

