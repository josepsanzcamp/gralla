\version "2.16.0"

\header {
  dedication="Concert"
  title="  "
  subtitle="Coral graller número 3"
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
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  r4  |
  \time 3/4   \repeat volta 2 { e2.  |
  gis2.  |
  a2. ~  |
  %05
  a2 r4  |
  c2.  |
  b2 a4 }
  \alternative { { gis2. ~  |
  gis2 r4 }
  %10
  { g2 e4 } }
  g4. a8 f4  |
  e2 g4  |
  f4 a g  |
  c2.  |
  %15
  b2 a4  |
  a2 g4  |
  f4 a g  |
  e2 dis4  |
  d2 f4  \bar "||"
  %20
  e2.  |
  gis2.  |
  a2. ~  |
  a2 r4  |
  c2.  |
  %25
  b2 a4  |
  gis2. ~  |
  gis2 b4  |
  b2 a4  |
  a2.  \bar "|."
}

liniaroAb =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  r4  |
  \time 3/4   \repeat volta 2 { c2.  |
  d2 b4  |
  c4. e8 d4  |
  %05
  c2 r4  |
  e2.  |
  d2. ~ }
  \alternative { { d4. f8 e4  |
  d2 r4 }
  %10
  { d2. ~ } }
  d4 b2  |
  c2.  |
  b4. c8 d4  |
  e2 c4  |
  %15
  c2. ~  |
  c4 d e  |
  b4. c8 d4  |
  c4 b a  |
  gis2 d'4  \bar "||"
  %20
  c2.  |
  d2 b4  |
  c4. e8 d4  |
  c2 r4  |
  e2.  |
  %25
  d2. ~  |
  d4. f8 e4  |
  d2 d4  |
  c2. ~  |
  c2.  \bar "|."
}

liniaroAc =
\relative e'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  e4  |
  \time 3/4   \repeat volta 2 { a2.  |
  e2.  |
  f2. ~  |
  %05
  f4. g8 f4  |
  e2.  |
  g2 f4 }
  \alternative { { e2. ~  |
  e2 e4 }
  %10
  { e2. } }
  r4 g2  |
  g2.  | % troigo!
  g2.  | % troigo!
  g2.  | % troigo!
  %15
  g2.  | % troigo!
  g2.  | % troigo!
  g2.  | % troigo!
  g2 f4  | % troigo!
  e2 gis4  \bar "||"
  %20
  a2.  |
  e2.  |
  f2. ~  |
  f4. g8 f4  |
  e2.  |
  %25
  g2 f4  |
  e2. ~  |
  e2 e4  |
  a2. ~  |
  a2.  \bar "|."
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

