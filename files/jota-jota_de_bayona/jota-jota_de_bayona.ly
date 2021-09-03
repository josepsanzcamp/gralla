\version "2.22.1"

\header {
  dedication="Jota"
  title="   "
  subtitle="Jota de Bayona"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Lapurdi, Euskadi "
  arranger="del repertori de M. Elizaga"
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative d''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/4
  d4 e fis  |
  g2 a4  |
  g4 fis2 ~  |
  fis2 r4  |
  %05
  fis4 fis a  |
  e2 fis4  |
  d2. ~ ~  |
  d2 r4  |
  b4 b b  |
  %10
  e2 d4  |
  d4 c2 ~  |
  c2 r4  |
  a4 a a  |
  d2 c4  |
  %15
  b2. ~  |
  b2 r4  |
  d4 e fis  |
  g2 a4  |
  g4 fis2 ~  |
  %20
  fis2 r4  |
  fis4 fis a  |
  e2 fis4  |
  d2. ~  |
  d2 r4  |
  %25
  b'4 b b  |
  b4 a b  |
  c4 e,2 ~  |
  e2 r4  |
  fis4 fis fis  |
  %30
  fis4 d a'  |
  g2. ~  |
  g4 b, c  \bar "||"
  d4 e8 ( fis ) g4 ~  |
  g4 fis e  |
  %35
  fis4 e8 d c4 ~   |
  c4 a b  |
  c4 d8 ( e ) fis4 ~  |
  fis4 e d  |
  e4 d8 ( c ) b4 ~  |
  %40
  b4 b c  |
  d4 e8 ( fis ) g4 ~  |
  g4 fis e  |
  fis4 e8 d c4 ~   |
  c4 a b  |
  %45
  c4 d e  |
  fis4 d a'  |
  g4 r fis  |
  g4 r e  |
  \key c \major   \repeat volta 2 { g4 e c'  |
  %50
  b4 a f  |
  a4 f <a c>  |
  g4 e e  |
  g4 e c'  |
  b4 a f  |
  %55
  a4 g f }
  \alternative { { e4 r e }
  { e4 r r } } \bar "||"
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/4
  b4 b b  |
  b2 c4  |
  c4 c2 ~  |
  c2 r4  |
  %05
  c4 c c  |
  c2 c4  |
  b2. ~ ~  |
  b2 r4  |
  g4 g g  |
  %10
  c2 b4  |
  b4 a2 ~  |
  a2 r4  |
  fis4 fis fis  |
  b2 a4  |
  %15
  g2. ~  |
  g2 r4  |
  b4 b b  |
  b2 c4  |
  c4 c2 ~  |
  %20
  c2 r4  |
  c4 c c  |
  c2 c4  |
  b2. ~  |
  b2 r4  |
  %25
  d4 d d  |
  d4 c d  |
  e4 c2 ~  |
  c2 r4  |
  c4 c c  |
  %30
  c4 c c  |
  b2. ~  |
  b4 g a  \bar "||"
  b4 c8 ( d ) e4 ~  |
  e4 d c  |
  %35
  d4 c8 b a4 ~   |
  a4 fis g  |
  a4 b8 ( c ) d4 ~  |
  d4 c b  |
  c4 b8 ( a ) g4 ~  |
  %40
  g4 g a  |
  b4 c8 ( d ) e4 ~  |
  e4 d c  |
  d4 c8 b a4 ~   |
  a4 fis g  |
  %45
  a4 b c  |
  c4 c c  |
  b4 r d  |
  b4 r c  |
  \key c \major   \repeat volta 2 { e4 c e  |
  %50
  g4 f d  |
  f4 d f  |
  e4 c c  |
  e4 c e  |
  g4 f d  |
  %55
  f4 e d }
  \alternative { { c4 r c }
  { c4 r r } } \bar "||"
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

