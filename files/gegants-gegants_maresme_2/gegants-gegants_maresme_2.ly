\version "2.22.1"

\header {
  dedication="Gegants"
  title="   "
  subtitle="Ball de gegants del Maresme"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Aniol Noguera/Santi Prat"
  arranger="Maig de 2002"
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative d''
{
  \clef treble
  \key c \major
  \time 1/4
  r4 _"Introducció"  |
  \time 4/4   r2 \tempo 4 = 100 r4 r8. d16 \ff  |
  g2 -> r4 r  |
  r2 r4 r8. e16  |
  %05
  a2 -> r4 a,8. \mf a16  |
  a4. -> g8 g a g8. d'16  |
  g2 -> r4 g,8. g16  |
  g4. g8 a g a8. e'16  |
  a2 r4 \fermata c,  \bar "||"
  %10
  \key f \major   \time 3/4   d2. _"......" \mp  |
  c2.  |
  bes4 a8. g16 bes4  |
  a2 r4  |
  d4. -> des8 d4  |
  %15
  c4. -> d8 c4  |
  bes8 g a bes a4  |
  d2 r4  |
  a2.  |
  c2. \tempo 4 = 150  |
  %20
  d8. c16 bes8 a4 aes8  |
  a4 a8 b c4  |
  f8. -> e16 d4 f8. d16  |
  e8. -> d16 c4 e8. c16  |
  d8 e f4 g8 e  |
  %25
  d2. \fermata  |
  \key g \major   \time 6/8   r4. r8 b a  |
  \repeat volta 2 { g4  g8 -> g b a  |
  b4 -> g8 g4 -> g8  |
  d'8 c b g a b  |
  %30
  a4. -. r8 b a  |
  g4 -> g8 g b a  |
  b4 g8 d'4 g,8  |
  b8 a g -. fis4 -. a8 -. -> -. }
  \alternative { { g4. -. r8 b a }
  %35
  { g4. -. r8 g b } }
  c4 c8 c b a  |
  g8 g4 -> r8 g \tempo 4 = 125 b  |
  c8 c c c b a  |
  g4 a g8 -- b --  |
  %40
  c4 c8 c b a  |
  g8 g4 r8 g a _"D"  |
  d4 f fis  |
  g4. \fermata r  |
  \key c \major   \time 3/4   \repeat volta 2 { a,2 a4   |
  %45
  a4 a fis  |
  gis4 fis gis  |
  a4 c8 b a4  |
  a2 a4  |
  a2 d4  |
  %50
  b4 a2  |
  gis2.  |
  a2 a4  |
  a4 a c \tempo 4 = 160  |
  b4 fis gis  |
  %55
  a2.  |
  a2 a4  |
  a4 b8 c d c  |
  b4. a8 gis4 }
  \alternative { { a4 c8 b a gis }
  %60
  { a2. } }
  \key g \major   \time 6/8   r4. r8 b a  |
  \repeat volta 2 { g4  g8 -> g b a  |
  b4 g8 g4 -> g8 ->  |
  d'8 c b g a b  |
  %65
  a4. r8 b a  |
  g4 -> g8 g b a  |
  b4 g8 d'4 g,8  |
  b8 -. a -. g -. fis4 -> a8 -. }
  \alternative { { g4. -. r8 b a }
  %70
  { g4. r8 g -. b  } }
  c4 c8 c b a \tempo 4 = 100  |
  g8 g4 -> r8 g b  |
  c8 c c c b a  |
  g4 -- a -- g8 b  |
  %75
  c4 c8 c b a  |
  g8 g4 r8 g a  |
  d4 f fis  |
  g4. \fermata r8 d4  |
  \time 3/4   \repeat volta 2 { e2.  \mf  |
  %80
  d2.  |
  c4 b8. a16 c4  |
  b2 r4  |
  e4. -> dis8 e4  |
  d4. -> e8 d4  |
  %85
  c8 a b c b4  |
  e2 r4  |
  b2.  |
  d2.  |
  e8. d16 c8 b4 ais8  |
  %90
  b4 b8 cis \tempo 4 = 150 d4  |
  g8. -> fis16 e4 g8. e16  |
  fis8. -> e16 d4 fis8. d16  |
  e8 fis g4 a8 fis }
  \alternative { { e4 e8 dis e4 }
  %95
  { e2. } }
  \time 6/8   r4. g,8 a b  |
  \repeat volta 2 { <g b>4. g8  a b  |
  b4. c8 b a  |
  g4 g8 g4 c8  |
  %100
  b4 g8 g a b  |
  b4. g8 a b  |
  b4. c8 d e  |
  g4 g8 fis e fis  |
  g4. g,8 a b  | }
  %105
  b4. g8 a b  |
  b4. c8 b a  |
  g4 g8 g4 c8  |
  b4 g8 g a b  |
  a4 a8 fis g a  |
  %110
  b4 b8 g a b  |
  a4 b8 cis d4  |
  g,4 \fermata r g'8 -> g ->  |
  g4. -. r  \bar "|."
}

\score {
  \new StaffGroup {
    \override Score.RehearsalMark #'self-alignment-X = #LEFT
    <<
      \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAa
    >>
  }
  \layout {}
}
\score { \unfoldRepeats
  \new StaffGroup {
    \override Score.RehearsalMark #'self-alignment-X = #LEFT
    <<
      \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAa
    >>
  }
  \midi {
    \set Staff.midiInstrument = "oboe"
    \set DrumStaff.midiInstrument = "drums"
  }
}
