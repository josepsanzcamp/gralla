\version "2.16.0"

\header {
  dedication="Vals"
  title="  "
  subtitle="Vals de Lurdes"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Julio Martín"
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
  \time 3/4
  r4 g g  |
  e'4. e8 e4 ~  |
  e4 g f  |
  e4. e8 e4  |
  %05
  r4 g f  |
  e4. e8 e4  |
  e4 d e  |
  g2.  |
  f4 a, a  |
  %10
  f'4. f8 f4  |
  r4 a8 b a g  |
  f4. f8 f4 ~  |
  f4 a8 b a g  |
  f4. f8 f4  |
  %15
  f4 e f  |
  g2 g4  |
  r4 g, g  |
  e'4. e8 e4 ~  |
  e4 g f  |
  %20
  e4. e8 e4 ~  |
  e4 g f  |
  e4. e8 e4  |
  c4 d e  |
  f2.  |
  %25
  r4 d e  |
  \repeat volta 2 { f4 d d  |
  g4 g f  |
  e4 c d  |
  e4 f e  |
  %30
  d4 b c  |
  d4 e8 f e d }
  \alternative { { e2.  |
  r4 d8 e d e }
  { c2. } }
  %35
  r4 c8 e d c  |
  \repeat volta 2 { b8 a b c d4 ~  |
  d4 e8 f e d  |
  c8 b c d e4  |
  r4 f8 g f e  |
  %40
  d4 d8 e f4 }
  \alternative { { r4 g8 a g f  |
  e2 f4  |
  g4 c,8 e d c }
  { g'4 e d  |
  %45
  c2. } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  r4 g g  |
  c4. c8 c4 ~  |
  c4 e d  |
  c4. c8 c4  |
  %05
  r4 e d  |
  c4. c8 c4  |
  c4 b c  |
  e2.  |
  d4 a a  |
  %10
  d4. d8 d4  |
  r4 f8 g f e  |
  d4. d8 d4 ~  |
  d4 f8 g f e  |
  d4. d8 d4  |
  %15
  d4 c d  |
  e2 e4  |
  r4 g, g  |
  c4. c8 c4 ~  |
  c4 e d  |
  %20
  c4. c8 c4 ~  |
  c4 e d  |
  c4. c8 c4  |
  c4 b ais  |
  a2.  |
  %25
  r4 b c  |
  \repeat volta 2 { d4 b b  |
  e4 e d  |
  c4 g b  |
  c4 d c  |
  %30
  b4 g a  |
  b4 c8 d c b }
  \alternative { { c2.  |
  r4 b8 c b c }
  { g2. } }
  %35
  r4 c8 c b a  |
  \repeat volta 2 { g4 g8 a b4 ~  |
  b4 c8 d c b  |
  a8 g a b c4  |
  r4 d8 e d c  |
  %40
  b4 b8 c d4 }
  \alternative { { r4 e8 f e d  |
  c2 d4  |
  e4 c8 c b a }
  { g4 a b  |
  %45
  c2. } } \bar "||"
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

