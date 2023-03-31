\version "2.16.2"

\header {
  dedication="Religioses"
  title=""
  subtitle="Toc d'ofrena a Sant Cosme i Sant Damià"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Josep M. Mayol"
  arranger=""
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative e''
{
  \clef treble
  \key c \major
  \time 1/8
  r8 \tempo 4 = 55  |
  \time 2/4   r2  |
  r2  |
  r2  |
  %05
  r4 r8 e16 f  |
  \mark \markup {\musicglyph #"scripts.segno"} g4 e16 d e f  |
  g16 a g f e8 e16 f  |
  g8. f32 g a16 g f e  |
  d16 c d e d8 e16 f  |
  %10
  g4 e16 d e f  |
  g16 a g f e8 e16 f  |
  g8. f32 g a16 g f e  |
  d4 ~ d8 b16 c  |
  d16 c d e f e f g  |
  %15
  a8. g32 f e8 e16 f  |
  g8 c g f  |
  e16 d e f g8 e16 d  |
  e16 f g a g f e d  |
  c4 ~ c8 b16 c  |
  %20
  d16 c d e f e f g  |
  a8. g32 f e8 e16 f  |
  g8 c g f  |
  e16 d e f g8 e16 d  |
  \mark \markup {\musicglyph #"scripts.coda" ???} e16 f g a g f e d  \bar "||"
  %25
  c4 ~ c8 c16 d  |
  e4 c16 b c d  |
  e16 f e d c8 c16 d  |
  e8. f32 g a16 g f e  |
  f16 e d c b8 c16 d  |
  %30
  e4 c16 b c d  |
  e16 f e d c8 e  |
  a8 a16 g fis g a fis  |
  \mark \markup {D.S. e Coda} g8. a16 g f e f  \bar "||"
  \mark \markup {\musicglyph #"scripts.coda"} c4 ~ c8 r  |
  %35
  g'4 a8 b  |
  c2  |
  r2  |
  r2  |
  r2  |
  %40
  r2  |
  r2  |
  r2  |
  r2  |
  r2  \bar "|."
}

liniaroAb =
\relative c''
{
  \tempo 4 = 55
  \clef treble
  \key c \major
  \time 1/8
  r8  |
  \time 2/4   r2  |
  r2  |
  r2  |
  %05
  r4 r8 c16 d  |
  e4 c16 b c d  |
  e16 f e d c8 c16 d  |
  e8. d32 e f16 e d c  |
  b16 a b c b8 c16 d  |
  %10
  e4 c16 b c d  |
  e16 f e d c8 c16 d  |
  e8. d32 e f16 e d c  |
  b4 ~ b8 r  |
  b16 a b c d c d e  |
  %15
  f8. e32 d c8 c16 d  |
  e16 f g f e d c b  |
  c16 b c d e8 c16 b  |
  c16 d e f e d c b  |
  c4 ~ c8 g16 a  |
  %20
  b16 a b c d c d e  |
  f8. e32 d c8 c16 d  |
  e16 f g f e d c b  |
  c16 b c d e8 c16 b  |
  c16 d e f e d c b  \bar "||"
  %25
  c4 ~ c8 a16 b  |
  c4 a16 b a b  |
  c16 d c b a8 a16 b  |
  c8. d32 e f16 e d c  |
  b16 c b a g8 a16 b  |
  %30
  c4 a16 b a b  |
  c16 d c b a8 c16 d  |
  e16 f e8 d c  |
  b16 d g f e d c d  \bar "||"
  c4 ~ c8 r  |
  %35
  f4 f8 f  |
  e2 \fermata  |
  r2  |
  r2  |
  r2  |
  %40
  r2  |
  r2  |
  r2  |
  r2  |
  r2  \bar "|."
}

liniaroAc =
\relative g'
{
  \tempo 4 = 55
  \clef treble
  \key c \major
  \time 1/8
  r8  |
  \time 2/4   r2  |
  r2  |
  r2  |
  %05
  r4 r8 g  |
  c8. b32 a g8 g  |
  c4 c8 g  |
  c16 b c d c8 c  |
  g8 g16 g g8 g  |
  %10
  c8. b32 a g8 g  |
  c4 c8 g  |
  c16 b c d c8 c  |
  g4 ~ g8 g  |
  g8. g16 g8 g  |
  %15
  a16 g a b c8 g  |
  c16 d e d c b a g  |
  a4 b8 a  |
  g8 g16 g g8 g  |
  c4 ~ c8 g  |
  %20
  g8. g16 g8 g  |
  a16 g a b c8 g  |
  c16 d e d c b a g  |
  a4 b8 a  |
  g8 g16 g g8 g  \bar "||"
  %25
  c4 ~ c8 c16 b  |
  a16 b c b a8 a  |
  a4. c16 b  |
  a16 b c b a8 a  |
  g4 g8 c16 b  |
  %30
  a16 b c b a8 a  |
  a4. a16 b  |
  c16 d c b a8 a  |
  g4. g8  \bar "||"
  c4 ~ c8 r  |
  %35
  b4 c8 d  |
  c2 \fermata  |
  r2  |
  r2  |
  r2  |
  %40
  r2  |
  r2  |
  r2  |
  r2  |
  r2  \bar "|."
}

liniaroAd =
\drummode
{
  \tempo 4 = 55
  \time 1/8
  tomfl16 tomfl  |
  \time 2/4   tomfl8.:16 tomfl16 tomfl8 tomfl  |
  tomfl8 r r tomfl16 tomfl  |
  tomfl8.:16 tomfl16 tomfl8 tomfl  |
  %05
  tomfl8 r r tomfl16 tomfl  |
  tomfl8.:16 tomfl16 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl16 tomfl  |
  tomfl8.:16 tomfl16 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl16 tomfl  |
  %10
  tomfl8.:16 tomfl16 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl16 tomfl  |
  tomfl8.:16 tomfl16 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl16 tomfl  |
  tomfl8.:16 tomfl16 tomfl8 tomfl  |
  %15
  tomfl4:32 tomfl8 tomfl16 tomfl  |
  tomfl8.:16 tomfl16 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl16 tomfl  |
  tomfl8.:16 tomfl16 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl16 tomfl  |
  %20
  tomfl8.:16 tomfl16 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl16 tomfl  |
  tomfl8.:16 tomfl16 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl16 tomfl  |
  tomfl8.:16 tomfl16 tomfl8 tomfl  \bar "||"
  %25
  tomfl4:32 tomfl8 tomfl16 tomfl  |
  tomfl8.:16 tomfl16 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl16 tomfl  |
  tomfl8.:16 tomfl16 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl16 tomfl  |
  %30
  tomfl8.:16 tomfl16 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl16 tomfl  |
  tomfl8.:16 tomfl16 tomfl8 tomfl  |
  tomfl4:32 tomfl8 tomfl16 tomfl  \bar "||"
  tomfl4:32 tomfl8 tomfl16 tomfl  |
  %35
  tomfl4:32 tomfl8:16 tomfl:16  |
  tomfl2:32  |
  r2  |
  r2  |
  r2  |
  %40
  r2  |
  r2  |
  r2  |
  r2  |
  r2  \bar "|."
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

