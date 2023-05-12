\version "2.16.2"

\header {
  dedication=""
  title="Ball de bastons"
  subtitle="Ball de bastons d'Arbeca (2)"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Les Garrigues"
  arranger=""
  opus=""
  instrument=""
  copyright="gralla.skamot.com"
  tagline=""
}

liniaroAa =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 2/8
  e8 f  |
  \time 2/4   g4 c  |
  g8. f16 e8. f16  |
  g4 c  |
  %05
  g4 g8 f  \bar "||"
  e4 d  |
  c8 d e f  |
  e4 d  |
  c4 r4  \bar "|." % kompletite
}

\score {
  \new StaffGroup {
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    <<
      \new Staff \with {instrumentName = #"Gralla" shortInstrumentName = #"G"} \liniaroAa
    >>
  }
  \layout {}
}
\score { \unfoldRepeats
  \new StaffGroup {
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    <<
      \new Staff \with {instrumentName = #"Gralla" shortInstrumentName = #"G"} \liniaroAa
    >>
  }
  \midi {
    \set Staff.midiInstrument = "oboe"
    \set DrumStaff.midiInstrument = "drums"
  }
}
