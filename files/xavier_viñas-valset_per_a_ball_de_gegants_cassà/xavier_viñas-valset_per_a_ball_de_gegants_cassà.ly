\version "2.16.2"

\header {
  dedication=""
  title="Valset per a ball de gegants"
  subtitle="Cassà de la Selva"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Montse Casanova."
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 6/8
  c8 b c  r4 r8  | % kompletite
  d8. d16 d8  d c d  |
  e4 r8 e d e  |
  f8. f16 f8 f f  f  |
  %05
  e8. d16 c8 c b c  |
  d8. d16 d8 d c d  |
  e4 r8 e d e  |
  f8. f16 f8 f e d  |
  c4. g8 c d  |
  %10
  e8. e16 e8 g, f' e  |
  d4. g,8 b c  |
  d8. d16 d8 g, e' d  |
  c4. g8 c d  |
  e8. e16 e8 c d e  |
  %15
  f4. f8 g f  |
  e8. d16 c8 d c b  |
  c4. g8 a b  |
  c4 c8 c e c  |
  g'4. g4 g8  |
  %20
  f4. f8 e d  |
  e4 c8 g a b  |
  c4 c8 c e c  |
  g'4. g8 f e  |
  d4 f8 f e d  |
  %25
  c4. c8 b c  |
  d8. d16 d8 d c d  |
  e4 r8 e d e  |
  f8. f16 f8 f f f  |
  e8. d16 c8 c b c  |
  %30
  d8. d16 d8 d c d  |
  e4 r8 e d e  |
  f8. f16 f8 f e d  |
  c8 r g c r4  \bar "|."
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 6/8
  r4. r4 r8  | % kompletite
  b4. a4 b8  |
  c4 r8 c4.  |
  d4. b  |
  %05
  c8 b c c4.  |
  b4. b8 a b  |
  c4 r8 c4.  |
  d4. b8 c b  |
  c4. r  |
  %10
  c8. g16 g8 g4.  |
  b8. g16 g8 g4.  |
  b8. g16 g8 g4.  |
  c8. g16 g8 g4.  |
  c4. c8 b ais  |
  %15
  a4. d4 d8  |
  c4. d8 c b  |
  c4. r  |
  c8 c r r4.  |
  e8 e e e4.  |
  %20
  d8 d d d4.  |
  c8 c r r4.  |
  c8 c r r4.  |
  e8 e e e4.  |
  d4 b8 b c d  |
  %25
  c4. r  |
  b4. a4 b8  |
  c4 r8 c4.  |
  d4. b  |
  c8 b c c4.  |
  %30
  b4. b8 a b  |
  c4 r8 c4.  |
  d4. b8 c b  |
  c8 r4 r4.  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"gralla 1" shortInstrumentName = #"g"} \liniaroAa
        \new Staff \with {instrumentName = #"gralla 2" shortInstrumentName = #"g"} \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"gralla 1" shortInstrumentName = #"g"} \liniaroAa
        \new Staff \with {instrumentName = #"gralla 2" shortInstrumentName = #"g"} \liniaroAb
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="gralla 1"}
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
  \header {instrument="gralla 2"}
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

