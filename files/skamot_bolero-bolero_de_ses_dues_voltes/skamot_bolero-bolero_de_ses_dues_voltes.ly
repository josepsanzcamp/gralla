\version "2.16.2"

\header {
  dedication=""
  title="Bolero"
  subtitle="Bolero de ses dues voltes"
  subsubtitle=""
  poet="gralla.skamot.com"
  meter=""
  piece=""
  composer="Pep Toni Rubio"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative d''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 1/4
  d16 c b c  |
  \time 3/4   \repeat volta 2 { d8 g,16 fis g8. d'16 e d c b  |
  a8 a16 b c8. b16 c b a g  |
  fis8 fis' d8. e16 d c b c  |
  %05
  b16 a b c a4 d16 c b c  |
  d8 g,16 fis g8. d'16 e d c b  |
  a8 a16 b c8. b16 c b a g  |
  fis8 fis' d8. e16 d c b a  |
  g8 g16 g b8 <b b>16 b d8 <d d>16 d  |
  %10
  g2 d16 c b a  |
  g8 <g g>16 g b8 b16 b d8 d16 d  |
  g2 b,16 d b d  |
  b16 d b a g8. b16 c8 d  |
  e16 d c d e8. e16 fis8 g  |
  %15
  fis16 e d e fis4 d16 e d c  |
  b16 a b c a4 b16 d b d  |
  b16 d b a g8. b16 c8 d  |
  e16 d c d e8. e16 fis8 g  |
  fis16 e d e fis4 d16 e fis d  |
  %20
  g8 g,16 g b8 b16 b d8 d16 d  |
  g2 d16 c b a  |
  g8 g16 g b8 b16 b d8 d16 d  |
  g2 g16 <g g> g e  |
  fis8 fis16 g fis8. e16 g fis e fis  |
  %25
  e8 e16 fis e4 d16 e fis d  |
  c8 c16 d c4 d16 e fis d  |
  g2 g16 g g e  |
  fis8 fis16 g fis8. e16 g fis e fis  |
  e8 e16 fis e4 d16 e fis d  |
  %30
  c8 c16 d c4 d16 e fis d }
  \alternative { { g2 d16 c b c }
  { g'2 r4 } } \bar "||" % kompletite
}

liniaroAb =
\drummode
{
  \tempo 4=120
  \time 1/4
  r4  |
  \time 3/4   \repeat volta 2 { tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  %05
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  %10
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  %15
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  %20
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  %25
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  tomfl4:32 tomfl:32 tomfl8 tomfl  |
  %30
  tomfl4:32 tomfl:32 tomfl8 tomfl }
  \alternative { { tomfl4:32 tomfl:32 tomfl8 tomfl }
  { tomfl4 r2 } } \bar "||" % kompletite
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" shortInstrumentName = #"G"} \liniaroAa
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla" shortInstrumentName = #"G"} \liniaroAa
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAb
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

\bookpart {
  \header {instrument="Gralla"}
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
  \header {instrument="Timbal"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAb
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark.self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAb
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

