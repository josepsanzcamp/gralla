\version "2.16.0"

\header {
  dedication="Pasdoble"
  title="  "
  subtitle="Karik"
  subsubtitle="en memòria del dolçainer Vicent Barberà Valls, \"Karik\""
  poet=""
  meter=""
  piece=""
  composer="Paco Magnieto"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 4 { e8 e16 e d8 c _"2" _""  |
  b8 a16 gis a8 b  |
  c8 b16 a b8 c  |
  d8 c16 ( b c8 ) d  |
  %05
  f8 e16 ( d ) c8 d }
  \alternative { { e2 ~  |
  e4 r }
  { e2 _""  |
  a4 r } }
  %10
  \repeat volta 2 { e8 d16 e ( d8 ) c  |
  b2  |
  d8 c16 ( d c8 ) b  |
  a2  |
  c8 b16 ( c b8 ) a  |
  %15
  gis8. a16 b8 c  |
  d8 c16 ( b c8 ) d }
  \alternative { { f8 e16 d ( c8 ) d  |
  e2 ~  |
  e4 r }
  %20
  { f8 e16 ( d ) c8 b } }
  c2 ~  |
   c4 r8 g  |
  \repeat volta 2 { e'4. d8  |
  c4. b16 ( a )  |
  %25
  b8 c b a  |
  g4 r8 a  |
  f'4. e8  |
  d4. c16 ( b )  |
  c8 b c d  |
  %30
  e4 r8 g,  |
  e'4. d8  |
  c4. b16 ( c )  |
  d8 c b g  |
  a4 e'8-> e->  |
  %35
  e4-> d8 c  |
  d4 c8 b  |
  c2 ~  |
  c4 e8-> e->  |
  e4-> d8 c  |
  %40
  d4 c8 b }
  \alternative { { c2 ~  |
  c4 r8 g }
  { a2 ~  |
  \mark \markup {D.C. e Coda} a4 r } }
  %45
  \mark \markup {\musicglyph #"scripts.coda"} a8 r e'-> r  |
  a4-> r  \bar "|."
}

liniaroAb =
\relative a''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 4 { a8 a16 a a4  |
  e8 e16 e e4  |
  f8 f16 f f4  |
  f8 e16 ( d ) c8 b  |
  %05
  d8 c16 ( b ) a8 gis }
  \alternative { { a2 ~  |
  a4 r }
  { a2  |
  a4 r } }
  %10
  \repeat volta 2 { g'8 r f r  |
  e8 r d16 ( e f g )  |
  f8 r e r  |
  d8 r c16 ( d e f )  |
  e8 r d r  |
  %15
  b8. c16 d8 e  |
  f8 e16 ( d c8 ) b }
  \alternative { { d8 c16 b ( a8 ) gis  |
  a2 ~  |
  a4 r }
  %20
  { d8 c16 ( b a8 ) g } }
  c2 ~  |
  c4 r8 g'  |
  \repeat volta 2 { g4. f8  |
  e4. d16 ( c )  |
  %25
  d8 e f e  |
  g4 r8 a  |
  a4. g8  |
  f4. e16 ( d )  |
  e8 f g a  |
  %30
  g4 r8 g  |
  g4. f8  |
  e4. d16 ( e )  |
  f8 e d e  |
  a4 g8-> g->  |
  %35
  g4-> f8 e  |
  f4 e8 f  |
  e2 ~  |
  e4 g8-> g->  |
  g4-> f8 e  |
  %40
  f4 e8 f }
  \alternative { { e2 ~  |
  e4 r8 g }
  { e2 ~  |
  e4 r } }
  %45
  a,8 r e'-> r  |
  a4-> r  \bar "|."
}

liniaroAc =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 4 { e8 e16 e d8 c  |
  b8 a16 gis a8 b  |
  c8 b16 a b8 c  |
  d8 c16 ( b ) c8 d  |
  %05
  f8 e16 ( d c8 ) d }
  \alternative { { e2 ~  |
  e4 r }
  { e2  |
  a4 r } }
  %10
  \repeat volta 2 { e8 d16 e ( d8 ) c  |
  b2  |
  d8 c16 ( d ) c8 b  |
  a2  |
  c8 b16 ( c ) b8 a  |
  %15
  gis8. a16 b8 c  |
  d8 c16 ( b c8 ) d }
  \alternative { { f8 e16 d ( c8 ) d  |
  e2 ~  |
  e4 r }
  %20
  { f8 e16 ( d c8 ) b } }
  c2 ~  |
  c4 r8 g  |
  \repeat volta 2 { g4. a8  |
  g4. b16 ( a )  |
  %25
  g8 a g a  |
  g4 r8 a  |
  a4. b8  |
  a4. c16 ( b )  |
  c8 d e d  |
  %30
  c4 r8 g  |
  g4. a8  |
  g4. b16 ( c )  |
  b8 a g b  |
  a4 c8-> c->  |
  %35
  c4-> b8 a  |
  b4 a8 gis  |
  c2 ~  |
  c4 c8-> c->  |
  c4-> b8 a  |
  %40
  b4 a8 gis }
  \alternative { { c2 ~  |
  c4 r8 g }
  { a2 ~  |
  a4 r } }
  %45
  a8 r a-> r  |
  a4-> r  \bar "|."
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
  }\score { \unfoldRepeats
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
  }\score { \unfoldRepeats
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
  }\score { \unfoldRepeats
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
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \midi {}
  }
}

