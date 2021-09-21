\version "2.16.2"

\header {
  dedication=""
  title="Ball dels gegants perses de La Bisbal"
  subtitle=""
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Perepau Jiménez"
  arranger="2003"
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
  \key c \major
  \time 2/4
  R2   |
  R2  |
  R2  |
  r4 d8 d  |
  %05
  g4 d8. e16  |
  f8 g ^\markup {\box {Z}}  f16 e d c  |
  d8 b g4  |
  a8 b16 c e8 c  |
  a4. b8  |
  %10
  c8 a d16 e d c  |
  b8 a b g  |
  a8 b16 c e8 c  |
  a4. b8  |
  c8 e d16 c b a  |
  %15
  g4 d'8 d  |
  \repeat volta 2 { g4 d8. e16  |
  f8 g f16 e d c  |
  d8 b g4  |
  a8 b16 c e8 c  |
  %20
  a4. b8  |
  c8 a d16 e d c  |
  b8 a b g  |
  a8 b16 c e8 c  |
  a4. b8  |
  %25
  c8 e d16 c b a }
  \alternative { { g4 d'8 d }
  { g,2 ~ } }
  g4 r  \bar "||"
  \time 3/4   r2 r4  | % kompletite
  %30
  r2 r4  | % kompletite
  r2 r4  | % kompletite
  r2 r4  | % kompletite
  \repeat volta 2 { d'4. g  |
  g8 fis e d e fis  |
  %35
  e4. d  |
  d8 c b a g4  |
  d'4. g  |
  g8 fis e d e fis  |
  e4 d8 d4 c8  |
  %40
  d2 r4  |
  d4. f  |
  f8 e d c d e  |
  f8 e d c4 e8  |
  d8 c b a4 b8  |
  %45
  d4. f  |
  f8 e d c d e  |
  f4 e8 d e c  |
  d8 c b a d c }
  \alternative { { b2 r4 } }
  %50
  b2. ~  |
  b4 r r4  \bar "|." % kompletite
}

liniaroAb =
\relative d''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  R2  |
  R2  |
  R2  |
  R2  |
  %05
  R2  |
  R2  |
  R2  |
  R2  |
  R2  |
  %10
  R2  |
  R2  |
  R2  |
  R2  |
  R2  |
  %15
  r4 d8 d  |
  \repeat volta 2 { b4 d8. c16  |
  b4 ~ b8 a  |
  b4 r  |
  a8 b16 c e8 c  |
  %20
  a4. g8  |
  a4 a  |
  b8 a g fis  |
  g4 r  |
  r4. g8  |
  %25
  fis8 c'16 b a8 d }
  \alternative { { b4 r }
  { b2 ~ } }
  b4 r  \bar "||"
  \time 3/4   r2 r4  | % kompletite
  %30
  r2 r4  | % kompletite
  r2 r4  | % kompletite
  r2 r4  | % kompletite
  \repeat volta 2 { c4. b  |
  d4 a8 b c d  |
  %35
  c4 g a  |
  b8 a g fis g4  |
  c4. b  |
  b4 a8 b c d  |
  c4 g a  |
  %40
  b8 a g fis g a  |
  b4. a  |
  b4. a8 b c  |
  d8 c b a4 c8  |
  b8 a g fis4 g8  |
  %45
  b4. a  |
  b4. a8 b c  |
  d4 c8 b c a  |
  b8 a g fis a4 }
  \alternative { { g2 r4 } }
  %50
  g2. ~  |
  g4 r r4  \bar "|." % kompletite
}

liniaroAc =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  R2  |
  R2  |
  R2  |
  R2  |
  %05
  R2  |
  R2  |
  R2  |
  R2  |
  R2  |
  %10
  R2  |
  R2  |
  R2  |
  R2  |
  R2  |
  %15
  r2  |
  \repeat volta 2 { r2  |
  r2  |
  g4 r8 g  |
  g4 r8 g  |
  %20
  g4 f  |
  f4 e  |
  d4 r  |
  e8. a16 c8 a  |
  fis4 d  |
  %25
  d4 fis }
  \alternative { { g4 r }
  { g2 ~ } }
  g4 r  \bar "||"
  \time 3/4   r2 r4  | % kompletite
  %30
  r2 r4  | % kompletite
  r2 r4  | % kompletite
  r2 r4  | % kompletite
  \repeat volta 2 { d4. d  |
  g4 r r  |
  %35
  c,4. e  |
  g4. d  |
  d4. d  |
  g4 r r  |
  c,4. e  |
  %40
  g4 r r  |
  d4. d  |
  f2 r4  |
  c4. e  |
  d4. d  |
  %45
  d4. d  |
  f2 r4  |
  g4 f8 g a4  |
  g4 d e }
  \alternative { { d2 r4 } }
  %50
  d2. ~  |
  d4 r r4  \bar "|." % kompletite
}

liniaroAd =
\relative f'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  f8 f16 f f8 f  |
  f16 f f f f8 f  |
  f8 f16 f f8 f16 f  |
  f4 r  |
  %05
  f8 f16 f f8 f  |
  f16 f f f f8 f  |
  f8 f16 f f8 f  |
  f16 f f f f8 f  |
  f8 f16 f f8 f  |
  %10
  f16 f f f f8 f  |
  f8 f16 f f8 f  |
  f16 f f f f8 f  |
  f8 f16 f f8 f  |
  f16 f f f f8 f  |
  %15
  f4 r  |
  \repeat volta 2 { f8 f16 f f8 f  |
  f16 f f f f8 f  |
  f8 f16 f f8 f  |
  f16 f f f f8 f  |
  %20
  f8 f16 f f8 f  |
  f16 f f f f8 f  |
  f8 f16 f f8 f  |
  f16 f f f f8 f  |
  f8 f16 f f8 f  |
  %25
  f16 f f f f8 f }
  \alternative { { f4 r }
  { f16 f f f f f f f } }
  f4 r  \bar "||"
  \time 3/4   f4 f8 f f4  |
  %30
  f4 f8 f f f  |
  f4 f8 f f4  |
  f4 r2  |
  \repeat volta 2 { f4 f8 f f4  |
  f4 f8 f f f  |
  %35
  f4 f8 f f4  |
  f4 f8 f f f  |
  f4 f8 f f4  |
  f4 f8 f f f  |
  f4 f8 f f4  |
  %40
  f4 f8 f f f  |
  f4 f8 f f4  |
  f4 f8 f f f  |
  f4 f8 f f4  |
  f4 f8 f f f  |
  %45
  f4 f8 f f4  |
  f4 f8 f f f  |
  f4 f8 f f4  |
  f4 f8 f f f }
  \alternative { { f4 f8 f f4 } }
  %50
  f4 f8 f f4  |
  f4 r r4  \bar "|." % kompletite
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAd
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
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAd
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

\bookpart {
  \header {instrument=""}
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

\bookpart {
  \header {instrument=""}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAd
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAd
      >>
    }
    \midi {}
  }
}

