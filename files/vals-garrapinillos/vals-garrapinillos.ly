\version "2.22.1"

\header {
  dedication="Vals"
  title="  "
  subtitle="Garrapinillos"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Blas Coscollar"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  r4 g8 fis g a  |
  g4 r2  |
  r4 g8 fis g a  |
  g4 r2  |
  %05
  r4 g8 fis g a  |
  g4 r f  |
  e4 r e  |
  d4 g g  |
  g4 r2  |
  %10
  c4. b8 a g  |
  e4. g8 a c  |
  b4 f f  |
  f4 r2  |
  b4. a8 g f  |
  %15
  d4. f8 g b  |
  a4 e e  |
  e4 r2  |
  e4. d8 b c  |
  a'2 g4  |
  %20
  g4. f8 d b  |
  g4 r2  |
  f'4. e8 cis d  |
  b'2 a4  |
  a8 g a g e c  |
  %25
  g4 r g  |
  c'4. b8 a g  |
  e4. g8 a c  |
  b4 f f  |
  f4 r2  |
  %30
  b4. a8 gis f  |
  e4. d8 c b  |
  a4 r2  |
  c'4. b8 d c  |
  d4. c8 b c  |
  %35
  a4 g4. e8  |
  a2 g4  |
  f4. a8 f a  |
  g2 b4  |
  c4 g e  |
  %40
  c'4 r2  \bar "|."
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  r2 r4  |
  r4 b c  |
  d4 r2  |
  r4 c d  |
  %05
  e4 r2  |
  r4 d b  |
  c4 e c  |
  b4 d b  |
  g4 r2  |
  %10
  r4 g' e  |
  r4 g e  |
  r4 d b  |
  r8 a b c d e  |
  f4 d b  |
  %15
  r4 b d  |
  r4 c g  |
  c4 c8 d e f  |
  g2 e4  |
  r4 e c  |
  %20
  r4 d b  |
  r4 f' d  |
  r4 b g  |
  r4 d' f  |
  r4 e g  |
  %25
  e8 g a g e c  |
  e4 g e  |
  r4 g e  |
  r4 d b  |
  b8 c d e f d  |
  %30
  r4 d b  |
  r4 gis' e  |
  r4 e c  |
  r4 a' a  |
  r4 f d  |
  %35
  r4 e c  |
  r4 e cis  |
  r4 a d  |
  r4 b d  |
  g2.  |
  %40
  e4 r2  \bar "|."
}

liniaroAc =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  r2 r4  |
  r4 g g  |
  g4 r2  |
  r4 g g  |
  %05
  g4 r2  |
  r4 g r  |
  r4 g r  |
  r4 g g  |
  g4 r2  |
  %10
  e'2 r4  |
  c2 r4  |
  g2 r4  |
  g2 r4  |
  g2 r4  |
  %15
  g2 r4  |
  c2 r4  |
  c4 r2  |
  c2 r4  |
  c2 r4  |
  %20
  b2 r4  |
  g2 r4  |
  g2 r4  |
  g2 r4  |
  c2 r4  |
  %25
  c2 r4  |
  c2 r4  |
  c2 r4  |
  g2 r4  |
  g2 b4  |
  %30
  gis2.  |
  b2 r4  |
  c8 a a b c d  |
  e4 r2  |
  gis2 r4  |
  %35
  c,2 r4  |
  cis2 r4  |
  d2 r4  |
  f2 r4  |
  e2.  |
  %40
  c4 r2  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
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
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
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

\bookpart {
  \header {instrument="Gralla 3"}
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

