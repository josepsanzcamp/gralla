\version "2.16.2"

\header {
  dedication=""
  title="La vall del Riu Vermell"
  subtitle=""
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer=""
  arranger=""
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
  r1   |
  \repeat volta 2 { r2 g4 c  |
  e2 e4 e  |
  e2 d4 e  |
  %05
  d4 c2.  |
  r2 g4 c  |
  e2 c4 e  |
  g2 f4 e  |
  d1  |
  %10
  r2 g4 f  |
  e2 e4 d  |
  c2 d4 e  |
  g4 f2.  |
  r2 a,4 a  |
  %15
  g2 b4 c  |
  d2 e4 d }
  \alternative { { c1 }
  { \mark "D.C." c1 } } \bar "||"
}

liniaroAb =
\relative a'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  r1  |
  \repeat volta 2 { r2 a4 d  |
  fis2 fis4 fis  |
  fis2 e4 fis  |
  %05
  e4 d2.  |
  r2 a4 d  |
  fis2 d4 fis  |
  a2 g4 fis  |
  e1  |
  %10
  r2 a4 g  |
  fis2 fis4 e  |
  d2 e4 fis  |
  a4 g2.  |
  r2 b,4 b  |
  %15
  a2 cis4 d  |
  e2 fis4 e }
  \alternative { { d1 }
  { d1 } } \bar "||"
}

liniaroAc =
\relative e'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  r1  |
  \repeat volta 2 { r2 e4 a  |
  c2 c4 c  |
  c2 b4 c  |
  %05
  b4 a2.  |
  r2 e4 a  |
  c2 a4 c  |
  e2 d4 c  |
  b1  |
  %10
  r2 e4 d  |
  c2 c4 b  |
  a2 b4 c  |
  e4 d2.  |
  r2 f,4 f  |
  %15
  e2 g4 a  |
  b2 c4 b }
  \alternative { { <a e'>1 }
  { <a c>1 } } \bar "||"
}

liniaroAd =
\relative e'
{
  \tempo 4=120
  \clef treble
  \key a \major
  \time 4/4
  r1  |
  \repeat volta 2 { r2 e4 a  |
  cis2 cis4 cis  |
  cis2 b4 cis  |
  %05
  b4 a2.  |
  r2 e4 a  |
  cis2 a4 cis  |
  e2 d4 cis  |
  b1  |
  %10
  r2 e4 d  |
  cis2 cis4 b  |
  a2 b4 cis  |
  e4 d2.  |
  r2 fis,4 fis  |
  %15
  e2 gis4 a  |
  b2 cis4 b }
  \alternative { { a1 }
  { a1 } } \bar "||"
}

liniaroAe =
\relative cis'
{
  \tempo 4=120
  \clef treble
  \key a \major
  \time 4/4
  r1  |
  \repeat volta 2 { r2 cis4 fis  |
  a2 a4 a  |
  a2 gis4 a  |
  %05
  gis4 fis2.  |
  r2 cis4 fis  |
  a2 fis4 a  |
  cis2 b4 a  |
  gis1  |
  %10
  r2 cis4 b  |
  a2 a4 gis  |
  fis2 gis4 a  |
  cis4 b2.  |
  r2 d,4 d  |
  %15
  cis2 e4 fis  |
  gis2 a4 gis }
  \alternative { { <cis fis,>1 }
  { <fis, a>1 } } \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla (1ª veu)" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Trompeta" shortInstrumentName = #"T"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla (2ª veu)" shortInstrumentName = #"G"} \liniaroAc
        \new Staff \with {instrumentName = #"Saxo Alt (1ª veu)" shortInstrumentName = #"S"} \liniaroAd
        \new Staff \with {instrumentName = #"Saxo Alt (2ª veu)" shortInstrumentName = #"S"} \liniaroAe
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla (1ª veu)" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Trompeta" shortInstrumentName = #"T"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla (2ª veu)" shortInstrumentName = #"G"} \liniaroAc
        \new Staff \with {instrumentName = #"Saxo Alt (1ª veu)" shortInstrumentName = #"S"} \liniaroAd
        \new Staff \with {instrumentName = #"Saxo Alt (2ª veu)" shortInstrumentName = #"S"} \liniaroAe
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Gralla (1ª veu)"}
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
  \header {instrument="Trompeta"}
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

\bookpart {
  \header {instrument="Gralla (2ª veu)"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Saxo Alt (1ª veu)"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAd
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAd
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Saxo Alt (2ª veu)"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAe
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAe
      >>
    }
    \midi {}
  }
}

