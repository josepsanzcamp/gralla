\version "2.22.1"

\header {
  dedication="Ball de gegants"
  title="                 "
  subtitle="Ball dels gegants de Ribes"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="David Puertas Esteve"
  arranger=""
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
  \time 6/8
  g4. ~ g8 r _"Animat" a  |
  g4. ~ g8 r a  |
  g8 a f g4 c,8  |
  g'4. ~ g8 r a  |
  %05
  g4. ~ g8 r a  |
  g8 a f g4. ~  |
  g2. ~  |
  g8 r a g a f  |
  \repeat volta 2 { \mark \markup {\musicglyph #"scripts.segno"} g4 g8 _"B" g e d  |
  %10
  c4 c8 c d e  |
  g4 e8 d4 c8  |
  b4. g8 b d  |
  f4 e8 d4 e8  |
  d4 c8 g a b  |
  %15
  c4 c e8 d  |
  c2. ~ }
  \alternative { { c8 r a' g a f }
  { c8 r r r4. } }
  \repeat volta 2 { r8 _"C" r c' b a b  |
  %20
  g2. ~  |
  g8 r g a g a  |
  b2. ~  |
  b8 r g f d c  |
  \mark \markup {\musicglyph #"scripts.coda" ???} b8 r f' g g f  \bar "||"
  %25
  e2. ~ }
  \alternative { { e8 r r r4. }
  { e8 r a g a f } }
  \repeat volta 2 { g4 _"D" g8 g e d  |
  c4 c8 c d e  |
  %30
  g4 e8 d4 c8  |
  b4. g8 b d  |
  f4 e8 d4 e8  |
  d4 c8 g a b  |
  c4 c e8 d  |
  %35
  c2. ~ }
  \alternative { { c8 r a' g a f }
  { \time 2/4 c8 r g' g } }
  \repeat volta 2 { a8  g fis a  |
  g8 e g g  |
  %40
  a8 g fis a  |
  g4 c8 c  |
  b8 a g fis  |
  g8 e e f  |
  g16 f e f g f e f  |
  %45
  g8 f e r }
  \alternative { { r4 g8 g }
  { \time 6/8 \mark \markup {D.S. e Coda} r4 a8 g a f } }
  e2.  \bar "||"
  \time 2/4   \mark \markup {\musicglyph #"scripts.coda"} g16 f e f g f e f  |
  %50
  g8 f e r  |
  e2\fermata  \bar "|."
}

liniaroAb =
\relative d''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 6/8
  d4. ~ d8 r e  |
  d4. ~ d8 r e  |
  d8 e c d4 g,8  |
  d'4. ~ d8 r e  |
  %05
  d4. ~ d8 r e  |
  d8 e c d4.  |
  d4 d8 d d d  |
  d8 r r r4.  |
  \repeat volta 2 { c4 b8 b4 a8  |
  %10
  a4 g8 g a b  |
  c4 c8 b4 a8  |
  g4 g8 g4 g8  |
  g4 g8 g4 g8  |
  g4 g8 g4 g8  |
  %15
  g4 g g8 b  |
  c4 g8 g g g }
  \alternative { { g8 r r r4. }
  { g8 r a' g a f } }
  \repeat volta 2 { g2. ~  |
  %20
  g8 r g e d c  |
  b2. ~  |
  b8 r g a b c  |
  d2. ~  |
  d8 r d e c b  \bar "||"
  %25
  c2. ~ }
  \alternative { { c8 r a' g a f }
  { c8 r r r4. } }
  \repeat volta 2 { c4 b8 b4 a8  |
  a4 g8 g a b  |
  %30
  c4 c8 b4 a8  |
  g4 g8 g4 g8  |
  g4 g8 g4 g8  |
  g4 g8 g4 g8  |
  g4 g g8 b  |
  %35
  c4 g8 g g g }
  \alternative { { g8 r r r4. }
  { \time 2/4 g8 r r4 } }
  \repeat volta 2 { d'8 d b4  |
  c8 c r4  |
  %40
  d8 d b4  |
  c4 r  |
  d8 d d4  |
  e8 e c d  |
  e16 d c d e d c d  |
  %45
  e8 d c r }
  \alternative { { r4 r }
  { \time 6/8 r4. r } }
  c2.  \bar "||"
  \time 2/4   e16 d c d e d c d  |
  %50
  e8 d c r  |
  c2\fermata  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
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

