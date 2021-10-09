\version "2.16.2"

\header {
  dedication=""
  title="l'amigo"
  subtitle=""
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Jaume Vidal"
  arranger="1947"
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative d''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  r8 r d c  |
  b8 b d c  |
  b8  b b c  |
  d2 ~  |
  %05
  d4 b8 c  |
  d4.  e8  |
  d8 c b d  |
  c2 ~  |
  c4 e8 d  |
  %10
  c8 c e d  |
  c8 c c d  |
  e2 ~  |
  e4 c8 d  |
  e4. d8  |
  %15
  fis4. e8  |
  d2 ~  |
  d4 d8. c16  |
  b8 b d c  |
  b8 b b c  |
  %20
  d2 ~  |
  d4 b8 c  |
  d4. e8  |
  d4 b  |
  e2 ~  |
  %25
  e4 r  |
  e4. d8  |
  e8 d e fis  |
  g2 ~  |
  g8 d fis e  |
  %30
  d8 e c d  |
  b2 ~  |
  b8 r16 b a8 b  | % troigo!
  c8. b16 a8 b  |
  c8 a b c  |
  %35
  d4 b ~  |
  b8 d g e  |
  fis8 g e fis  |
  d8 e c e  |
  d2 ~  |
  %40
  d8 r16 b a8 b  |
  c8. b16 a8 b  |
  c8 a b c  |
  d4 b ~  |
  b8 b c d  |
  %45
  e2  |
  fis2  |
  g4 d  |
  g4 r  \bar "|."
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  r8 r b a  |
  g8 g b a  |
  g8 g g a  |
  b2 ~  |
  %05
  b4 g8 a  |
  b4. c8  |
  b8 a g b  |
  a2 ~  |
  a4 c8 b  |
  %10
  a8 a c b  |
  a8 a a b  |
  c2 ~  |
  c4 a8 b  |
  c4. b8  |
  %15
  d4. c8  |
  b2 ~  |
  b4 b8. a16  |
  g8 g b a  |
  g8 g g a  |
  %20
  b2 ~  |
  b4 g8 a  |
  b4. c8  |
  b4 g  |
  c2 ~  |
  %25
  c4 r  |
  c4. b8  |
  c8 b c d  |
  b2 ~  |
  b8 b d c  |
  %30
  b8 c a b  |
  g2 ~  |
  g8 r16 b a8 b  | % troigo!
  c8. b16 a8 b  |
  c8 a b c  |
  %35
  b4 g ~  |
  g8 b b c  |
  d8 d c d  |
  b8 c a c  |
  b2 ~  |
  %40
  b8 r16 b a8 b  |
  c8. b16 a8 b  |
  c8 a b c  |
  b4 g ~  |
  g8 g a b  |
  %45
  c2  |
  d4 c  |
  d4 c  |
  b4 r  \bar "|."
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

