\version "2.16.2"

\header {
  dedication=""
  title="Izquierdo"
  subtitle=""
  subsubtitle=""
  poet="Autor: Jaume Vidal"
  meter=""
  piece=""
  composer="Dedicada al seu amic"
  arranger="Joan Izquierdo, de Valls"
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
  \key bes \major
  \time 2/4
  d8  d16 d d8 c16 d  |
  ees8 r r f  |
  g8 f16 ees d8 c   |
  d8 bes g r  |
  %05
  c8 c16 c c8 bes16 c  |
  d8 r r  bes  |
  d16 ees d c bes8 a  |
  g8 r g r  \bar "||"
  R2  |
  %10
  R2  |
  R2  |
  r4 g8 bes  |
  d4 d ~  |
  d8 c16 d ees8 d16 c  |
  %15
  d2 ~  |
  d8 bes16 c d8 bes  |
  c16 bes a bes c4 ~  |
  c8 bes16 a bes8 c  |
  d8 f4 ees8  |
  %20
  d2 ~  |
  d8 r r4  |
  R2  |
  R2  |
  r4 g,8 bes  |
  %25
  d4 d ~  |
  d8 c16 d ees8 d16 c  |
  d2 ~  |
  d8 bes16 c d8 bes  |
  c16 bes a bes c4 ~  |
  %30
  c8 bes16 a bes8 a  |
  g2 ~  |
  g8 g bes d  |
  f8 d r f  |
  ees4 f  |
  %35
  g8 f16 ees d4 ~  |
  d8 ees f g  |
  f8 c4 d8  |
  f4 ees  |
  ees8 d4.  |
  %40
  r8 g, bes c  |
  d8 bes r bes  |
  a4 bes  |
  c4 bes8 c  |
  d2 ~  |
  %45
  d4 r  \bar "||"
  f8 r f r  |
  f8 r f r  |
  f8 f f f  |
  e8 e16 e e8 e  |
  %50
  e4 r  \bar "||"
  \key c \major   r4 c8 d  |
  e4. f8  |
  e4 d  |
  e16 ( f e d c4 ~ )  |
  %55
  c2  |
  r4 c8 d  |
  e4. f8  |
  e4 c  |
  d16 ( e d c b4 ~ )  |
  %60
  b2  |
  r4 b8 c  |
  d4. e8  |
  d2  |
  r8 b g' f  |
  %65
  e16 f e d ( c4 ~ )  |
  c2  |
  r4 g8 c  |
  e8 d c d  |
  e4. c8  |
  %70
  f2 ~  |
  f4 e8 b  |
  d2 ~  |
  d8 b c b  |
  a8 g r d'  |
  %75
  g,8 r c d  |
  e4. f8  |
  e4 d  |
  e16 ( f e d c4 ~ )  |
  c2  |
  %80
  r4 c8 d  |
  e4. f8  |
  e2 ~  |
  e8 c d e  |
  f4. d8  |
  %85
  g2 ~  |
  g4 r  |
  R2  |
  d16 ( c b c d4 )  |
  e16 d c d ( e4 ~ )  |
  %90
  e4 e8 f  |
  g2 ~  |
  g8 g,16 ( a b8 a16 b )  |
  c8 b16 ( c d8 c16 ) d  |
  e8 e16 e e e e e  |
  %95
  e8 e r f  |
  e4 r  \bar "|."
}

liniaroAb =
\relative bes'
{
  \tempo 4=120
  \clef treble
  \key bes \major
  \time 2/4
  bes8 g16 a bes8 a16 bes  |
  c8 r r d  |
  d8 c bes a  |
  bes8 bes g r  |
  %05
  a8 a16 a a8 g16 a  |
  bes8 r r g  |
  bes8. a16 bes8 a  |
  g8 r g r  \bar "||"
  r8 c bes a  |
  %10
  g8 bes4 a8  |
  g2 ~  |
  g4 g8 g  |
  bes4 bes ~  |
  bes8 a16 bes c8 bes16 a  |
  %15
  bes2 ~  |
  bes8 g16 a bes8 g  |
  a16 g f g a4 ~  |
  a8 g16 a g8 a  |
  bes8 d4 c8  |
  %20
  bes2  |
  r8 c bes a  |
  g8 bes4 a8  |
  g2 ~  |
  g4 g8 g  |
  %25
  bes4 bes ~  |
  bes8 a16 bes c8 bes16 a  |
  bes2 ~  |
  bes8 g16 a bes8 g  |
  a8 a a4 ~  |
  %30
  a8 bes16 a bes8 a  |
  g2 ~  |
  g8 g g bes  |
  d8 bes r d  |
  c4 d  |
  %35
  ees8 d16 c bes4 ~  |
  bes8 c d d  |
  d8 a4 bes8  |
  d4 c  |
  c8 bes4.  |
  %40
  r8 g g a  |
  bes8 g r g  |
  a4 g  |
  a4 g8 a  |
  bes2 ~  |
  %45
  bes4 g8 b  \bar "||"
  d8 c d e  |
  d8 b a b  |
  g4 a8 b  |
  c8 c16 c c8 c  |
  %50
  c4 g  \bar "||"
  \key c \major   c4 c8 b  |
  c4. d8  |
  c4 b  |
  g4 e ~  |
  %55
  e2  |
  r4 c'8 b  |
  c4. d8  |
  c4 g  |
  g4 g ~  |
  %60
  g2  |
  r4 g8 a  |
  b4. c8  |
  b2  |
  r8 g b a  |
  %65
  g4 e ~  |
  e2  |
  r4 g8 g  |
  c8 b a b  |
  c4. c8  |
  %70
  a4 b  |
  d4 c8 g  |
  b2 ~  |
  b8 g g g  |
  a8 g r a  |
  %75
  g8 r c b  |
  c4. d8  |
  c4 b  |
  g4 e ~  |
  e2  |
  %80
  r4 c'8 b  |
  c4. d8  |
  c2 ~  |
  c8 g b ais  |
  a4. c8  |
  %85
  b2  |
  r4 g8 a  |
  b16 a ( g a b4 )  |
  b16 a ( g a b4 ) |
  c8 g c4 ~  |
  %90
  c4 c8 b  |
  a2 ~  |
  a8 g16 ( a b8 ) a16 b   |
  c8 b16 ( c b8 ) a16 b   |
  c8 c16 c c c c c  |
  %95
  c8 c r g  |
  c4 r  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
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

