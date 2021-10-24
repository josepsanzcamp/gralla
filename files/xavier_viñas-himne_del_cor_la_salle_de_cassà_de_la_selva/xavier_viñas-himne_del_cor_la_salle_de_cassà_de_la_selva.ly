\version "2.16.2"

\header {
  dedication=""
  title="Himne del Cor la Salle de Cassà de la Selva"
  subtitle=""
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Josep Coll i Ligora (?1957-1964?)"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  r4 r r8 g16 g c8 e  |
  g4.  f8 e4 f  |
  d8 c4. ~ c8 c16 c d8 e  |
  f4. e8 f g  e f  |
  %05
  d4 ~ d4. g,16 g c8 e  |
  g4. f8 e4 f  |
  d8 c4. ~ c8 c d e  |
  f8 f4 e8 f4 e8 f  |
  g8 r r4 r r8 d  |
  %10
  e4. f8 g f e4  |
  c4. d8 f d c4  |
  g'4. f8 e d e f  |
  d4 ~ d4. g,16 g c8 e  |
  g4. f8 e4 f  |
  %15
  d8 c4. ~ c8 c d e  |
  f8 f4 e8 f4 e8 f  |
  g8 r r4 r r8 d  |
  e4. f8 g f e4  |
  c4. d8 f d c4  |
  %20
  g'4. f8 e d e f  |
  d4 ~ d4. g,8 c e  |
  g4. f8 e4 f  |
  d8 c4. ~ c8 c d e  |
  f4. e8 f e f <d g>  |
  %25
  <c e>2. \fermata \fermata r4  \bar "|."
}
\addlyrics
{
  Ai xe -- -- quem ben
  alt nos tra -- Se --
  nye -- ra i que tots els
  cants ar -- ri -- bin fins al
  %05
  Cel Sant Jo -- an Bap --
  tis -- ta de La
  Sal le -- feu nos -- de
  gui a, -- és nos tre -- a --
  nhel De
  %10
  les Es -- co -- o -- les
  Cris ti -- a -- -- a -- nes
  en sou dig -- ne fun -- da --
  dor Can -- ta -- rem l'a --
  mor vi -- brant de
  %15
  jo -- ia al -- çant lo --
  sem pre -- molt més que_u es --
  tel Per
  nos tra -- ta -- as -- ca
  ens cal -- dri i -- -- a
  %20
  un gui at -- -- ge sa_i fi --
  del El cor La
  Sal le -- us pi --
  do lem -- que_e si -- gueu
  sem -- pre nos -- tre pro tec -- --
  %25
  tor
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  r4 r r8 g16 g c8 c  |
  e4. c8 g4 g  |
  g8 g4. ~ g8 g16 g g8 g  |
  b4. b8 a b c a  |
  %05
  b4 ~ b4. g16 g c8 c  |
  e4. c8 g4 g  |
  g8 g4. ~ g8 g g g  |
  b8 b4 b8 a4 c8 a  |
  d8 r r4 r r8 g,  |
  %10
  g4. g8 g4 g  |
  g4. a8 b a g4  |
  e'4. d8 c b c d  |
  b4 ~ b4. g16 g c8 c  |
  e4. c8 g4 g  |
  %15
  g8 g4. ~ g8 g g g  |
  b8 b4 b8 a4 c8 a  |
  d8 r r4 r r8 g,  |
  g4. g8 g4 g  |
  g4. a8 b a g4  |
  %20
  e'4. d8 c b c d  |
  b4 ~ b4. g8 c c  |
  e4. c8 g4 g  |
  g8 g4. ~ g8 g g g  |
  b4. b8 b c d g,  |
  %25
  g2. r4  \bar "|."
}

liniaroAc =
\relative g
{
  \tempo 4=120
  \clef bass
  \key c \major
  \time 4/4
  r4 r r8 g16 g c8 g  |
  c4. g8 c,4 c  |
  c8 c4. ~ c8 c16 c b8 c  |
  g'4. g8 d d e c  |
  %05
  g'4 ~ g4. g16 g c8 g  |
  c4. g8 c,4 c  |
  c8 c4. ~ c8 c b c  |
  g'8 g4 g8 d4 e8 c  |
  g'8 a b a g a f d  |
  %10
  c4. d8 e d c4  |
  e4. f8 g f e4  |
  c4. d8 g g g g  |
  g4 ~ g4. g16 g c8 g  |
  c4. g8 c,4 c  |
  %15
  c8 c4. ~ c8 c b c  |
  g'8 g4 g8 d4 e8 c  |
  g'8 a b a g a f d  |
  c4. d8 e d c4  |
  e4. f8 g f e4  |
  %20
  c4. d8 g g g g  |
  g4 ~ g4. g8 c g  |
  c4. g8 c,4 c  |
  c8 c4. ~ c8 c b c  |
  g'4. g8 g g g g  |
  %25
  c,2. \fermata r4  \bar "|."
}
\addlyrics
{
  - - - -
  - - - -
  - - - - - -
  - - - - - -
  %05
  - - - - -
  - - - -
  - - - - -
  - - - - - -
  - és nos -- tre-a nhel -- és nos -- tre_a
  %10
  nel -- Es -- co -- o -- les
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Contrabaix" shortInstrumentName = #"C"} \liniaroAc
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
        \new Staff \with {instrumentName = #"Contrabaix" shortInstrumentName = #"C"} \liniaroAc
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
  \header {instrument="Contrabaix"}
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

