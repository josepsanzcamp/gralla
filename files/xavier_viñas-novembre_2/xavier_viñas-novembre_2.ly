\version "2.16.2"

\header {
  dedication=""
  title="Novembre"
  subtitle="(Obrint pas)"
  subsubtitle=""
  poet="adaptació:"
  meter="Xavier Viñas"
  piece=""
  composer="(gralla i fagot)"
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
  \time 4/4   \repeat volta 2 { e4. fis g4    |
  b,2. b4  |
  e4. fis g4  |
  %05
  fis2. a,4   |
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
  e'4. fis g4  |
  fis2. b,4  \bar "||"
  e4. fis g4  |
  b,2. b4  |
  %20
  c4. d e4  |
  d2. a4  |
  g4. a b4  |
  d4. b a4  |
  g4. a b4  |
  %25
  a2. b4  |
  e4. fis g4  |
  b,2. b4  |
  c4. d e4  |
  d2. a4  |
  %30
  e'4. fis g4  |
  d4. b a4  |
  g4. a b4 }
  \alternative { { a2. b4 }
  { a2. r4 } } \bar "||"
}

liniaroAb =
\relative b,
{
  \tempo 4=120
  \clef bass
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
  g4. a b4  |
  a2. b4  \bar "||"
  e4. _"fagot 1ª veu" fis g4  |
  b,2. b4  |
  %20
  e4. fis g4  |
  fis2. a,4  |
  g4. a b4  |
  d4. b a4  |
  e'4. fis g4  |
  %25
  fis2. b,4  |
  e4. fis g4  |
  b2. b4  |
  a4. g g4  |
  fis2. a,4  |
  %30
  g4. a b4  |
  d4. b a4  |
  e'4. fis g4 }
  \alternative { { fis2. b,4 }
  { fis'2. r4 } } \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Fagot" shortInstrumentName = #"F"} \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Fagot" shortInstrumentName = #"F"} \liniaroAb
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Gralla"}
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
  \header {instrument="Fagot"}
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

