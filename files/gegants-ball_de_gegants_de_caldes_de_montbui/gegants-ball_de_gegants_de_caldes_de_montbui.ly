\version "2.22.1"

\header {
  dedication="http://gralla.skamot.com"
  title="              "
  subtitle="Ball de gegants de Caldes de Montbui"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Ramon Solé"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative a'
{
  \clef treble
  \key c \major
  \time 1/8
  a8 \tempo 4. = 120  |
  \time 6/8   \repeat volta 2 { \mark \markup {\musicglyph #"scripts.segno"} e'4-. e8 d ( c d )  |
  e4. b8 ( c ) d  |
  e8 ( d ) c d ( c ) b  |
  %05
  a4. r4 a8  |
  e'4-. e8 d ( c d )  |
  e4. b8 c d   |
  e8 ( d ) c d ( c ) b  |
  a4. r4 g8 (  |
  %10
  c4 ) e8 ( d4 ) f8 (  |
  e4. ~ ) e4 d8 (  |
  e4 ) g8 ( f4 ) e8 (  |
  d4. ~ d8 ) c b   |
  c4 d8 ( e4 ) c8 (  |
  %15
  a4. ~ ) a4 c8 (  |
   b4 ) a8 ( g4 ) b8 ( }
  \alternative { { a4. ) r4 a8 }
  { a4. ~ a4 e'8 ( } }
  a4. ~ a4 ) g8 (  |
  %20
  e4. ~ ) e4 d8 (  |
  c4. ~ ) c4 b8 (  |
  a4. ~ ) a4 e'8 (  |
  a4. ~ ) a4 g8 (  |
  e4. ) d8 c e  |
  %25
  g2. ~  |
  g4. ~ g4 e8 (  |
  a4. ~ ) a4 g8 (  |
  e4. ~ ) e4 d8 (  |
  c4. ~ ) c4 b8 (  |
  %30
  a4. ) e'8-. d-. c-.  |
  a4 g8 ( a4 ) b8 (  |
  c4 d8 ) e d c   |
  b2.  |
  \mark \markup {D.S. e Coda} e4. ~ e4 a,8  \bar "||"
  %35
  \mark \markup {\musicglyph #"scripts.coda"} a4. r4 g8 (  |
  c4 ) e8 ( d4 ) f8 (  |
  e4. ~ ) e4 d8 (  |
  e4 g8 ) f4 e8  (  |
  d4. ~ ) d8 c ( b )  |
  %40
  c4 d8 ( e4 ) c8 (  |
  a4. ~ ) a4 c8 (  |
  b4 _"rit." ) a8 ( g4 ) b8 (  |
  a2. ) \fermata  \bar "|."
}

liniaroAb =
\relative a'
{
  \tempo 4. = 120
  \clef treble
  \key c \major
  \time 1/8
  a8  |
  \time 6/8   \repeat volta 2 { c4-. c8 b ( a b )  |
  c4. b8 ( a ) b  |
  c8 ( b ) a b ( c ) d  |
  %05
  e4. r4 a,8  |
  c4-. c8 b ( a ) b  |
  c4. b8 a b   |
  c8 ( b ) a b ( c ) d  |
  e4. r4 g,8 (  |
  %10
  g4 ) g8 ( b4 ) d8 (  |
  c4. ~ ) c4 b8 (  |
  c4 ) e8 ( d4 ) c8 (  |
  b4. ) g  |
  a4. g  |
  %15
  a4. c4 c8 (  |
  b4 ) a8 ( c4 ) d8 ( }
  \alternative { { e4. ) r4 a,8 }
  { e'4. ~ e4 c8 ( } }
  f4. a,4 ) b8 (  |
  %20
  c4. ~ ) c4 b8 (  |
  a4. ~ ) a4 g8 (  |
  a4. ~ ) a4 c8 (  |
  f4. ) a,4 b8 (  |
  c4. ) a8 g a  |
  %25
  b4. c  |
  d4. g,4 c8 (  |
  f4. ) a,4 b8 (  |
  c4. ~ ) c4 b8 (  |
  a4. ~ ) a4 g8 (  |
  %30
  a4. ) r  |
  a4. c  |
  e4. g8 f e   |
  e8 ( d ) c b4 a8  |
  gis4. ~ gis4 a8  \bar "||"
  %35
  a4. r4 g8 (  |
  g4 ) g8 ( b4 ) d8 (  |
  c4. ~ ) c4 b8 (  |
  c4 e8 ) d4 c8  (  |
  b4. ) g  |
  %40
  a4. g  |
  a4. c4 c8 (  |
  b4 ) a8 ( c4 ) d8 (  |
  e2. ) \fermata  \bar "|."
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

