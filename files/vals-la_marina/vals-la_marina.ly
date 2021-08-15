\version "2.16.0"

\header {
  dedication="Vals"
  title="             "
  subtitle="La Marina"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Xavier Bayer"
  arranger="Arr. Carles Sagarra"
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative g'
{
  \clef treble
  \key g \major
  \time 3/4
  r4 g8 a b \tempo 4 = 180 c  |
  \repeat volta 2 { d2 b4  |
  g'2 fis4  |
  d2.  |
  %05
  r4 g,8 a b c  |
  d2 b4  |
  a'2 g4  |
  e2. ~  |
  e4 r2  |
  %10
  e4. e8 e4  |
  e4 dis e  |
  g2.  |
  d2 r4  |
  d4. e8 d4  |
  %15
  c4 b a }
  \alternative { { g2.  |
  r4 g8 a b c }
  { g2. ~  |
  g4 r2 } }
  %20
  \repeat volta 2 { b2 d4  |
  b2 d4  |
  b'2. ~  |
  b4 r2  |
  b,2 d4  |
  %25
  b2 d4  |
  c2. ~  |
  c4 r2  |
  c2 d4  |
  c2 d4  |
  %30
  a'2. ~  |
  a4 r2  |
  a4. a8 a4 }
  \alternative { { a4 g a  |
  b2 g4  |
  %35
  d2 r4 }
  { a'4 g fis  |
  g2. ~  |
  g4 r2 } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4 = 180
  \clef treble
  \key g \major
  \time 3/4
  r2 r4  |
  \repeat volta 2 { r4 g8 a b c  |
  d2 d4  |
  b2.  |
  %05
  r2 r4  |
  r4 g8 a b c  |
  d2 e4  |
  c2. ~  |
  c4 r2  |
  %10
  c4. c8 c4  |
  c4 b c  |
  d4 g,8 a b c  |
  b4 b8 c d e  |
  fis4. g8 fis4  |
  %15
  e4 d c }
  \alternative { { d2.  |
  r2 r4 }
  { d2. ~  |
  d4 r2 } }
  %20
  \repeat volta 2 { g,2 b4  |
  g2 b4  |
  d2. ~  |
  d4 r2  |
  g,2 b4  |
  %25
  g2 b4  |
  a2. ~  |
  a4 r2  |
  a2 b4  |
  a2 b4  |
  %30
  c4 d2 ~  |
  d4 r2  |
  d4. cis8 d4 }
  \alternative { { fis4 e fis  |
  g2 d4  |
  %35
  b2 r4 }
  { fis'4 e d  |
  d2. ~  |
  d4 r2 } } \bar "||"
}

liniaroAc =
\relative g''
{
  \tempo 4 = 180
  \clef treble
  \key g \major
  \time 3/4
  r2 r4  |
  \repeat volta 2 { r2 r4  |
  r4 g8 fis e fis  |
  g2.  |
  %05
  r2 r4  |
  r2 r4  |
  r4 e8 d c b  |
  a2. ~  |
  a4 r2  |
  %10
  c4. c8 c4  |
  c4 b c  |
  b4 b8 c d e  |
  d4 d8 e fis g  |
  a4. a8 a4  |
  %15
  a4 b a }
  \alternative { { g2.  |
  r2 r4 }
  { g2. ~  |
  g4 r2 } }
  %20
  \repeat volta 2 { g,2 b4  |
  g2 b4  |
  g'8 fis a g fis e  |
  d8 e d c b a  |
  g2 b4  |
  %25
  g2 b4  |
  e8 fis e d c b  |
  c8 d c b a gis  |
  a2 gis4  |
  a2 gis4  |
  %30
  a4 fis'2 ~  |
  fis4 r2  |
  fis4. f8 fis4 }
  \alternative { { c8 b d c b c  |
  d2 b4  |
  %35
  g2 r4 }
  { c4 c c  |
  b2. ~  |
  b4 r2 } } \bar "||"
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
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
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
  \header {instrument=""}
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
  \header {instrument=""}
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
  \header {instrument=""}
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
  \header {instrument=""}
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

