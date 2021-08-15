\version "2.16.0"

\header {
  dedication="Vals"
  title="  "
  subtitle="Vals Copón"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Antonio Pellisa"
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
  \time 2/8
  g4  |
  \time 3/4   \repeat volta 2 { e'2 d4  |
  c2 d8 e  |
  d2 b4  |
  %05
  c4 r g  |
  e'2 d4  |
  c2 d8 e  |
  d2 e8 d  |
  c4 r c  |
  %10
  d4 r d  |
  e4 r e  |
  f4 f8 e d c  |
  b4 g r  |
  g4 a b  |
  %15
  d4 c4. b8 }
  \alternative { { c2. ~  |
  c4 r g }
  { c4 e g  |
  c,4 r r } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/8
  g4  |
  \time 3/4   \repeat volta 2 { c2 b4  |
  a2 b8 c  |
  b2 g4  |
  %05
  g4 r g  |
  c2 b4  |
  c2 b8 c  |
  b2 c8 b  |
  c4 r g  |
  %10
  b4 r b  |
  c4 r c  |
  d4 d8 c b a  |
  b4 g r  |
  g4 a b  |
  %15
  b4 a4. g8 }
  \alternative { { g2. ~  |
  g4 r g }
  { c4 c c  |
  c4 r r } } \bar "||"
}

liniaroAc =
\relative e'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/8
  r4  |
  \time 3/4   \repeat volta 2 { r4 e e  |
  r4 f f  |
  r4 g g  |
  %05
  e4 f g  |
  e4 e e  |
  r4 f f  |
  r4 g f  |
  e4 r r  |
  %10
  g2.  |
  e2.  |
  g2.  |
  g2 r4  |
  g4 f g  |
  %15
  g4 f4. g8 }
  \alternative { { e2. ~  |
  e4 r r }
  { e4 e e  |
  e4 r r } } \bar "||"
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

