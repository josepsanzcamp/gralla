\version "2.16.2"

\header {
  dedication=""
  title="Virolai a la Mare de Déu de Montserrat"
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
\relative gis'
{
  \tempo 4=120
  \clef treble
  \key e \major
  \repeat volta 2 { \time 2/4 gis4  fis8 gis  |
  a4. gis8  |
  fis8 gis a b  |
  gis8. fis16 e4  |
  %05
  gis4 fis8 gis  |
  b4. gis8  |
  fis2  |
  gis4 fis8 gis  |
  a4. gis8  |
  %10
  fis8 gis a b  |
  cis8. b16 a8 gis  |
  fis4 gis  |
  b4. a8  |
  gis8 e fis gis  |
  %15
  a4. fis8  |
  e2  |
  \time 6/8   b'8 gis a fis4 gis8  |
  a4 b8 cis4 dis8  |
  b8. a16 gis8 b gis a  |
  %20
  \time 3/8   fis4.  |
  \time 6/8   b8 gis a fis4 gis8  |
  a4 b8 cis4 dis8  |
  b4 e8 dis4 cis8  |
  b4. ais  |
  %25
  \time 3/8   b4.  |
  \time 6/8   b8 dis cis b4 gis8  |
  a4 gis8 a4 b8  |
  gis8. fis16 e8 b' gis a  |
  \time 3/8   fis4.  |
  %30
  \time 6/8   b8 dis cis b4 gis8  |
  a4 b8 cis4 dis8  |
  e4 gis,8 a4 b8  |
  cis4. ~ cis4 dis8  |
  b4. ~ b8 r r  | }
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \repeat volta 2 { \time 2/4 b4 a8 b  |
  c4. b8  |
  a8 b c d  |
  b8. a16 g4  |
  %05
  b4 a8 b  |
  d4. b8  |
  a2  |
  b4 a8 b  |
  c4. b8  |
  %10
  a8 b c d  |
  e8. d16 c8 b  |
  a4 b  |
  d4. c8  |
  b8 g a b  |
  %15
  c4. a8  |
  g2  |
  \time 6/8   d'8 b c a4 b8  |
  c4 d8 e4 fis8  |
  d8. c16 b8 d b c  |
  %20
  \time 3/8   a4.  |
  \time 6/8   d8 b c a4 b8  |
  c4 d8 e4 fis8  |
  d4 g8 fis4 e8  |
  d4. cis  |
  %25
  \time 3/8   d4.  |
  \time 6/8   d8 fis e d4 b8  |
  c4 b8 c4 d8  |
  b8. a16 g8 d' b c  |
  \time 3/8   a4.  |
  %30
  \time 6/8   d8 fis e d4 b8  |
  c4 d8 e4 fis8  |
  g4 b,8 c4 d8  |
  e4. ~ e4 fis8  |
  d4. ~ d8 r r  | }
}

liniaroAc =
\relative g
{
  \tempo 4=120
  \clef bass
  \key c \major
  \repeat volta 2 { \time 2/4 g2  |
  c,2  |
  d4 fis  |
  g2  |
  %05
  g2  |
  b,2  |
  d4 fis  |
  g2  |
  a4 g  |
  %10
  fis4 e  |
  c2  |
  d2  |
  d4 fis  |
  g2  |
  %15
  c,4 d  |
  g2  |
  \time 6/8   g4. d  |
  c4. d  |
  g4. g  |
  %20
  \time 3/8   d4.  |
  \time 6/8   g4. d  |
  c4. d  |
  g4. fis  |
  d4. a'  |
  %25
  \time 3/8   d,4.  |
  \time 6/8   d4. d  |
  c4. c  |
  g'4. c,  |
  \time 3/8   d4.  |
  %30
  \time 6/8   d4. d  |
  c4. d  |
  g4. e  |
  c4. c  |
  d4. ~ d8 r r  | }
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Saxo Alt" shortInstrumentName = #"S"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Contrabaix" shortInstrumentName = #"C"} \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Saxo Alt" shortInstrumentName = #"S"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Contrabaix" shortInstrumentName = #"C"} \liniaroAc
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Saxo Alt"}
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
  \header {instrument="Gralla"}
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
  \header {instrument="Contrabaix"}
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

