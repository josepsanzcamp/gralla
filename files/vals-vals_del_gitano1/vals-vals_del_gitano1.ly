\version "2.16.0"

\header {
  dedication="Vals"
  title="  "
  subtitle="Vals del gitano"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Arr. A. Riera"
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
  \time 2/4
  g4 \tempo 4 = 156 e'  |
  \time 3/4   \repeat volta 2 { e2 d4  |
  f2 e4  |
  d4 c2 ~  |
  %05
  c4 g e'  |
  e2 d4  |
  c2 a'4  |
  g2. ~  |
  g4 g g  |
  %10
  a2 f4 ~  |
  f4 c a'  |
  g2 e4 ~  |
  e4 c e  |
  d4 g g  |
  %15
  f4 e d  |
  c2. ~ }
  \alternative { { c4 g e' }
  { c4  r2 } } \bar "||" % kompletite
}

liniaroAb =
\relative c''
{
  \tempo 4 = 156
  \clef treble
  \key c \major
  \time 2/4
  r2  |
  \time 3/4   \repeat volta 2 { << { r2 r4 } \\ { r4 c g } >>  |
  << { r2 r4 } \\ { r4 b g } >>  |
  << { r2 r4 } \\ { r4 c c } >>  |
  %05
  << { r2 r4 } \\ { g4 r r } >>  |
  << { r2 r4 } \\ { r4 c g } >>  |
  << { r2 r4 } \\ { r4 e' e } >>  |
  << { r2 r4 } \\ { r4 d d } >>  |
  << { r2 r4 } \\ { b4 r r } >>  |
  %10
  << { r2 r4 } \\ { r4 c c } >>  |
  << { r2 r4 } \\ { r4 a a } >>  |
  << { r2 r4 } \\ { r4 c c } >>  |
  << { r2 r4 } \\ { r4 g g } >>  |
  << { r2 r4 } \\ { r4 b b } >>  |
  %15
  << { r2 r4 } \\ { r4 g b } >>  |
  << { r2 r4 } \\ { c4 b d } >> }
  \alternative { { << { r2 r4 } \\ { c4 r r } >> }
  { c4 r2 } } \bar "||" % kompletite
}

liniaroAc =
\relative g'
{
  \tempo 4 = 156
  \clef treble
  \key c \major
  \time 2/4
  g4 c  |
  \time 3/4   \repeat volta 2 { c2 b4  |
  d2 c4  |
  b4 a g ~  |
  %05
  g4 g c  |
  c2 b4  |
  a2 g4  |
  b2. ~  |
  b4 b b  |
  %10
  c2 a4 ~  |
  a4 a c  |
  e2 c4 ~  |
  c4 c g  |
  b4 d ^\markup {\draw-line #'(2 . 2)} e  |
  %15
  d4 c b  |
  c2. ~ }
  \alternative { { c4 r r }
  { c4  r2 } } \bar "||" % kompletite
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

