\version "2.16.2"

\header {
  dedication=""
  title="CONTRADANSA D' EN VIVIOLDO"
  subtitle=""
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="arrenjaments: B. Xavier Muixench i Maspons"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 { g8 g f f  |
  e8 e e16 g f e  |
  d8 d d16 f e d  |
  c16 b c d e d e f  |
  %05
  g8 g f f  |
  e8 e e16 g f e  |
  d8 d d16 f e d  |
  c8 g c r  | }
  \key g \major   \repeat volta 2 { d8 d d16 e d c  |
  %10
  b8 d c16 d c b  |
  a8 c fis16 g fis e  |
  e8 d d r  |
  d8 d d16 e d c  |
  b8 d c16 d c b  |
  %15
  a16 b c d e fis g a  |
  \mark "D.C." g8 g g r  | }
}

liniaroAb =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 { e4 d  |
  c8 c c4  |
  b8 b b4  |
  a8 a c c  |
  %05
  e4 d  |
  c8 c c4  |
  b8 b b4  |
  g8 c c r  | }
  \key g \major   \repeat volta 2 { b16 b8 b16 b8 g  |
  %10
  g8 b a16 b a g  |
  a8 c d c  |
  c8 b b r  |
  b16 b8 b16 b8 b  |
  g8 b a16 b a g  |
  %15
  c8 e c d  |
  b8 b b r  | }
}

liniaroAc =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 { r8 c r b  |
  r8 a r a  |
  r8 g r g  |
  r8 \times 2/3 { b16 c d } r8 \times 2/3 { c16 d e }  |
  %05
  r8 c r b  |
  r8 a r a  |
  r8 g g b  |
  g8 g g r  | }
  \key g \major   \repeat volta 2 { g8 g r g  |
  %10
  g8 g r a  |
  a8 a c a  |
  a8 g g r  |
  g8 g r g  |
  g8 g r a  |
  %15
  a16 g a b c d e fis  |
  d8 d d r  | }
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"gralla 1" shortInstrumentName = #"g"} \liniaroAa
        \new Staff \with {instrumentName = #"gralla 2" shortInstrumentName = #"g"} \liniaroAb
        \new Staff \with {instrumentName = #"gralla 3" shortInstrumentName = #"g"} \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"gralla 1" shortInstrumentName = #"g"} \liniaroAa
        \new Staff \with {instrumentName = #"gralla 2" shortInstrumentName = #"g"} \liniaroAb
        \new Staff \with {instrumentName = #"gralla 3" shortInstrumentName = #"g"} \liniaroAc
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="gralla 1"}
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
  \header {instrument="gralla 2"}
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
  \header {instrument="gralla 3"}
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

