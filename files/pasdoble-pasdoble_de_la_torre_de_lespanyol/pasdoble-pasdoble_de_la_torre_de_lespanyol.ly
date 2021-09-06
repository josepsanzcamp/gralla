\version "2.22.1"

\header {
  dedication="Pasdoble"
  title="   "
  subtitle="Pasdoble de la Torre de l'Espanyol"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Timbal: Albert Garcia"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative d''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  d8 d16 d d8 e  |
  d8 r r4  |
  fis8 fis16 fis fis8 g  |
  fis8 r r4  \bar "||"
  %05
  \mark \markup {\musicglyph #"scripts.segno"} fis8 fis fis g  |
  fis4 e  |
  d8 d d e  |
  d4 b  |
  c8 b a b  |
  %10
  c2  |
  d8 c b c  |
  d2  |
  fis8 fis fis g  |
  fis4 e  |
  %15
  d8 d d e  |
  d4 b  |
  c8 b a b  |
  c8 d e fis  |
  g8 r d r  |
  %20
  g8 r r b,16 c  |
  d8 d d d  |
  d8 e d cis  |
  d4 b  |
  r8 b d g  |
  %25
  fis4. g8  |
  fis4. e8  |
  d2 ~  |
  d8 d16 c b8 c  |
  d8 r d4 ~  |
  %30
  d8 d e f  |
  e8 r e4 ~  |
  e8 g fis e  |
  d4. g8  |
  fis4. a8  |
  %35
  g4 g8. g16  |
  \mark "D.S." g4 r4  \bar "|." % kompletite
}

liniaroAb =
\relative d''
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  r2  |
  r2  |
  d8 d16 d d8 e  |
  d8 r r4  \bar "||"
  %05
  d8 d d e  |
  d4 c  |
  b8 b b c  |
  b4 g  |
  a8 g fis g  |
  %10
  a2  |
  b8 a g a  |
  b2  |
  d8 d d e  |
  d4 c  |
  %15
  b8 b b c  |
  b4 g  |
  a8 g fis g  |
  a8 b c d  |
  b8 r a r  |
  %20
  b8 r r g16 a  |
  b8 b b b  |
  b8 c b ais  |
  b4 g  |
  r8 g b e  |
  %25
  d4. e8  |
  d4. c8  |
  b2 ~  |
  b8 b16 a g8 a  |
  b8 r b4 ~  |
  %30
  b8 b c d  |
  c8 r c4 ~  |
  c8 e d c  |
  b4. g8  |
  d'4. d8  |
  %35
  <g, b>4 <g b>8. <g b>16  |
  <g b>4 r4  \bar "|." % kompletite
}

liniaroAc =
\relative d'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 2/4
  d8 d16 d d8 e  |
  d8 r r4  |
  d8 d16 d d8 e  |
  d8 r r4  \bar "||"
  %05
  d4 d  |
  d8 e fis d  |
  g4 d  |
  g8 a b g  |
  a4 d,  |
  %10
  a'8 g fis a  |
  g4 d  |
  g4 d  |
  d4 d  |
  d8 e fis d  |
  %15
  g4 d  |
  g8 a b g  |
  a4 d,  |
  e4 fis  |
  g8 r d r  |
  %20
  g8 r r4  |
  g4 d  |
  g4 d  |
  g4 g  |
  r2  |
  %25
  d4 d  |
  d4 d  |
  g4 g8. g16  |
  g4 r  |
  r8 g fis a  |
  %30
  g8 r r4  |
  r8 c, c d  |
  e8 r r4  |
  g4 d  |
  fis4 d  |
  %35
  g4 g8. g16  |
  g4 r  \bar "|."
}

