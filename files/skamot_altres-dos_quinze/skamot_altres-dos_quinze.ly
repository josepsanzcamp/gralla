\version "2.16.2"

\header {
  dedication=""
  title="Dansa"
  subtitle="Dos i quinze"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Algemesí"
  arranger="Arr. Xavier Richart"
  opus=""
  instrument=""
  copyright="gralla.skamot.com"
  tagline=""
}

liniaroAa =
\relative g''
{
  \tempo 4=160
  \clef treble
  \key c \major
  \time 6/8
  \repeat volta 2 { g4. d  |
  b4 a8 g4 b8  |
  a4 b8 c ( b ) a  |
  b4 a8 g4.  |
  %05
  g'4. d  |
  b4 a8 g4 b8  |
  a4 b8 c ( b ) a }
  \alternative { { g2. }
  { \mark "Fine" g4. r8 g g } }
  %10
  \repeat volta 2 { c8 g c e c e  |
  g4 e8 c4 e8  |
  d4 e8 f ( e ) d  |
  e4 d8 c g g  |
  c8 g c e c e  |
  %15
  g4 e8 c4 e8  |
  d4 e8 f ( e ) d }
  \alternative { { c4. r8 g g }
  { \mark "D.C. al Fine" c4. fis } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4=160
  \clef treble
  \key c \major
  \time 6/8
  \repeat volta 2 { g4. b  |
  d4. g  |
  fis4 g8 a ( g ) fis  |
  g4. d  |
  %05
  g,4. b  |
  d4. e  |
  c4 d8 e ( d ) c }
  \alternative { { b2. }
  { b4. r8 g' g } }
  %10
  \repeat volta 2 { g8 g g g g g  |
  c4 g8 e4 g8  |
  f4. a  |
  g4. r8 g g  |
  g8 g g g g g  |
  %15
  c4 g8 e4 g8  |
  f4 g8 a ( g ) f }
  \alternative { { e4. r8 g g }
  { e4. c } } \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAb
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
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
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
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
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

