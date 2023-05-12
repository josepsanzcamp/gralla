\version "2.16.2"

\header {
  dedication=""
  title="Valls"
  subtitle=""
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Perepau Jiménez, 1993."
  arranger="TRES TOCS DE CARRER"
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative dis''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  dis4 fis  |
  g4 r  |
  \repeat volta 2 { d8 c  b c  |
  d4. dis8  |
  %05
  e8 d c d  |
  e4.  f8  |
  fis4 a  |
  g4 fis  |
  e4 dis  |
  %10
  d4 r  |
  d8 c b c  |
  d4. b8  |
  c8 b c d  |
  e8 r4 r8  | % kompletite
  %15
  fis2  |
  a4 fis  |
  g2 ~  |
  g4 r  | }
  \key c \major   \repeat volta 2 { c,2  |
  %20
  d4 e  |
  a,2  |
  b4 c  |
  g4 a  |
  b4 c  |
  %25
  f2 ~  |
  f4 r  |
  a2  |
  g4 a  |
  f4 g  |
  %30
  e2  |
  d4 e  |
  f4 fis  |
  g2 ~  |
  g4 r  |
  %35
  c,2  |
  d4 e  |
  a,2  |
  g4 a  |
  ais4 e'  |
  %40
  d4 c  |
  a2 ~  |
  a2  |
  f'2  |
  g4 f  |
  %45
  e2  |
  r2  |
  d4 f  |
  dis4 d  |
  c2 ~  |
  %50
  c4 r  |
  a4 b  |
  c4 d  |
  e4 f  |
  g4 f  |
  %55
  g2  |
  g2  |
  g2 ~  |
  g4 r  | }
}

liniaroAb =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  c4 d  |
  b4 r  |
  \repeat volta 2 { b8 a g a  |
  b4. b8  |
  %05
  c8 b a b  |
  c4. cis8  |
  d4 c  |
  d4 c  |
  b4 c  |
  %10
  a4 r  |
  b8 a g a  |
  b4. gis8  |
  a8 gis a b  |
  c4 r  |
  %15
  d4 c ~  |
  c4 d  |
  b2 ~  |
  b4 r  | }
  \key c \major   \repeat volta 2 { r2  |
  %20
  r2  |
  r2  |
  r2  |
  r2  |
  r2  |
  %25
  r4 a  |
  b4 cis  |
  d2  |
  e4 f  |
  cis2 ~  |
  %30
  cis2  |
  a2  |
  d4 c  |
  b2 ~  |
  b4 r  |
  %35
  c2 ~  |
  c4. r8  |
  c2  |
  r2  |
  ais2 ~  |
  %40
  ais4 c  |
  f4 c  |
  a4 c  |
  r2  |
  r2  |
  %45
  c2 ~  |
  c4 c8 r  |
  b2  |
  g2  |
  gis2 ~  |
  %50
  gis4 r  |
  f4 g  |
  gis4 b  |
  c4 d  |
  e4 f  |
  %55
  e2  |
  f2  |
  e2 ~  |
  e4 r  | }
}

liniaroAc =
\relative a'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  a4 c  |
  b4 r  |
  \repeat volta 2 { r2  |
  r8 g r gis  |
  %05
  a4 r  |
  r8 a r a  |
  c4 r  |
  r8 a r a  |
  g2  |
  %10
  fis4 r  |
  r2  |
  r8 g r e  |
  e4 r8 gis  |
  a8 gis a b  |
  %15
  c4 r8 a  |
  d4 c8 a'  |
  g2 ~  |
  g4 r  | }
  \key c \major   \repeat volta 2 { r2  |
  %20
  r2  |
  r2  |
  r2  |
  r2  |
  g,4 a  |
  %25
  b4 c  |
  d4 e  |
  f2  |
  r2  |
  r4 a,  |
  %30
  g4 e  |
  f2  |
  r2  |
  r4 d'  |
  f4 g,  |
  %35
  e2 ~  |
  e4. r8  |
  f2  |
  r2  |
  e4 f  |
  %40
  g2  |
  c2 ~  |
  c2  |
  r4 gis  |
  b2  |
  %45
  r4 g ~  |
  g4 g8 r  |
  r2  |
  r4 d'  |
  dis2 ~  |
  %50
  dis4 r  |
  r2  |
  r2  |
  g,4 b  |
  c4 d  |
  %55
  e2  |
  b2  |
  c2 ~  |
  c4 r  | }
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument=""}
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
  \header {instrument=""}
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
  \header {instrument=""}
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

