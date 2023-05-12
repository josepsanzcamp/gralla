\version "2.16.2"

\header {
  dedication=""
  title="No saps pas com em Lliga"
  subtitle=""
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Johann Steuerlein"
  arranger="(1547-1613)"
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  r4 r r g  |
  \repeat volta 2 { c8  ( d ) e  ( f ) e ( d ) c ( b ) |
  a2 a4 a  |
  g4 c c b  }
  %05
  \alternative { { c2. g4 }
  { c2. e4 } }
  e4 e e c  |
  d2 d4 d  |
  c8 ( d ) e ( f ) e ( d ) c ( b16 a  |
  %10
  b2. ) g4  |
  c8 ( d ) e ( f ) e ( d ) c ( b )  |
  a2 a4 a  |
  g4 c c b  |
  c2. r4  \bar "|."
}

liniaroAb =
\relative e'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  r4 r r e  |
  \repeat volta 2 { e4 g g e  |
  f2 f4 f  |
  e4 a g4. g8 }
  %05
  \alternative { { e2. e4 }
  { e2. c'4 } }
  c4 c c g  |
  b2 b4 b  |
  a4. a8 a4 a  |
  %10
  gis2. e4  |
  e4 g g e  |
  f2 f4 f  |
  e4 a g4. g8  |
  e2. r4  \bar "|."
}

liniaroAc =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  r4 r r c  |
  \repeat volta 2 { c4. c8 c4 c  |
  c2 c4. d8  |
  e4 f d d }
  %05
  \alternative { { c2. c4 }
  { c2. e4 } }
  g4 g g e  |
  g2 g4 g  |
  e4. e8 e4 e  |
  %10
  e2. b4  |
  c4. c8 c4 c  |
  c2 c4. d8  |
  e4 f d d  |
  c2. r4  \bar "|."
}

liniaroAd =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  r4 r r c  |
  \repeat volta 2 { c4 c c c  |
  f,2 f8 ( g ) a ( b )  |
  c4 f, g g }
  %05
  \alternative { { c2. c4 }
  { c2. c4 } }
  c4. c8 c4 c  |
  g2 g4 g  |
  a4. a8 a4 a  |
  %10
  e2. e4  |
  c'4 c c c  |
  f,2 f8 ( g ) a ( b ) |
  c4 f, g g  |
  c2. r4  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
        \new Staff \with {instrumentName = #"Gralla 4" shortInstrumentName = #"G"} \liniaroAd
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
        \new Staff \with {instrumentName = #"Gralla 4" shortInstrumentName = #"G"} \liniaroAd
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Gralla 1"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Gralla 2"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Gralla 3"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Gralla 4"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAd
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAd
      >>
    }
    \midi {}
  }
}

