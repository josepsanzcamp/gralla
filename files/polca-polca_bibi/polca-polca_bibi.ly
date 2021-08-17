\version "2.16.0"

\header {
  dedication="Polca"
  title="  "
  subtitle="Polca Bibí"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="San Juan de Plan"
  arranger="Aragó"
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
  \time 2/4
  r8 g16 g g8 g  |
  \repeat volta 2 { c8. d16 e8 f  |
  g8. a16 g8 e  |
  f8. g16 f8 d  |
  %05
  e4 c8 g  |
  c8. d16 e8 f  |
  g8. a16 g8 e  |
  f8. g16 f8 d }
  \alternative { { c8 g16 g g8 g }
  %10
  { c4 r8 r8 } } % kompletite
  \repeat volta 2 { c'4 r8 a  |
  b4 r8 g  |
  f8 r f r  |
  f8 r4 r8  | % kompletite
  %15
  b4 r4  | % kompletite
  g4 r8 f  |
  e8 r4 r8  | % kompletite
  e8 r4 r8  | % kompletite
  c'8 r4 r8  | % kompletite
  %20
  c8 r4 r8  | % kompletite
  b8 r r4  | % kompletite
  b8 r4 r8  | % kompletite
  b8 c16 b a8 g  |
  f8 g16 f e8 d }
  %25
  \alternative { { c8 r r g' }
  { c,8 r4 r8 } } \bar "||" % kompletite
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  r8 g16 g g8 g  |
  \repeat volta 2 { e8. f16 g8 a  |
  b8. c16 b8 g  |
  a8. b16 a8 f  |
  %05
  g4 e8 g  |
  e8. f16 g8 a  |
  b8. c16 b8 g  |
  a8. b16 a8 f }
  \alternative { { e8 g16 g g8 g }
  %10
  { e4 r } }
  \repeat volta 2 { r4 g8 r  |
  r4 g8 r  |
  r4 f8 r  |
  f8 r4 r8  | % kompletite
  %15
  r4 r4  | % kompletite
  r4 f8 r  |
  r4 r4  | % kompletite
  g8 r4 r8  | % kompletite
  r4 r4  | % kompletite
  %20
  g8 r4 r8  | % kompletite
  r4 r4  | % kompletite
  f8 r4 r8  | % kompletite
  g8 a16 g f8 g  |
  a8 g16 f e8 f }
  %25
  \alternative { { e8 r r4 }
  { e8 r4 r8 } } \bar "||" % kompletite
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
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
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

}

