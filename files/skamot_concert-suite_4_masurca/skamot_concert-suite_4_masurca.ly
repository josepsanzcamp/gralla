\version "2.16.2"

\header {
  dedication="http://gralla.skamot.com"
  title="Concert"
  subtitle="Suite de festa"
  subsubtitle="Sobre un tema popular, per a tres gralles i un timbal"
  poet="4. Masurca"
  meter=""
  piece=""
  composer="Pep Coca, 1991"
  arranger=""
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
  \time 3/4
  \repeat volta 2 { b8. d16 b8. a16 g8. a16  |
  b8. e16 d4 b-.  |
  g'8. fis16 e8. d16 cis8. e16  |
  e8. fis16 d4-^ r  |
  %05
  c8. b16 c8. d16 e8. fis16  |
  g8. e16 \times 2/3 { dis8 e fis } e4-.  |
  cis8. d16 e8. fis16 g8. a16 \! }
  \alternative { { d,4 d-> r }
  { d4 r2 } }
  %10
  \repeat volta 2 { d4-. d-. r  |
  c4-. c-. r  |
  e4-. fis-. r  |
  d4-. e-. d-.  |
  e4-. r2  |
  %15
  d4-. r2  |
  c8. e16 d8. c16 b8. a16 }
  \alternative { { a8. b16 b4-^ r }
  { b4 b-> r } } \bar "||"
}

liniaroAb =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/4
  \repeat volta 2 { b8. d16 b8. \mf a16 g8. a16  |
  b8. e16 d4 b-.  |
  g'8. fis16 e8. d16 cis8. e16  |
  e8. fis16 d4-^ r  |
  %05
  c8. b16 c8. d16 e8. fis16  |
  g8. e16 \times 2/3 { dis8 e fis } e4-.  |
  cis8. d16 e8. fis16 g8. a16 }
  \alternative { { d,4 d-> r4 } % kompletite
  { d4 r2 } }
  %10
  \repeat volta 2 { d4-. d-. r  |
  a4-. a-. r  |
  c4-. ais-. r  |
  b4-. ais-. b-.  |
  g4-. r2  |
  %15
  g4-. r2  |
  a8. c16 b8. a16 g8. fis16 }
  \alternative { { fis8. g16 g4-^ r }
  { g4 g-> r } } \bar "||"
}

liniaroAc =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/4
  \repeat volta 2 { g8. b16 d8. c16 b8. a16  |
  g8. c16 b4 g-.  |
  e'8. d16 cis8. b16 a8. cis16  |
  cis8. d16 fis4-^ r  |
  %05
  a,8. g16 a8. b16 c8. d16  |
  e8. g16 \times 2/3 { b,8 c a } g4-.  |
  a8. \mf \< b16 cis8. d16 e8. g16 \! }
  \alternative { { d4 d-> r }
  { fis4 r a, } }
  %10
  \repeat volta 2 { d8. e16 d8. cis16 d8. a16  |
  e'8. fis16 e8. dis16 e8. b16  |
  ais8. b16 cis8. d16 e8. g16  |
  fis8. d16 cis8. e16 d4  |
  c8. b16 a8. g'16 fis8. c16  |
  %15
  b8. d16 g4 e  |
  c8. e16 d8. c16 b8. a16 }
  \alternative { { a8. b16 g4-^ r8. a16 }
  { g4 g'-> r } } \bar "||"
}

liniaroAd =
\drummode
{
  \tempo 4=120
  \time 3/4
  \repeat volta 2 { tomfl8. tomfl16 tomfl8 r \mf \times 2/3 { tomfl tomfl tomfl }  |
  tomfl4 tomfl \times 2/3 { tomfl8 tomfl tomfl }  |
  tomfl8. tomfl16 tomfl4 \times 2/3 { tomfl8 tomfl tomfl }  |
  tomfl8. tomfl16 tomfl4-^ tomfl  |
  %05
  tomfl4 tomfl2  |
  \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } tomfl4  |
  tomfl8. tomfl16 tomfl8. tomfl16 tomfl8. tomfl16 }
  \alternative { { tomfl4 tomfl-> r }
  { tomfl4 r2 } }
  %10
  \repeat volta 2 { tomfl4-. tomfl-. r  |
  tomfl4-. tomfl-. r  |
  tomfl4-. tomfl-. r  |
  tomfl4-. tomfl-. tomfl-.  |
  tomfl4-. r2  |
  %15
  tomfl4-. tomfl2->  |
  tomfl8. tomfl16 \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } }
  \alternative { { tomfl8. tomfl16 tomfl4-^ r }
  { tomfl4 tomfl-> r } } \bar "||"
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAd
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
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAd
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

\bookpart {
  \header {instrument="Timbal"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAd
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAd
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

