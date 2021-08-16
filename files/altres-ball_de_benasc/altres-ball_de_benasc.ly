\version "2.16.0"

\header {
  dedication=""
  title="         "
  subtitle="Ball de Benasc"
  subsubtitle="(Himne de Riego)"
  poet=""
  meter=""
  piece=""
  composer="L'Alta Ribagorça"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative g'
{
  \clef treble
  \key c \major
  \time 1/8
  g8 \tempo 4. = 110  |
  \time 6/8   \repeat volta 2 { e'4 e8 e d c  |
  c4. b4 g8  |
  f'4 f8 f e d  |
  %05
  g4 e8 c4 g8  |
  e'4 e8 e d c  |
  c4. b4 g'8  |
  g8 a g f e d }
  \alternative { { c4. r4 g8 }
  %10
  { c8 c d e f g } }
  \repeat volta 2 { a4 a8 a g f  |
  g4 g8 g f e  |
  f4 f8 f e d  |
  g4 e8 c4 c8  |
  %15
  a'4 a8 a g f  |
  g4 g8 g f e  |
  f8 a g f e d }
  \alternative { { c8 c d e f g }
  { c,4. r4 e8 } }
  %20
  \repeat volta 2 { d4 e8 f4 g8  |
  a4. f4 a8  |
  g4 f8 e4 d8  |
  g4 e8 c4 e8  |
  d4 e8 f4 g8  |
  %25
  a4. f4 a8  |
  g8 a g f e d }
  \alternative { { c4. r4 e8 }
  { c4. r1 } } \bar "||" % troigo!
}

liniaroAb =
\relative g'
{
  \tempo 4. = 110
  \clef treble
  \key c \major
  \time 1/8
  g8  |
  \time 6/8   \repeat volta 2 { c4 c8 c b a  |
  a4. g4 g8  |
  a4 a8 b c d  |
  %05
  c4 g8 g4 g8  |
  c4 c8 c b a  |
  g4. g4 b8  |
  d8 c b a g b }
  \alternative { { c4. r4 g8 }
  %10
  { c4. g } }
  \repeat volta 2 { c4 c8 c b a  |
  b4 b8 b a g  |
  a4 a8 a g a  |
  b4 b8 a4 g8  |
  %15
  c4 c8 c b a  |
  b4 b8 b a g  |
  a8 c b a g b }
  \alternative { { c4. g }
  { c4. r4 g8 } }
  %20
  \repeat volta 2 { g4 g8 a4 b8  |
  c4. d4 c8  |
  b4 b8 a4 b8  |
  c4 g8 g4 g8  |
  g4 g8 a4 b8  |
  %25
  c4. d4 c8  |
  c4. g }
  \alternative { { g4. r4 g8 }
  { c4. r1 } } \bar "||" % troigo!
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
        \new Staff \with {instrumentName = #"" } \liniaroAb
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
        \new Staff \with {instrumentName = #"" } \liniaroAb
      >>
    }
    \layout {}
  }
}

}

