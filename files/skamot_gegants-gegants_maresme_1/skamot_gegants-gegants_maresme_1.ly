\version "2.16.2"

\header {
  dedication="http://gralla.skamot.com"
  title="Gegants"
  subtitle="Ball de gegants del Maresme"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Aniol Noguera/Santi Prat"
  arranger="Maig de 2002"
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative e''
{
  \clef treble
  \key c \major
  \time 1/4
  e8. e16 _"Introducció" \f \tempo 4 = 90  |
  \time 4/4   e4. -> d8 b e d8. d16  |
  d2 -> \tempo 4 = 100 r4 d8. d16  |
  d4. -> d8 c d e8. e16  |
  %05
  e2 -> r4 e8. e16  |
  e4. -> d8 b e d8. d16  |
  d2 -> r4 d8. d16  |
  d4. d8 -> c d e8. e16  |
  e2 \fermata r4 c  \bar "||"
  %10
  \key f \major   \time 3/4   f4 d _"" f \f  |
  e4 c e  |
  d8. des16 d8. f16 e8. d16  |
  des8-. b-. a4-. r  |
  f'8 -> e d4 f8 -> d  |
  %15
  e8 d c4 -> e8 c ->  |
  d4-> e8 d des8. d16  |
  d2 r4  |
  a'4 -- \ff f -- a --  |
  g4 -- e -- g \tempo 4. = 150  |
  %20
  f8. e16 d8 e f4  |
  e2.  |
  a8. g16 f4 a8. -> f16  |
  g8. -> f16 e4 g8. e16  |
  f4 a,8 b des4  |
  %25
  d2. \fermata  |
  \key g \major   \time 6/8   r4. r8 b a  |
  \repeat volta 2 { g4 _"D" -> g8 b d e  |
  d4 -> b8 g a b  |
  d4 b8 e -> fis e  |
  %30
  d4. -. r8 b a  |
  g4 -> g8 b d e  |
  d8 -. c -. b -. g -. g -. a -.  |
  b4 -> b8 -. a -. g -. a -. }
  \alternative { { g4. -. r8 b a }
  %35
  { g4. r8 g -. b } }
  e4 e8 e fis e  |
  d8 d4 -> r8 g, b  |
  e8 e e e fis e  |
  d4 -- d -- g,8 b  |
  %40
  e4 e8 e fis e  |
  d8 d4 r8 g, a  |
  b4 d a  |
  g4. \fermata r  |
  \key c \major   \time 3/4   \repeat volta 2 { a8 b \tempo 4 = 125  c e f e  |
  %45
  d2 c4  |
  b4 e d  |
  c8 b a2  |
  a8 b c e f e  |
  d2 f4  |
  %50
  g4 d8 e f4  |
  e2.  |
  a,8 b c e f e  |
  d2 f4  |
  e4 b d  |
  %55
  c8 b a2  |
  a8 b c e f e  |
  d2 f4  |
  e4 b8 d c b }
  \alternative { { a2 r4 }
  %60
  { a2. } }
  \key g \major   \time 6/8   r4. r8 b a \tempo 4. = 160  |
  \repeat volta 2 { g4  g8 -> b d e  |
  d4 -> b8 g a b  |
  d4 -> b8 e fis e  |
  %65
  d4. r8 b a  |
  g4 g8 b d -> e  |
  d8 -. c -. b -. g -. g a -. -.  |
  b4 -> b8 -. a g -. a -. -. }
  \alternative { { g4. -. r8 b a }
  %70
  { g4. -. r8 g b } }
  e4 e8 \tempo 4 = 100 e fis e  |
  d8 d4 -> r8 g, b  |
  e8 e e e fis e  |
  d4 d g,8 -- b --  |
  %75
  e4 e8 e fis e  |
  d8 d4 r8 g, a   |
  b4 d a  |
  g4. \fermata r8 d'4  |
  \time 3/4   \repeat volta 2 { g4 e  g \f  |
  %80
  fis4 d fis  |
  e8. dis16 e8. g16 fis8. e16  |
  dis8-. cis-. b4-. r  |
  g'8 -> fis e4 g8 -> e  |
  fis8 -> e d4 fis8 -> d  |
  %85
  e4 -> fis8 e dis8. e16  |
  e2 r4  |
  b'4 \ff -- g -- b --  |
  a4 -- fis -- a --  |
  g8. fis16 \tempo 4. = 150 e8 fis g4  |
  %90
  fis2.  |
  b8. -> a16 g4 b8. g16  |
  a8. -> g16 fis4 a8. fis16  |
  g4 b,8 cis dis4 }
  \alternative { { e2. }
  %95
  { e2. } }
  \time 6/8   r4. g,8 a b  |
  \repeat volta 2 { d4. g,8  a b  |
  d4. e8 d c  |
  b4 b8 b d e  |
  %100
  d4 b8 g a b  |
  d4. g,8 a b  |
  d4. e8 d c  |
  b4 b8 a b a  |
  g4. g8 a b  | }
  %105
  d4. g,8 a b  |
  d4. e8 d c  |
  b4 b8 b d e  |
  d4 b8 g a b  |
  c4 c8 a b c  |
  %110
  d4 d8 b c d  |
  e4 g fis  |
  g4 \fermata r g,8 -> g ->  |
  g4. -. r  \bar "|."
}

\score {
  \new StaffGroup {
    \override Score.RehearsalMark #'self-alignment-X = #LEFT
    <<
      \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
    >>
  }
  \layout {}
}
\score { \unfoldRepeats
  \new StaffGroup {
    \override Score.RehearsalMark #'self-alignment-X = #LEFT
    <<
      \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
    >>
  }
  \midi {
    \set Staff.midiInstrument = "oboe"
    \set DrumStaff.midiInstrument = "drums"
  }
}

