\version "2.16.0"

\header {
  dedication="Cercavila"
  title="  "
  subtitle="Carnestoltes-93"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Enric Montsant"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative e''
{
  \clef treble
  \key c \major
  \time 1/8
  e8 _"Introducció" \tempo 4 = 116  |
  \time 2/4   a,8. b16 c8 d  |
  e4 e8 f  |
  e8. d16 c8 b  |
  %05
  c16 d c b a8 e'  |
  a,8. b16 c8 d  |
  e4 e8 f  |
  e8 d b c  |
  a4 r8 e'  |
  %10
  a,8. b16 c8 d  |
  e4 e8 f  |
  e8. d16 c8 b  |
  c16 d c b a8 e'  |
  a,8. b16 c8 d  |
  %15
  e4 e8 f  |
  e8 d b c  |
  a2 ~  |
  a4 g'8 e   |
  \repeat volta 2 { c8. \segno b16 c8 d  |
  %20
  c4. d16 e  \bar "||"
  \time 3/4   f8 f e d c8. b16  \bar "||"
  \time 2/4   g4 g'8 e  |
  c8. b16 c8 d  |
  c4. d16 e  |
  %25
  f8 f e d }
  \alternative { { c4 g'8 e }
  { c4 ^\markup {\draw-line #'(2 . 2)} c } }
  \repeat volta 2 { a8. b16  c8 d  |
  e4. f16 e  |
  %30
  d8 c b d  |
  c4 a  |
  a8. b16 c8 d  |
  e4. f16 e  |
  d8 c b d }
  %35
  \alternative { { a4 r }
  { a4 a'8 a } }
  a8.  g16 f8 e  |
  f8 d4 e16 f  |
  g8. f16 e8 d  |
  %40
  c4. d16 e  |
  f8. e16 d8 c  |
  d8 b4 c16 d  |
  e8. d16 c8 b  |
  a4 a'8 a  |
  %45
  a8. g16 f8 e  |
  f8 d4 e16 f  |
  g8. f16 e8 d  |
  c4. d16 e  |
  f8. e16 d8 c  |
  %50
  d8 b4 c16 d  |
  e8. d16 c8 b  |
  a4 a'8 a  |
  \repeat volta 2 { a8. g16 f8 e  |
  f8 d4 e16 f  |
  %55
  g8. f16 e8 d  |
  c4. d16 e  |
  f8. e16 d8 c  |
  d8 b4 c16 d  |
  e8. d16 c8 b }
  %60
  \alternative { { a4 a'8 a }
  { a,4-. a ( } }
  g4 ) g'8 e  \bar "||"
  \times 2/3 { c4 d e }  |
  c2 ~  |
  %65
  c4 r  \bar "|."
}

liniaroAb =
\relative e''
{
  \tempo 4 = 116
  \clef treble
  \key c \major
  \time 1/8
  r8  |
  \time 2/4   r2  |
  r2  |
  r2  |
  %05
  r2  |
  r2  |
  r2  |
  r2  |
  r4 r8 e  |
  %10
  a2\trill ~  |
  a2\trill  |
  g2  |
  a16 g a b c8 a  |
  f8. g16 a8 b  |
  %15
  c4 c8 c  |
  a4 e  |
  f2 ~  |
  f4 g,8 c  |
  \repeat volta 2 { e8. d16 e8 f  |
  %20
  e4. d16 c  \bar "||"
  \time 3/4   a8 a g b c8. d16  \bar "||"
  \time 2/4   e4 g,8 c  |
  e8. d16 e8 f  |
  e4. d16 c  |
  %25
  a8 a g b }
  \alternative { { c4 g8 c }
  { c4 c } }
  \repeat volta 2 { a8. g16 a8 b  |
  c4. d16 c  |
  %30
  b8 a g b  |
  a4 a  |
  a8. g16 a8 b  |
  c4. d16 c  |
  b8 a g b }
  %35
  \alternative { { a4 r }
  { a4 r } }
  r2  |
  r2  |
  r2  |
  %40
  r2  |
  r2  |
  r2  |
  r2  |
  r2  |
  %45
  a8. g16 a4  |
  a8 b4 g8  |
  d'4 b  |
  a4. b16 c  |
  d8. c16 b8 a  |
  %50
  g4. a16 b  |
  c8. b16 a8 g  |
  a4 r  |
  \repeat volta 2 { a8. g16 a4  |
  a8 b4 g8  |
  %55
  d'4 b  |
  a4. b16 c  |
  d8. c16 b8 a  |
  g4. a16 b  |
  c8. b16 a8 g }
  %60
  \alternative { { a4 r }
  { a4-. a ( } }
  g4 ) g8 c   \bar "||"
  \times 2/3 { c4 d e }  |
  f2 ~  |
  %65
  f4 r  \bar "|."
}

liniaroAc =
\relative a''
{
  \tempo 4 = 116
  \clef treble
  \key c \major
  \time 1/8
  r8  |
  \time 2/4   r2  |
  r2  |
  r2  |
  %05
  r2  |
  r2  |
  r2  |
  r2  |
  r2  |
  %10
  r2  |
  r2  |
  r2  |
  r2  |
  r2  |
  %15
  r2  |
  r2  |
  r2  |
  r2  |
  \repeat volta 2 { r2  |
  %20
  r2  \bar "||"
  \time 3/4   r2 r4  \bar "||"
  \time 2/4   r2  |
  r2  |
  r2  |
  %25
  r2 }
  \alternative { { r2 }
  { r2 } }
  \repeat volta 2 { r2  |
  r8 a16 g f8 a16 g  |
  %30
  f8 e f g  |
  a2  |
  r2  |
  r8 a16 g f8 a16 g  |
  f8 e f g }
  %35
  \alternative { { a4 r }
  { a4 r } }
  r2  |
  r2  |
  r2  |
  %40
  r2  |
  r2  |
  r2  |
  r2  |
  r2  |
  %45
  r2  |
  r2  |
  r2  |
  r2  |
  r2  |
  %50
  r2  |
  r2  |
  r2  |
  \repeat volta 2 { c,8 e4 e8  |
  a,8 d4 d8  |
  %55
  b8 g4 g8  |
  a8 a4 r8  |
  a8 b4 a8  |
  b8 d4 d8  |
  e4. c16 d }
  %60
  \alternative { { e4 r }
  { e4-. c ( } }
  b4 ) r  \bar "||"
  \times 2/3 { c4 b a }  |
  a2 ~  |
  %65
  a4 r  \bar "|."
}

liniaroAd =
\drummode
{
  \tempo 4 = 116
  \time 1/8
  r8  |
  \time 2/4   tomfl4 r  |
  r2  |
  tomfl4 r  |
  %05
  r2  |
  tomfl4 r  |
  r2  |
  tomfl4 tomfl  |
  tomfl4 r  |
  %10
  tomfl2:32 ~  |
  tomfl2:32  |
  tomfl2:32 ~  |
  tomfl2:32  |
  tomfl2:32 ~  |
  %15
  tomfl2  |
  tomfl4:32 tomfl:32  |
  tomfl2:32 ~  |
  tomfl4:32 r  |
  \repeat volta 2 { tomfl8. tomfl16 tomfl8 tomfl  |
  %20
  tomfl2:32  \bar "||"
  \time 3/4   tomfl4:32 tomfl:32 tomfl:32 ~ _"l"  \bar "||"
  \time 2/4   tomfl2:32  |
  tomfl8. tomfl16 tomfl8 tomfl  |
  tomfl2:32  |
  %25
  tomfl4:32 tomfl:32 }
  \alternative { { tomfl2:32 }
  { tomfl4:32 tomfl:32 } }
  \repeat volta 2 { tomfl8.:32 tomfl16:32 tomfl8:32 tomfl:32  |
  tomfl2:32  |
  %30
  tomfl4:32 tomfl:32  |
  tomfl2:32  |
  tomfl8.:32 tomfl16:32 tomfl8:32 tomfl:32  |
  tomfl2:32  |
  tomfl4:32 tomfl:32 }
  %35
  \alternative { { tomfl2:32 }
  { tomfl2:32 } }
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  %40
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl4:32 tomfl:32  |
  tomfl2:32  |
  %45
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  %50
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl4:32 tomfl:32  |
  tomfl2:32  |
  \repeat volta 2 { tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  %55
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl4:32 tomfl:32 }
  %60
  \alternative { { tomfl2:32 }
  { tomfl4:32 tomfl:32 } }
  tomfl2:32  \bar "||"
  \times 2/3 { tomfl4:32 tomfl:32 tomfl:32 }  |
  tomfl2:32 ~  |
  %65
  tomfl4:32 r  \bar "|."
}

\book {

\paper {
  print-page-number = false
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
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new Staff \with {instrumentName = #"Gralla 3" shortInstrumentName = #"G"} \liniaroAc
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAd
      >>
    }
    \midi {}
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
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAa
      >>
    }
    \midi {}
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
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAb
      >>
    }
    \midi {}
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
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \liniaroAc
      >>
    }
    \midi {}
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
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAd
      >>
    }
    \midi {}
  }
}

}

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a6landscape")
  #(layout-set-staff-size 14)
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
}

}

