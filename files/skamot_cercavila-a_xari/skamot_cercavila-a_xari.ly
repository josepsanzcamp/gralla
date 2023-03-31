\version "2.16.2"

\header {
  dedication="http://gralla.skamot.com"
  title="Cercavila"
  subtitle="A Xari"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Enric Gironés"
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
  \repeat volta 2 { r8 g a b _"Introducció" _"Solo"  |
  c4 r8 g  |
  g8 f16 e d8 e  |
  f8 r d4  |
  %05
  r8 d f d  |
  e4 e  |
  r8 c e c  |
  d2  |
  r8 g fis f  |
  %10
  e4 r8 g  |
  f8 d16 e f8 a  |
  g4 c  |
  r8 f, e d  |
  e8 c16 d e8 c  |
  %15
  d8 b16 c d8 b  |
  c2  | }
  \repeat volta 2 { \mark \markup {\musicglyph #"scripts.segno"} r8 e e  d  |
  c4 c  |
  d8 e d c  |
  %20
  e4 c  |
  r8 d d c  |
  b4 b  |
  c8 d c b  |
  d2  |
  %25
  r8 c c b  |
  a4 a  |
  r8 c b a  |
  g4 c  |
  r8 c c d  |
  %30
  e8 f e d  |
  d8 e d b }
  \alternative { { c4 c }
  { \mark "Fine" c2 } }
  r4 r8  d   |
  %35
  e8 d e fis  |
  g8 r g fis  |
  e2  |
  r8 d e g  |
  f8 a4.  |
  %40
  r8 g fis f  |
  g4 r  |
  \repeat volta 2 { r8 d16 d g8 g16 g  |
  g8 f16 e d4  |
  r8 dis f dis  |
  %45
  dis4 d }
  \alternative { { r8 d e c  |
  d8 b d c  |
  b8 g' fis fis  |
  g2 }
  %50
  { r8 g a f  |
  g8 e g f  |
  e8 g fis f  |
  \mark "D.S. al Fine" e2 } } \bar "||"
}

liniaroAb =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 { r8 e f d  |
  e4 r8 c  |
  e8 d16 c b8 c  |
  d8 r b4  |
  %05
  r8 b' a g  |
  c4 g  |
  r8 a g fis  |
  f2  |
  r8 g, a b  |
  %10
  c4 r8 e  |
  d8 b d f  |
  e4 e  |
  r8 a g f  |
  g8 g r e  |
  %15
  f8 f r g  |
  e2  | }
  \repeat volta 2 { r8 g g f  |
  e4 e  |
  f8 g f e  |
  %20
  g4 g  |
  r8 f f e  |
  d4 d  |
  e8 f e d  |
  f2  |
  %25
  r8 a a g  |
  f4 f  |
  r8 a g f  |
  e4 e  |
  r8 c' b a  |
  %30
  g8 r g a  |
  f8 r f g }
  \alternative { { e4 e }
  { e2 } }
  r4 r8 b  |
  %35
  c8 b a a  |
  b8 r e d  |
  c2  |
  r8 b c e  |
  d8 a4.  |
  %40
  r8 b d c  |
  b4 r  |
  \repeat volta 2 { r8 b16 a g8 d'16 c -.  |
  b8 -. d16 c b4  |
  r8 c d c  |
  %45
  c4 b }
  \alternative { { r8 b c a  |
  b8 g b a  |
  g8 b d c  |
  b2 }
  %50
  { r8 e d d  |
  c8 c b d  |
  c8 g a b  |
  c2 } } \bar "||"
}

liniaroAc =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/4
  \repeat volta 2 { r2  |
  r2  |
  r2  |
  r2  |
  %05
  r2  |
  r2  |
  r2  |
  r2  |
  r2  |
  %10
  r2  |
  r2  |
  r2  |
  r2  |
  r2  |
  %15
  r2  |
  r2  | }
  \repeat volta 2 { r8 g a b  |
  c4 r8 g'  |
  f8 f16 g a8 a  |
  %20
  g4 e  |
  r8 b a -. a -.  |
  g4 -. r8 f'  |
  e8 f g fis  |
  f2  |
  %25
  r8 a, f' e  |
  d4 a'  |
  r8 g, e' d  |
  c4 g'  |
  r8 e e f  |
  %30
  g8 a r f  |
  f8 g r f }
  \alternative { { r2 }
  { e2 } }
  r2  |
  %35
  r2  |
  r2  |
  r2  |
  r2  |
  r2  |
  %40
  r2  |
  r2  |
  \repeat volta 2 { r2  |
  r2  |
  r2  |
  %45
  r2 }
  \alternative { { r2  |
  r2  |
  r2  |
  r2 }
  %50
  { r2  |
  r2  |
  r2  |
  r2 } } \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAc
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
  \header {instrument="Gralla 1"}
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
  \header {instrument="Gralla 1"}
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

