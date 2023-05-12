\version "2.16.2"

\header {
  dedication=""
  title="Xotis"
  subtitle="La relliscada"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Arr. Marcel Casellas"
  arranger=""
  opus=""
  instrument=""
  copyright="gralla.skamot.com"
  tagline=""
}

liniaroAa =
\relative d''
{
  \clef treble
  \key g \major
  \time 1/4
  r4 \tempo 4 = 100  |
  \time 4/4   \repeat volta 2 { \mark \markup {\musicglyph #"scripts.segno"} r1  |
  r1  |
  r1  |
  %05
  r1  |
  r1  |
  r1  |
  r1  |
  r2. \times 2/3 { d8 e fis }  |
  %10
  g4-. d-. b-. d-.  |
  r8 c e g c b a g  |
  fis4-. d-. a-. c-.  |
  r8 b d fis b a g fis  |
  e4-. b-. gis-. b-.  |
  %15
  r8 a c e a g fis e  |
  d4. a8 c4 fis, }
  \alternative { { \mark "Fine" g4 r r2 }
  { g4 r r d'-. } }
  b4-. r r d-.  |
  %20
  c4-. r r e8. g16  |
  fis2 ~ fis8. g16 fis8. e16  |
  d4 b r d-.  |
  b4-. r r d-.  |
  c4-. r r e8. g16  |
  %25
  fis2 ~ fis8. d16 e8. fis16  |
  g2 r4 d-.  \bar "||"
  b4-. r r d-.  |
  c4-. r r e8. g16  |
  fis2 ~ fis8. g16 fis8. e16  |
  %30
  d4 b r d-.  |
  b4-. r r d-.  |
  c4-. r r e8. g16  |
  fis2 ~ fis8. d16 e8. fis16  |
  \mark "D.S. al Fine" g4 r r2  \bar "|."
}

liniaroAb =
\relative d''
{
  \tempo 4 = 100
  \clef treble
  \key g \major
  \time 1/4
  \times 2/3 { d8 e fis }  |
  \time 4/4   \repeat volta 2 { g4-. g-. g-. fis (  |
  e4-. ) e-. e-. \times 2/3 { c8 d e }  |
  fis4-. fis-. fis-. e (  |
  %05
  d2. ) \times 2/3 { b8 c d }  |
  e4-. e-. e-. d (  |
  c4 ) c2 \times 2/3 { a8 b c }  |
  d4-. d-. d-. c (  |
  b8. ) a16 b8. c16 d4 \times 2/3 { d8 e fis }  |
  %10
  g4-. g-. g-. fis   |
  e4  e-. e-. \times 2/3 { c8 d e }   |
  fis4-. fis-. fis-. e (  |
  d2. ) \times 2/3 { b8 c d }  |
  e4-. e-. e-. d (  |
  %15
  c4 ) c2 \times 2/3 { a8 b c }  |
  d4-. d-. d-. c ( }
  \alternative { { b4 ) r r \times 2/3 { d8 e fis } }
  { b,4 r r2  } }
  r1  |
  %20
  r1  |
  r1  |
  r1  |
  r1  |
  r1  |
  %25
  r1  |
  r2. b4-.  \bar "||"
  g4-. r r b-.  |
  g4-. r r c8. e16  |
  d2 ~ d8. e16 d8. c16  |
  %30
  b4 g r b-.  |
  g4-. r r b-.  |
  g4-. r r c8. e16  |
  d2 ~ d8. d16 e8. c16  |
  b4 r r \times 2/3 { d8 e fis }  \bar "|."
}

liniaroAc =
\relative g'
{
  \tempo 4 = 100
  \clef treble
  \key g \major
  \time 1/4
  r4  |
  \time 4/4   \repeat volta 2 { g4-- r r b--  |
  c4-- r r c--  |
  d4-- r \mf r a--  |
  %05
  b4-- r r2  |
  e,4-- r r b'--  |
  a4-- r r c--  |
  fis,4-- r r a--  |
  g4-- r r \times 2/3 { d'8 e fis }  |
  %10
  g4-. d-. b-. d  |
  c4 c c \times 2/3 { c8 d e }  |
  fis4-. d-. a-. c   |
  b2. \times 2/3 { b8 c d }  |
  e4-. b-. gis-. b   |
  %15
  a4 a2 \times 2/3 { a8 b c }  |
  d4-. d-. d-. c  }
  \alternative { { b4 d-. g,-. r }
  { b4 d-. g,-. r } }
  g4-- d'-. b-. g--  |
  %20
  e4-- e'-. c-. g--  |
  a8. g16 a8. b16 c8. e16 d8. c16  |
  b8. c16 b8. a16 g4 r  |
  g4-- d'-. b-. g--  |
  e4-- e'-. c-. g--  |
  %25
  a8. g16 a8. b16 c8. d16 b8. a16  |
  g4 d'-. g,-. r  \bar "||"
  g4-- d'-. b-. g--  |
  e4-- e'-. c-. g--  |
  a8. g16 a8. b16 c8. c16 b8. a16  |
  %30
  b8. a16 b8. c16 d4 r  |
  g,4-- d'-. b-. g--  |
  e4-- e'-. c-. g--  |
  a8. g16 a8. b16 c8. b16 b8. a16  |
  g4 d'-. g,-. r  \bar "|."
}

liniaroAd =
\drummode
{
  \tempo 4 = 100
  \time 1/4
  tomfl4:32 ~  |
  \time 4/4   \repeat volta 2 { tomfl4 tomfl-. tomfl-. tomfl:32 ~  |
  tomfl4 tomfl-. tomfl-. tomfl:32 ~  |
  tomfl4 tomfl-. tomfl-. tomfl:32 ~  |
  %05
  tomfl4 tomfl-. tomfl-. tomfl:32 ~  |
  tomfl4 tomfl-. tomfl-. tomfl:32 ~  |
  tomfl4 tomfl-. tomfl-. tomfl:32 ~  |
  tomfl4 tomfl-. tomfl-. tomfl:32 ~  |
  tomfl4 tomfl-. tomfl-. tomfl:32 ~  |
  %10
  tomfl4 tomfl-. tomfl-. tomfl:32 ~  |
  tomfl4 tomfl-. tomfl-. tomfl:32 ~  |
  tomfl4 tomfl-. tomfl-. tomfl:32 ~  |
  tomfl4 tomfl-. tomfl-. tomfl:32 ~  |
  tomfl4 tomfl-. tomfl-. tomfl:32 ~  |
  %15
  tomfl4 tomfl-. tomfl-. tomfl:32 ~  |
  tomfl4 tomfl-. tomfl-. tomfl:32 ~ }
  \alternative { { tomfl4 tomfl-. tomfl-. tomfl:32 ~ }
  { tomfl4 tomfl-. tomfl-. r } }
  r4 tomfl-. tomfl-. r  |
  %20
  r4 tomfl-. tomfl-. r  |
  tomfl2:32 ~ tomfl8. tomfl16 tomfl8. tomfl16  |
  tomfl8. tomfl16 tomfl8. tomfl16 tomfl4 r  |
  r4 tomfl-. tomfl-. r  |
  r4 tomfl-. tomfl-. r  |
  %25
  tomfl2:32 ~ tomfl8. tomfl16 tomfl8. tomfl16  |
  tomfl4 tomfl-. tomfl-. r  \bar "||"
  r4 tomfl-. tomfl-. r  |
  r4 tomfl-. tomfl-. r  |
  tomfl2:32 ~ tomfl8. tomfl16 tomfl8. tomfl16  |
  %30
  tomfl8. tomfl16 tomfl8. tomfl16 tomfl4 r  |
  r4 tomfl-. tomfl-. r  |
  r4 tomfl-. tomfl-. r  |
  tomfl2:32 ~ tomfl8. tomfl16 tomfl8. tomfl16  |
  tomfl4 tomfl-. tomfl-. tomfl  \bar "|."
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

