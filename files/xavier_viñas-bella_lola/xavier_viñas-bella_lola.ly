\version "2.16.2"

\header {
  dedication=""
  title="La Bella Lola"
  subtitle="havanera"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="arr. Jaume Vidal"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  r8 b b c   |
  \repeat volta 2 { d16  d8 d16 e8 d  |
  d16 c b4. ~  |
  b8 b  b c  |
  %05
  d16 d8 d16 e8 d  |
  fis2 ~  |
  fis8 c c d  |
  e16 e8 e16 fis8 e  |
  e16 d8 c16 d8 e  |
  %10
  fis16 fis8 e16 d8 c  |
  \mark "Fine" b2 ~ }
  \alternative { { b8 b b c }
  { b8 d g fis } }
  a2 ~  |
  %15
  a8 g fis e  |
  d2 ~  |
  d8 d e b  |
  d16 c8 b16 c8 d  |
  fis16 fis8 g16 d8 e  |
  %20
  d2 ~  |
  d8 d g fis  |
  a2 ~  |
  a8 g fis e  |
  d2 ~  |
  %25
  d8 d e b  |
  d16 c8 b16 c8 d  |
  fis16 fis8 e16 d8 c  |
  b2 ~  |
  b4 r  |
  %30
  d8. d16 d8 e  |
  d4. d8  |
  e8. d16 \times 2/3 { d8 c b }  |
  c2  |
  e8. e16 e8 d  |
  %35
  e8. e16 e8 fis  |
  a8. g16 fis8 e  |
  d2 ~  |
  d8 d g a  |
  \repeat volta 2 { fis8. g16 e8 fis  |
  %40
  d8. e16 c8 d  |
  b8. c16 d4 ~  |
  d8. d16 e8 d }
  \alternative { { a8. b16 c4 ~  |
  c8 d fis e  |
  %45
  d2 ~  |
  d8 d g a }
  { a,8. b16 c8 d } }
  fis4. e8  |
  d4 c  |
  %50
  b2 ~  |
  \mark "D.C. al Fine" b4 r  \bar "|."
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  r8 g g a  |
  \repeat volta 2 { b16 b8 b16 c8 b  |
  b16 a g4. ~  |
  g8 g g a  |
  %05
  b16 b8 b16 c8 b  |
  d2 ~  |
  d8 a a b  |
  c16 c8 c16 d8 c  |
  c16 b8 a16 b8 c  |
  %10
  d16 d8 c16 b8 a  |
  g2 ~ }
  \alternative { { g8 g g a }
  { g8 b e d } }
  fis2 ~  |
  %15
  fis8 e d c  |
  b2 ~  |
  b8 b c g  |
  b16 a8 g16 a8 b  |
  d16 d8 e16 b8 c  |
  %20
  b2 ~  |
  b8 b e d  |
  fis2 ~  |
  fis8 e d c  |
  b2 ~  |
  %25
  b8 b c g  |
  b16 a8 g16 a8 b  |
  d16 d8 c16 b8 a  |
  g2 ~  |
  g4 r  |
  %30
  b8. b16 b8 c  |
  b4. b8  |
  c8. b16 \times 2/3 { b8 a g }  |
  a2  |
  c8. c16 c8 b  |
  %35
  c8. c16 c8 d  |
  fis8. e16 d8 c  |
  b2 ~  |
  b8 b e fis  |
  \repeat volta 2 { d8. e16 c8 d  |
  %40
  b8. c16 a8 b  |
  g8. a16 b4 ~  |
  b8. b16 c8 b }
  \alternative { { a8. g16 a4 ~  |
  a8 b d c  |
  %45
  b2 ~  |
  b8 b e fis }
  { a,8. g16 a8 b } }
  d4. c8  |
  b4 a  |
  %50
  g2 ~  |
  g4 r  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument=""}
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
  \header {instrument=""}
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

