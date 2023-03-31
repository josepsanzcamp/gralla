\version "2.16.2"

\header {
  dedication="http://gralla.skamot.com"
  title="Sardana curta"
  subtitle="A les meves dones"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Josep Sentmartí"
  arranger="Gener 2001"
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/8
  b4 c8 _"A"  |
  \time 6/8   \repeat volta 2 { d4 e8 d4 b8  |
  a4 b8 c4 d8  |
  e4 d8 cis d e  |
  %05
  fis4 e8 d4.  |
  g4 fis8 e4 e8  |
  d4 d8 e4 e8  |
  c4 c8 a4 d8 }
  \alternative { { g,4. b4 c8 }
  %10
  { g4. d'8 e fis } }
  \repeat volta 2 { g8 _"B
" g g g4 g8  |
  fis8 fis fis fis4 fis8  |
  g4 e8 cis4 e8  |
  fis8 fis e d4.  |
  %15
  e8 g fis e d c  |
  b8 a b d c d }
  \alternative { { e4 c8 fis4 d8  |
  g4. d8 e fis }
  { e4 e8 fis4 fis8  |
  %20
  g4. r4 r8 } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/8
  g4 a8  |
  \time 6/8   \repeat volta 2 { b4 c8 b4 g8  |
  fis4 g8 a4 b8  |
  g4 b8 a b cis  |
  %05
  d4 a8 fis a d  |
  e4 d8 c4 c8  |
  b4 b8 g4 g8  |
  e4 e8 fis4 fis8 }
  \alternative { { g4. g4 a8 }
  %10
  { g4. d'8 cis c } }
  \repeat volta 2 { b8 b b b4 b8  |
  a8 a a a4 a8  |
  b4 cis8 a4 g8  |
  a8 b cis d4.  |
  %15
  c8 b a g fis e  |
  g8 fis g b a b }
  \alternative { { c4 a8 d4 c8  |
  b4. d8 cis c }
  { c4 c8 d4 c8  |
  %20
  b4. r4 r8 } } \bar "||"
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 3/8
  r4.  |
  \time 6/8   \repeat volta 2 { tomfl4. tomfl4 tomfl8  |
  tomfl4. tomfl4 tomfl8  |
  tomfl4. tomfl4 tomfl8  |
  %05
  tomfl4. tomfl4 tomfl8  |
  tomfl4. tomfl4 tomfl8  |
  tomfl4. tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl4 tomfl8 }
  \alternative { { tomfl4. tomfl4 tomfl8 }
  %10
  { tomfl4. r } }
  \repeat volta 2 { \times 3/2 { tomfl8 tomfl } tomfl4.  |
  \times 3/2 { tomfl8 tomfl } tomfl4.  |
  \times 3/2 { tomfl8 tomfl } tomfl4.  |
  \times 3/2 { tomfl8 tomfl } tomfl4.  |
  %15
  \times 3/2 { tomfl8 tomfl } tomfl4.  |
  \times 3/2 { tomfl8 tomfl } tomfl4. }
  \alternative { { tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4. r }
  { tomfl4 tomfl8 tomfl4 tomfl8  |
  %20
  tomfl4. r } } \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
        \new DrumStaff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
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
        \new DrumStaff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
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
        \new DrumStaff \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAc
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

