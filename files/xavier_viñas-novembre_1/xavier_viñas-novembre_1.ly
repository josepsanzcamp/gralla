\version "2.16.2"

\header {
  dedication=""
  title="Novembre"
  subtitle="(Obrint pas)"
  subsubtitle=""
  poet="adaptació a gralla"
  meter="Xavier Viñas"
  piece=""
  composer="(gralles)"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 1/4
  b4   |
  \time 4/4   \repeat volta 2 { e4. fis  g4   |
  b,2. b4  |
  e4. fis g4  |
  %05
  fis2.  a,4  |
  g4. a b4  |
  d4. b a4  |
  e'4. fis g4  |
  fis2. b,4  |
  %10
  e4. fis g4  |
  b2. b4  |
  a4. g g4  |
  fis2. a,4  |
  g4. a b4  |
  %15
  d4. b a4  |
  e'4. fis g4 }
  \alternative { { fis2. b,4 }
  { fis'2. r4 } } \bar "||"
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 1/4
  b4  |
  \time 4/4   \repeat volta 2 { e4. fis g4  |
  b,2. b4  |
  c4. d e4  |
  %05
  d2. a4  |
  g4. a b4  |
  d4. b a4  |
  g4. a b4  |
  a2. b4  |
  %10
  e4. fis g4  |
  b,2. b4  |
  c4. d e4  |
  d2. a4  |
  e'4. fis g4  |
  %15
  d4. b a4  |
  g4. a b4 }
  \alternative { { a2. b4 }
  { a2. r4 } } \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
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
  }
  \score { \unfoldRepeats
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
  \header {instrument="Gralla 2"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \midi {}
  }
}

