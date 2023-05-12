\version "2.16.2"

\header {
  dedication=""
  title="Caresse sur l'Ocean"
  subtitle=""
  subsubtitle=""
  poet="Bruno Coulais"
  meter=""
  piece=""
  composer="(Los chicos del coro)"
  arranger="Gralla"
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  e2.  g8 f  |
  \time 2/4   g4 d8  c  |
  \time 4/4   d1  |
  d2. f8  e   |
  %05
  \time 2/4   d4 c8 b  |
  \time 4/4   c1  |
  \time 3/4   a4. b8 c d  |
  c2 b8 a  |
  d2 r4  |
  %10
  \time 4/4   e2. g8 f  |
  \time 2/4   g4 d8 c  |
  \time 4/4   d1  |
  a'2. g8 f  |
  \time 2/4   e4 d8 c  |
  %15
  \time 4/4   a'4 a,2.  |
  \time 3/4   a8 c d c e4 ~  |
  e4 d2  |
  \time 4/4   a8 b c b c b c d  |
  c8 b c b b c d e  |
  %20
  e8 d e d e d e g  |
  d8 c d c e d e d  |
  \time 2/4   a'2  |
  R2  |
  R2  |
  %25
  \time 4/4   c4 b8 a g f g a  |
  e2 d  |
  c1  \bar "|."
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  r1  |
  \time 2/4   R2  |
  \time 4/4   r4 b c d  |
  d1  |
  %05
  \time 2/4   b4 r  |
  \time 4/4   r4 a b c ~  |
  \time 3/4   c2.  |
  r2 r4  |
  b4 c d  |
  %10
  \time 4/4   c2. r4  |
  \time 2/4   b2  |
  \time 4/4   r4 b c d  |
  f2. e8 d  |
  \time 2/4   c4 b8 a  |
  %15
  \time 4/4   f1  |
  \time 3/4   a2.  |
  c2.  |
  \time 4/4   r1  |
  r2 g8 a b c  |
  %20
  c8 b c b c b c e  |
  a,8 f a f b g b g  |
  \time 2/4   c2  |
  R2  |
  R2  |
  %25
  \time 4/4   c1 ~  |
  c2 b  |
  c1  \bar "|."
}

liniaroAc =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  r1  |
  \time 2/4   R2  |
  \time 4/4   r4 g f e  |
  f1  |
  %05
  \time 2/4   g2  |
  \time 4/4   a1  |
  \time 3/4   c2.  |
  a4 g f  |
  g2.  |
  %10
  \time 4/4   e2. r4  | % kompletite
  \time 2/4   g2  | % troigo!
  \time 4/4   b2 r  |
  r1  |
  \time 2/4   g2  |
  %15
  \time 4/4   f1  |
  \time 3/4   a2.  |
  g2.  |
  \time 4/4   c1  |
  a2 g  |
  %20
  a2 f  |
  f2 g  |
  \time 2/4   a2  |
  R2  |
  R2  |
  %25
  \time 4/4   a1  |
  g1  |
  c1  \bar "|."
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

