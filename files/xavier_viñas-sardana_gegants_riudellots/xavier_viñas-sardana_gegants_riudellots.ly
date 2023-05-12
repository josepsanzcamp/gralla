\version "2.16.2"

\header {
  dedication=""
  title="Sardana dels gegants de Riudetolls"
  subtitle=""
  subsubtitle="(harmonitzada per en Xavier Viñas pensant en\nels components del grup de grallers de Riudellots\nde l'any 2005)"
  poet="1ª Veu: Carla, Edu i Helena\n2ª Veu: Laia, Marc, Oriol\n3ª Veu: Albert, Elna, Laura"
  meter=""
  piece=""
  composer=""
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
  \key g \major
  \time 2/4
  \repeat volta 2 { g4  e8 g ^\markup {\box {Z}}  |
  fis4 d8 fis   |
  e4 c8  e  |
  d8 b g4  | }
  %05
  g4 b8 c  |
  d4. d8  |
  e4 g8 e  |
  d8 b g d'  |
  g4. e8  |
  %10
  d4 b8 d  |
  g4. e8  |
  d2  |
  e8. d16 c8 b  |
  a8. b16 c8 e  |
  %15
  d8. e16 d8 e  |
  d2  |
  r8 d d d  |
  e4 g  |
  g4 a  |
  %20
  b2 ~  | % troigo!
  b4 a  |
  g2  \bar "|."
}

liniaroAb =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  \repeat volta 2 { g4 e8 g  |
  fis4 d8 fis  |
  e4 c8 e  |
  d8 b g4  | }
  %05
  g4 b8 c  |
  b4. b8  |
  c4 e8 c  |
  b4 g  |
  e'4. e8  |
  %10
  b4 b8 g  |
  e'4. e8  |
  b2  |
  c8. b16 a8 b  |
  a8. g16 g8 g  |
  %15
  b8. c16 b8 c  |
  b2  |
  r8 b b b  |
  c4 d  |
  d4 d  |
  %20
  d2 ~  |
  d4 d  |
  b2  \bar "|."
}

liniaroAc =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  \repeat volta 2 { c2  |
  d2  |
  c2  |
  b2  | }
  %05
  g4 g8 g  |
  g4. g8  |
  g4 g8 g  |
  d'4 b  |
  c2  |
  %10
  g4 g8 g  |
  c4. c8  |
  g2  |
  g4 g8 g  |
  g8. a16 g8 a  |
  %15
  g8. a16 g8 a  |
  g2  |
  r8 g g g  |
  a4 b  |
  b4 a  |
  %20
  g2 ~  |
  g4 a  |
  g2  \bar "|."
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

