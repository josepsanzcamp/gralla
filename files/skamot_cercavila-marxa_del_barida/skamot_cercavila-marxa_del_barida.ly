\version "2.16.2"

\header {
  dedication=""
  title="Cercavila"
  subtitle=""
  subsubtitle="Marxa del Baridà"
  poet=""
  meter=""
  piece=""
  composer="Pep Lizandra"
  arranger=""
  opus=""
  instrument=""
  copyright="gralla.skamot.com"
  tagline=""
}

liniaroAa =
\relative g''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  g8 e  |
  \time 2/4   \repeat volta 2 { c4 g'8 e  |
  c4 g'8 e  |
  c8. e16 c8 e  |
  %05
  d4 d8 e  |
  f8 f e g  |
  f4 e8 d  |
  e8 f16 e d8 e16 d }
  \alternative { { c4 g'8 e }
  %10
  { c8 g'16 g g8 g } }
  g4 a8 g  |
  f4 e  |
  d2  |
  r8 d e f  |
  %15
  g4 f  |
  e4 d  |
  e8 f16 e d8 e16 d  |
  c8 g'16 g g8 g  |
  g4 a8 g  |
  %20
  f4 e  |
  d2  |
  r8 d e f  |
  g4 f  |
  e4 d  |
  %25
  c2  \bar "|."
}

liniaroAb =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  r4  |
  \time 2/4   \repeat volta 2 { c2  |
  c2  |
  c4 c  |
  %05
  b2  |
  b2  |
  b2  |
  c4 b }
  \alternative { { c4 r }
  %10
  { e4 r } }
  r8 e16 e e8 e  |
  r8 d r c  |
  r8 b16 b b8 f'  |
  d4 r  |
  %15
  r8 e r d  |
  r8 b r b  |
  c4 b  |
  e4 r  |
  r8 e16 e e8 e  |
  %20
  r8 d r c  |
  r8 b16 b b8 f'  |
  d4 r  |
  r8 e r d  |
  r8 b r b  |
  %25
  c2  \bar "|."
}

liniaroAc =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 1/4
  r4  |
  \time 2/4   \repeat volta 2 { g2  |
  g2  |
  g4 g  |
  %05
  g2  |
  g2  |
  g2  |
  g4 g }
  \alternative { { g4 r }
  %10
  { g4 r } }
  r8 c16 c c8 c  |
  r8 b r g  |
  r8 g16 g g8 d'  |
  b4 r  |
  %15
  r8 g r b  |
  r8 g r g  |
  g4 g  |
  g4 r  |
  r8 c16 c c8 c  |
  %20
  r8 b r g  |
  r8 g16 g g8 d'  |
  b4 r  |
  r8 g r b  |
  r8 g r g  |
  %25
  g2  \bar "|."
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
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
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

