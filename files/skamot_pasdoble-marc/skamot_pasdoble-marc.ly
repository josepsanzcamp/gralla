\version "2.16.2"

\header {
  dedication=""
  title="Pasdoble"
  subtitle="Març"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Manel Rius"
  arranger=""
  opus=""
  instrument=""
  copyright="gralla.skamot.com"
  tagline=""
}

liniaroAa =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  g8 g  |
  \time 2/4   \mark \markup {\musicglyph #"scripts.segno"} c4. d8  |
  e8 g f e  |
  d8 c4. ~  |
  %05
  c4 g8 g  |
  c4. d8  |
  e8 g f e  |
  d2 ~  |
  d4 d8 e  |
  %10
  \repeat volta 2 { f8. f16 f8 f  |
  f4 c8 d  |
  e8. e16 e8 e  |
  e4 b8 c  |
  d8. d16 d8 d  |
  %15
  d8 f e d }
  \alternative { { g2 ~  |
  g4 d8 e }
  { c2 ~  |
  c4 c8 d } }
  %20
  b4. g8  |
  b8 d f g  |
  f8 e4. ~  |
  e4 c8 d  |
  b4. g8  |
  %25
  b8 d g f  |
  e2 ~  |
  e4 c8 c  |
  a'4. g8  |
  f8 g a b  |
  %30
  c8 g4. ~  |
  g4 a8 f  |
  e4. g8  |
  \mark \markup {\musicglyph #"scripts.coda" ???} f8 d c b  |
  c2 ~  |
  %35
  \mark "D.S." c4 g8 g  \bar "||"
  \mark \markup {\musicglyph #"scripts.coda"} c4 g8 a16 b  |
  c4 r4  \bar "|." % kompletite
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  g8 g  |
  \time 2/4   e'4. f8  |
  g8 b a g  |
  f8 e4. ~  |
  %05
  e4 g,8 g  |
  e'4. f8  |
  g8 b a g  |
  f2 ~  |
  f4 f8 g  |
  %10
  \repeat volta 2 { a8. a16 a8 a  |
  a4 e8 f  |
  g8. g16 g8 g  |
  g4 d8 e  |
  f8. f16 f8 f  |
  %15
  f8 a g f }
  \alternative { { b,2 ~  |
  b4 f'8 g }
  { e2 ~  |
  e4 e8 f } }
  %20
  d4. g,8  |
  g8 b d e  |
  d8 c4. ~  |
  c4 e8 f  |
  d4. g,8  |
  %25
  g8 b b b  |
  c2 ~  |
  c4 c8 c  |
  f4. e8  |
  d8 e f g  |
  %30
  e8 e4. ~  |
  e4 f8 d  |
  c4. e8  |
  d8 c a' g  |
  e2 ~  |
  %35
  e4 g,8 g  \bar "||"
  e'4 e8 f16 g  |
  e4 r4  \bar "|." % kompletite
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
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