liniaroAd =
\drummode
{
  \tempo 4=120
  \time 2/4
  r2  |
  r8 tomfl16 -> tomfl -> tomfl8 -> r  |
  r2  |
  r8 tomfl16 -> tomfl -> tomfl8 -> r  \bar "||"
  %05
  tomfl2:32 (  |
  tomfl2:32 ) (  |
  tomfl8 -> ) tomfl16 tomfl tomfl8 tomfl ->  |
  tomfl8 tomfl tomfl -> tomfl  |
  tomfl8 -> tomfl16 tomfl tomfl8 tomfl ->  |
  %10
  tomfl8 -> tomfl -> tomfl -> tomfl ->  |
  tomfl8 -> tomfl16 tomfl tomfl8 tomfl ->  |
  \times 2/3 { tomfl8 -> tomfl -> tomfl } \times 2/3 { tomfl tomfl -> tomfl } |
  tomfl8 -> tomfl16 tomfl tomfl8 tomfl ->  |
  tomfl8 tomfl tomfl -> tomfl  |
  %15
  tomfl8 -> tomfl16 tomfl tomfl8 tomfl ->  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 -> tomfl16 tomfl tomfl8 tomfl ->  |
  tomfl16 tomfl tomfl8 tomfl -> tomfl16 tomfl  |
  tomfl4 -> tomfl16 tomfl <tomfl tomfl> tomfl  |
  %20
  tomfl8 r16 tomfl <tomfl tomfl>8 -> tomfl ->  |
  tomfl8 tomfl16 -> tomfl tomfl8 -> tomfl16 -> tomfl ->  |
  tomfl8 tomfl16 tomfl -> tomfl8 -> tomfl16 -> tomfl ->  |
  tomfl8 -> tomfl16 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4 -> r  |
  %25
  tomfl8 tomfl16 tomfl -> -> tomfl8 tomfl16 -> tomfl ->  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 -> tomfl -> -> ->  |
  \times 2/3 { tomfl8 -> tomfl -> tomfl } \times 2/3 { tomfl -> tomfl -> tomfl }  |
  tomfl4 -> r  |
  tomfl8 tomfl16 -> tomfl tomfl8 tomfl ->  |
  %30
  tomfl8 tomfl tomfl tomfl  |
  tomfl8 -> tomfl16 tomfl tomfl8 tomfl ->  |
  \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl -> tomfl -> tomfl } |
  tomfl8 -> tomfl16 tomfl tomfl8 tomfl ->  |
  tomfl16 tomfl tomfl8 tomfl -> tomfl16 tomfl  |
  %35
  tomfl4 -> tomfl8 -> tomfl ->  |
  tomfl8 -> r4 r8  \bar "|." % kompletite
}

liniaroAe =
\drummode
{
  \tempo 4=120
  \time 2/4
  r2  |
  r8 tomfl16 -> tomfl -> tomfl8 -> r  |
  r2  |
  r8 tomfl16 tomfl -> -> tomfl8 -> r \bar "||"
  %05
  tomfl8 \mf \< tomfl tomfl tomfl  |
  tomfl8 tomfl \! \! tomfl tomfl \!  |
  tomfl4 -> r8 tomfl  |
  tomfl4 tomfl  |
  tomfl4 r8 tomfl  |
  %10
  tomfl8 -> tomfl -> tomfl -> tomfl ->  |
  tomfl4 -> r8 tomfl  |
  \times 2/3 { tomfl8 -> tomfl -> tomfl } \times 2/3 { tomfl -> tomfl -> tomfl } |
  tomfl4 r8 tomfl  |
  tomfl4 tomfl  |
  %15
  tomfl4 r8 tomfl  |
  tomfl4 tomfl  |
  tomfl8 r r tomfl  |
  r8 r tomfl r  |
  tomfl4 -> tomfl16 tomfl tomfl tomfl  |
  %20
  tomfl8 r r -> tomfl ->  |
  tomfl4 r8 tomfl  |
  tomfl4 tomfl  |
  tomfl8 tomfl tomfl tomfl  |
  tomfl4 -> r  |
  %25
  tomfl4 r8 tomfl  |
  tomfl4 tomfl  |
  \times 2/3 { tomfl8 -> tomfl -> tomfl } \times 2/3 { tomfl -> tomfl -> tomfl } |
  tomfl4 -> r  |
  tomfl4 r8 tomfl  |
  %30
  tomfl4 tomfl  |
  tomfl4 r8 tomfl  |
  \times 2/3 { tomfl8 tomfl tomfl } \times 2/3 { tomfl -> -> tomfl -> tomfl } |
  tomfl8 -> r r tomfl ->  |
  r8 r tomfl -> r  |
  %35
  tomfl4 -> tomfl8 -> tomfl ->  |
  tomfl8 -> r4 r8  \bar "|." % kompletite
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
        \new DrumStaff \with {instrumentName = #"Timbal Fondo" shortInstrumentName = #"T"} \liniaroAe
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
        \new DrumStaff \with {instrumentName = #"Timbal Fondo" shortInstrumentName = #"T"} \liniaroAe
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

\bookpart {
  \header {instrument="Timbal Fondo"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAe
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAe
      >>
    }
    \midi {
      \set Staff.midiInstrument = "oboe"
      \set DrumStaff.midiInstrument = "drums"
    }
  }
}

