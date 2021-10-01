\version "2.16.2"

\header {
  dedication=""
  title="Vol i no Vol"
  subtitle=""
  subsubtitle=""
  poet="Daniel Carbonell"
  meter="(2000-2001)"
  piece=""
  composer="3 veus"
  arranger="adaptació: Xavier Viñas"
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative f''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  r2  r2  | % kompletite
  \repeat volta 2 { \mark \markup {\musicglyph #"scripts.segno"} r8 f16 f f8 d f g a g  |
  e8 g16 g g8  c, e2  |
  r8 f16 f f8 d b c d dis  |
  %05
  e8 g16 g g8 f e g f e  |
  d8. ^\markup {\rounded-box {Z}}  e16 f4 r8 f e d  |
  e8. f16 g8 a g2  |
  r8 g f e f r g4 }
  \alternative { { e4 d c r }
  %10
  { e8. d16 c4 r8 g'16 g \times 2/3 { g8 g g } } }
  \repeat volta 2 { g8 g,16 g g8 g' b g,16 g g8 g'  |
  e8. d16 e4 r8 g,16 g \times 2/3 { g8 g g }  |
  \times 2/3 { f'8 f f } f g a b c d  |
  g,8. f16 e4 r8 e d c  |
  %15
  g'2 r8 e d e }
  \alternative { { \mark "D.S. al Fine" c4 r8 g c4 c8 e } }
  c4 r8 r4 e8 c4  |
  r8 g' e4 r r8 g,  |
  c4 r8 c r r4 r8  \bar "|." % kompletite
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  r8 g e' c r2  | % kompletite
  \repeat volta 2 { d2. b4  |
  c2 r8 g c e  |
  d2. b4  |
  %05
  c2 r8 e d c  |
  b8. c16 d4 r8 d c b  |
  c8. d16 e4 ~ e8 e d c  |
  b2 r8 g a b }
  \alternative { { c4 b r8 g c e }
  %10
  { c8 g g g e g16 g \times 2/3 { g8 g g } } }
  \repeat volta 2 { g8 b16 b b8 e d b16 b b8 c  |
  c8. b16 c8 g e4 r  |
  b'16 a b c d c d e f8 g a f  |
  e8. d16 c8 g' e2  |
  %15
  r8 g f d b g b g }
  \alternative { { c8 g' e4 r8 g, c e } }
  c8 g' e4 r r8 g,  |
  c4 r r8 e d4  |
  r4 c8 r r2  \bar "|." % kompletite
}

liniaroAc =
\relative e'
{
  \tempo 4=120
  \clef treble
  \key a \major
  \time 4/4
  r8 e a cis r2  | % kompletite
  \repeat volta 2 { b2. gis4  |
  a2 r8 e a cis  |
  b2. gis4  |
  %05
  a2 r8 cis b a  |
  gis8. a16 b4 r8 b a gis  |
  a8. b16 cis4 ~ cis8 cis b a  |
  gis2 r8 e fis gis }
  \alternative { { a4 gis r8 e a cis }
  %10
  { a8 e e e cis e16 e \times 2/3 { e8 e e } } }
  \repeat volta 2 { e8 gis16 gis gis8 cis b gis16 gis gis8 a  |
  a8. gis16 a8 e cis4 r  |
  gis'16 fis gis a b a b cis d8 e fis d  |
  cis8. b16 a8 e' cis2  |
  %15
  r8 e d b gis e gis e }
  \alternative { { a8 e' cis4 r8 e, a cis } }
  a8 e' cis4 r r8 e,  |
  a4 r r8 cis b4  |
  r4 a8 r r2  \bar "|." % kompletite
}

liniaroAd =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  r2 r2  | % kompletite
  \repeat volta 2 { r8 g a b a4 g  |
  c,4 g' c r  |
  f,8 d e f g4 f  |
  %05
  e8. f16 g8 a g4 r  |
  r4. g8 b4 g  |
  c,4 g' c r  |
  r4 g d d }
  \alternative { { g4 g c, r }
  %10
  { c8 d16 e g f e d c4 r } }
  \repeat volta 2 { g'8 r g r d r g4  |
  c,4 g' c, r  |
  \times 2/3 { d8 d d } d e \times 2/3 { f f f } f f  |
  e8. f16 g4 r r  |
  %15
  r8 e' d b g4 g }
  \alternative { { c,4 r8 g' e4 r } }
  c4 r8 g' e4 r  |
  r4 r8 c g'4 r8 g  |
  c,8 r e r r2  \bar "|." % kompletite
}

liniaroAe =
\relative g
{
  \tempo 4=120
  \clef bass
  \key c \major
  \time 4/4
  r2 r2  | % kompletite
  \repeat volta 2 { r8 g a b a4 g  |
  c,4 g' c r  |
  f,8 d e f g4 f  |
  %05
  e8. f16 g8 a g4 r  |
  r4. g8 b4 g  |
  c,4 g' c r  |
  r4 g d d }
  \alternative { { g4 g c, r }
  %10
  { c8 d16 e g f e d c4 r } }
  \repeat volta 2 { g'8 r g r d r g4  |
  c,4 g' c, r  |
  \times 2/3 { d8 d d } d e \times 2/3 { f f f } f f  |
  e8. f16 g4 r r  |
  %15
  r8 e' d b g4 g }
  \alternative { { c,4 r8 g' e4 r } }
  c4 r8 g' e4 r  |
  r4 r8 c g'4 r8 g  |
  c,8 r e r r2  \bar "|." % kompletite
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Saxo Alt" shortInstrumentName = #"S"} \liniaroAc
        \new Staff \with {instrumentName = #"Gralla" shortInstrumentName = #"G"} \liniaroAd
        \new Staff \with {instrumentName = #"Contrabaix" shortInstrumentName = #"C"} \liniaroAe
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Saxo Alt" shortInstrumentName = #"S"} \liniaroAc
        \new Staff \with {instrumentName = #"Gralla" shortInstrumentName = #"G"} \liniaroAd
        \new Staff \with {instrumentName = #"Contrabaix" shortInstrumentName = #"C"} \liniaroAe
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Gralla"}
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
  \header {instrument="Gralla"}
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
  \header {instrument="Saxo Alt"}
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
  \header {instrument="Gralla"}
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

\bookpart {
  \header {instrument="Contrabaix"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAe
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAe
      >>
    }
    \midi {}
  }
}

