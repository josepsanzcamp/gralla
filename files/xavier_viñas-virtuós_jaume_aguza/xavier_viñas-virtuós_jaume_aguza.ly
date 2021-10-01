\version "2.16.2"

\header {
  dedication=""
  title="Virtuós"
  subtitle=""
  subsubtitle=""
  poet="Gralla"
  meter=""
  piece=""
  composer="Pasdoble de Jaume Aguza"
  arranger="(1998)"
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
  \time 4/4
  r4 r g8  g16 g g8 g  |
  e8 e16 e e8 e d e f  d  |
  c8 r c r c g'16 g  \times 2/3 { g8 fis g }  |
  a8. g16 g4. e16 e \times 2/3 { e8 dis e }  |
  %05
  f8. e16 e4. c16 c \times 2/3 { c8 b c }  |
  d8. c16 \times 2/3 { c8 b c } d8. c16 b8. a16  |
  g2 r8 a'16 a \times 2/3 { a8 gis a }  |
  b8. a16 a4. f16 f \times 2/3 { f8 e f }  |
  g8. f16 f4. e16 d \times 2/3 { c8 b a }  |
  %10
  g4 d' d dis  |
  e2 ~ e8 g16 g \times 2/3 { g8 fis g }  |
  a8. g16 g4. e16 e \times 2/3 { e8 dis e }  |
  f8. e16 e4. c16 c \times 2/3 { c8 b c }  |
  d8. c16 \times 2/3 { c8 b c } d8. c16 d8. e16  |
  %15
  f2 ~ f8 a16 a \times 2/3 { a8 b a }  |
  g2 ~ g8 e16 e \times 2/3 { e8 e d }  |
  cis2 ~ cis8 a16 a \times 2/3 { a8 b c }  |
  d4 g, f' e8 d  |
  c2 ~ c8 g16 g \times 2/3 { g8 fis g }  |
  %20
  e4 g c d  |
  c8 g ~ g4. g16 g \times 2/3 { g8 fis g }  |
  e4 g g fis  |
  f2 ~ f8 f16 g \times 2/3 { a8 b c }  |
  d4 e d c8 a  |
  %25
  c8 b ~ b4. d8 c a  |
  c8 b ~ b4. b8 a gis  |
  g2 ~ g8 g16 g \times 2/3 { g8 fis g }  |
  e4 g c d  |
  c8 g ~ g4. g16 g \times 2/3 { g8 fis g }  |
  %30
  e4 g g gis  |
  a2 r4 a  |
  f'4. e8 d c b a  |
  a4 g4. e8 g e  |
  f4 g a b  |
  %35
  c2 ~ c8 g16 g \times 2/3 { g8 fis g }  |
  e4 g c d  |
  c8 g ~ g4. g16 g \times 2/3 { g8 fis g }  |
  e4 g g fis  |
  f2 ~ f8 f16 g \times 2/3 { a8 b c }  |
  %40
  d4 e d c8 a  |
  c8 b ~ b4. d8 c a  |
  c8 b ~ b4. b8 a gis  |
  g2 ~ g8 g16 g \times 2/3 { g8 fis g }  |
  e4 g c d  |
  %45
  c8 g ~ g4. g16 g \times 2/3 { g8 fis g }  |
  e4 g g gis  |
  a2 r4 a  |
  f'4. e8 d c b a  |
  a4 g4. e8 g e  |
  %50
  f4 g a b  |
  c2. r4  |
  c2\fermata r2  \bar "|." % kompletite
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  r4 r g8 g16 g g8 g  |
  c8 c16 c c8 c b c d b  |
  c8 g r g r e'16 e \times 2/3 { e8 dis e }  |
  f8. e16 e4. c16 c \times 2/3 { c8 b c }  |
  %05
  a8. g16 g4. g16 g \times 2/3 { g8 fis g }  |
  e4 g g e  |
  b'2 ~ b8 f'16 f \times 2/3 { f8 e f }  |
  g8. f16 f4. d16 d \times 2/3 { d8 cis d }  |
  e8. d16 d4. e16 d \times 2/3 { c8 d e }  |
  %10
  g4 g g g  |
  e2 ~ e8 e16 e \times 2/3 { e8 dis e }  |
  f8. e16 e4. c16 c \times 2/3 { c8 b c }  |
  a8. g16 g4. g16 g \times 2/3 { g8 fis g }  |
  e4 g g gis  |
  %15
  a2 ~ a8 f'16 f \times 2/3 { f8 g f }  |
  e2 ~ e8 g,16 g \times 2/3 { g8 g gis }  |
  a2 ~ a8 a16 a \times 2/3 { a8 g e }  |
  f4 c' b g  |
  e2 ~ e8 r r4  |
  %20
  r8 c'16 c c8 c r c r c  |
  r8 c16 c c8 c r c r c  |
  r8 c16 c c8 c r c r c  |
  r8 d16 d d8 d r d r d  |
  r8 d16 d d8 d r d r d  |
  %25
  r8 d16 d d8 d r d r d  |
  r8 d16 d d8 d r d r d  |
  r8 c16 c c8 c r c r c  |
  r8 c16 c c8 c r c r c  |
  r8 c16 c c8 c r c r c  |
  %30
  r8 c16 c c8 c r c r c  |
  r8 d16 d d8 d d4 r  |
  r8 d16 d d8 d r d r d  |
  r8 c16 c c8 c r c r c  |
  r8 d16 d d8 d r d r d  |
  %35
  r8 c16 c c8 c c r r4  |
  r8 e16 d c b c d e8 \times 2/3 { c16 d c } g4  |
  r8 e'16 d c b c a g4 r  |
  r8 g'16 c c b b a a g g f f e d cis  |
  e16 d d cis d e f g a4. r8  |
  %40
  r8 a16 f e d e f a8 a16 f d e d c  |
  b16 c d e f e d c b4. r8  |
  r8 d16 f f d d c c b b d d c b a  |
  g8 g16 a b c d dis e4. r8  |
  r8 e16 d c b c d e8 \times 2/3 { c16 d c } g4  |
  %45
  r8 e'16 d c b c a g4. r8  |
  r8 g'16 g g e e e e c c c c cis cis cis  |
  d16 a a a d a d e f4 r  |
  r8 f16 e d c d e f8 \times 2/3 { e16 f e } d4  |
  r8 e16 d c b c d e c e g4 r16  | % kompletite
  %50
  r8 d16 f f d d c c b b d d b b d  |
  c8 d16 e f g a b c4 r  |
  c2\fermata r2  \bar "|." % kompletite
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
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

