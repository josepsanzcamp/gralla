\version "2.16.2"

\header {
  dedication=""
  title="El Ball de la Civada"
  subtitle=""
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Veus saxos: Perepau Jiménez,"
  arranger="per als grallers de Cassà. 2005"
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
  \time 1/4
  r8 g  |
  \time 2/4   \repeat volta 2 { c8.  c16 c8 d  |
  e8 e e f  |
  e4 d  |
  %05
  c4 r8 g  |
  c8.  c16 c8 d  |
  e8 e e f  |
  e4 d  |
  c4 b8 c  |
  %10
  d8. e16 d8 e  |
  d8 c b c  |
  d4 b8 c  |
  d4 r8 g,  |
  c8. c16 c8 d  |
  %15
  e8 e e f  |
  e4 d  |
  c4 c8 d  |
  e4 c8 d  |
  e8. e16 e8 f  |
  %20
  e8 d16 d d8 e  |
  d8 c c d  |
  e4 c8 d  |
  e8. e16 e8 f  |
  e8 d d e }
  %25
  \alternative { { c4 r8 g }
  { c2 } } \bar "||"
}

liniaroAb =
\relative e'
{
  \tempo 4=120
  \clef treble
  \key a \major
  \time 1/4
  R4  |
  \time 2/4   \repeat volta 2 { R2  |
  R2  |
  R2  |
  %05
  r4. e8  |
  cis8. cis16 cis8 d  |
  e8 e e fis  |
  e4 d  |
  cis4 b8 cis  |
  %10
  d4. fis8  |
  dis4. dis8  |
  e4 e8 e  |
  e4 r8 e  |
  cis8. cis16 cis8 d  |
  %15
  e8 e e fis  |
  e4 e  |
  e4 r  |
  e4 r8 e  |
  e8 r r e  |
  %20
  e8 r r e  |
  a8 e cis d  |
  e4 r8 e  |
  e8 r r e  |
  a8 e fis gis }
  %25
  \alternative { { a4 r }
  { a2 } } \bar "||"
}

liniaroAc =
\relative a'
{
  \tempo 4=120
  \clef treble
  \key d \major
  \time 1/4
  R4  |
  \time 2/4   \repeat volta 2 { R2  |
  R2  |
  R2  |
  %05
  r4. a8  |
  fis8. fis16 fis8 g  |
  a8 a a b  |
  a4 g  |
  fis4 e8 fis  |
  %10
  e4. e8  |
  d4. d8  |
  cis4 e8 fis  |
  g4 r8 a  |
  fis8. fis16 fis8 g  |
  %15
  a8 a a b  |
  a4 g  |
  fis4 r  |
  fis4 r8 g  |
  fis8 r r fis  |
  %20
  g8 r r g  |
  fis8 a fis g  |
  fis4 r8 g  |
  fis8 r r fis  |
  g8 a g a }
  %25
  \alternative { { fis4 r }
  { fis2 } } \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralles" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Saxo Alt" shortInstrumentName = #"S"} \liniaroAb
        \new Staff \with {instrumentName = #"Saxo Tenor" shortInstrumentName = #"S"} \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralles" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Saxo Alt" shortInstrumentName = #"S"} \transpose d f \liniaroAb
        \new Staff \with {instrumentName = #"Saxo Tenor" shortInstrumentName = #"S"} \transpose d c \liniaroAc
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Gralles"}
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
  \header {instrument="Saxo Alt"}
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
        \new Staff \transpose d f \liniaroAb
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Saxo Tenor"}
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
        \new Staff \transpose d c \liniaroAc
      >>
    }
    \midi {}
  }
}

