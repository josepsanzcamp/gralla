\version "2.16.2"

\header {
  dedication="gralla.skamot.com"
  title="Pasdoble"
  subtitle="Jaume Guasch"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Xavier Richart"
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
  \key ees \major
  \time 2/4
  g8 g16 g g8 g  |
  g8 a b c  |
  d8 d16 d d8 d  |
  d8 ees f g  |
  %05
  aes8 g f ees  |
  f8 ees d c  |
  d8 c bes aes  |
  g4 g'  |
  \repeat volta 2 { r8 g, c d  |
  %10
  ees2 ~  |
  ees8 d ees f  |
  g2  |
  r8 g, c d  |
  ees2 ~  |
  %15
  ees8 g f ees  |
  d2  |
  r8 g, b d  |
  f2 ~  |
  f8 ees f g  |
  %20
  aes2  |
  r8 g f ees  |
  d2 ~  |
  d8 f g aes  |
  g2  |
  %25
  r8 g, c d  |
  ees2 ~  |
  ees8 d c16 d ees f  |
  g2  |
  r8 g g f  |
  %30
  e4. f8  |
  g8 aes g e  |
  g8 f4.  |
  r8 f f g  |
  aes8. g16 aes4 ~  |
  %35
  aes8 aes g f  |
  ees8. f16 g4 ~  |
  g8 g f ees  |
  d8 aes' g f  |
  ees8 d c b }
  %40
  \alternative { { d8 c4. }
  { c2 ~  |
  c4 r } }
  g8 g16 g g8 g  |
  g8 a b c  |
  %45
  d8 d16 d d8 d  |
  d8 ees f g  |
  aes8 g f ees  |
  f8 ees d c  |
  d8 c bes aes  |
  %50
  g4 g'  |
  \key c \major   r8 e16 e e8 f  |
  \repeat volta 2 { g8 a g f  |
  e4. d8  |
  e8 f g4  |
  %55
  r8 e16 e e8 f  |
  g8 a g f  |
  g4. e8  |
  g8 f4.  |
  r8 f16 f f8 g  |
  %60
  a8 b a g  |
  f4. e8  |
  d8 e f4  |
  r8 f16 f f8 g  |
  a8 b a g  |
  %65
  f4. fis8  |
  g8 e4.  |
  r8 e16 e e8 f  |
  g8 a g f  |
  e8 g4 f8  |
  %70
  e8 f g4  |
  r8 g16 g g8 a  |
  ais8 c ais a  |
  g4. e8  |
  g8 f4.  |
  %75
  r8 f16 f f8 g  |
  gis8 ais gis g  |
  f8 g gis f  |
  g8. f16 e4  |
  r8 e16 e e8 f  |
  %80
  g8 f4 e8 }
  \alternative { { f8 e4 d8  |
  e8 c4.  |
  r8 e16 e e8 f }
  { f8 g a b  |
  %85
  c4 g  |
  c4 r } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key ees \major
  \time 2/4
  g8 g16 g g8 g  |
  g8 a b c  |
  b8 b16 b b8 b  |
  b8 b b b  |
  %05
  c8 c16 c c8 c  |
  d8 d d d  |
  f8 f f f  |
  d4 d  |
  \repeat volta 2 { r2  |
  %10
  r8 c r b  |
  c2  |
  r8 ees ees d  |
  ees2  |
  r8 c r b  |
  %15
  c2  |
  r8 b b c  |
  d2  |
  r8 d r d  |
  d2  |
  %20
  r8 d d ees  |
  f2  |
  r8 b, r b  |
  b4 d  |
  ees8 b c d  |
  %25
  ees2  |
  r8 c r b  |
  c2  |
  r8 ees16 ees ees8 d  |
  ees4 r  |
  %30
  r8 c r b  |
  e4 c  |
  c2  |
  r8 d d ees  |
  f8. e16 f4 ~  |
  %35
  f8 f ees d  |
  c8. d16 ees4 ~  |
  ees8 ees d c  |
  b8 f' ees d  |
  c8 b a g }
  %40
  \alternative { { b8 c4. }
  { c4 e8 g  |
  c4 r } }
  g,8 g16 g g8 g  |
  g8 a b c  |
  %45
  b8 b16 b b8 b  |
  b8 b b b  |
  c8 c16 c c8 c  |
  d8 d d d  |
  f8 f f f  |
  %50
  d4 d  |
  \key c \major   r8 c16 c c8 d  |
  \repeat volta 2 { e8 f e d  |
  c4. b8  |
  c8 d e4  |
  %55
  r8 c16 c c8 d  |
  e8 f e d  |
  e4. cis8  |
  e8 d4.  |
  r8 d16 d d8 e  |
  %60
  f8 g f e  |
  d4. c8  |
  b8 c d4  |
  r8 d16 d d8 e  |
  f8 g f e  |
  %65
  d4. dis8  |
  e8 c4.  |
  r8 c16 c c8 d  |
  e8 f e d  |
  c8 e4 d8  |
  %70
  c8 d e4  |
  r8 e16 e e8 f  |
  g8 a g f  |
  e4. cis8  |
  e8 d4.  |
  %75
  r8 d16 d d8 e  |
  f8 g f e  |
  d8 e f d  |
  e8. d16 c4  |
  r8 c16 c c8 d  |
  %80
  e8 d4 c8 }
  \alternative { { d8 c4 b8  |
  c2  |
  r8 c16 c c8 d }
  { d8 e f d  |
  %85
  c4 e  |
  e4 r } } \bar "||"
}

liniaroAc =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key ees \major
  \time 2/4
  g8 g16 g g8 g  |
  g8 g g g  |
  g8 g16 g g8 g  |
  g8 g g g  |
  %05
  aes8 aes16 aes aes8 aes  |
  aes8 aes aes aes  |
  aes8 aes aes aes  |
  b4 b  |
  \repeat volta 2 { r2  |
  %10
  r8 g r g  |
  g2  |
  r8 g c b  |
  c2  |
  r8 g r g  |
  %15
  g2  |
  r8 g aes a  |
  b2  |
  r8 b r b  |
  b2  |
  %20
  r8 b b c  |
  d2  |
  r8 g, r g  |
  g4 b  |
  c8 g a b  |
  %25
  c2  |
  r8 g r g  |
  g2  |
  r8 g16 g c8 b  |
  c8 g a b  |
  %30
  c8 g r g  |
  c4 bes  |
  aes2 ~  |
  aes4 r  |
  aes4 c ~  |
  %35
  c4 bes  |
  g4 c ~  |
  c4 aes  |
  g4 r  |
  g4 r }
  %40
  \alternative { { g2 }
  { c2 ~  |
  c4 r } }
  g8 g16 g g8 g  |
  g8 g g g  |
  %45
  g8 g16 g g8 g  |
  g8 g g g  |
  aes8 aes16 aes aes8 aes  |
  aes8 aes aes aes  |
  aes8 aes aes aes  |
  %50
  b4 b  |
  \key c \major   r2  |
  \repeat volta 2 { c2  |
  g2  |
  c8 g c4  |
  %55
  g2  |
  c2  |
  g2  |
  b8 g b4  |
  g2  |
  %60
  d'2  |
  b2  |
  b8 a g4  |
  b2  |
  g2  |
  %65
  b2  |
  c8 g g4 ~  |
  g4 r  |
  c2  |
  g2  |
  %70
  c8 g c4  |
  g2  |
  c2  |
  g2  |
  a2 ~  |
  %75
  a4 r  |
  c2  |
  gis4 b  |
  c2  |
  g2  |
  %80
  a2 }
  \alternative { { g2  |
  c8 g16 g g8 g  |
  c2 }
  { g2  |
  %85
  g4 g  |
  c4 r } } \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
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
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
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
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
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
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

