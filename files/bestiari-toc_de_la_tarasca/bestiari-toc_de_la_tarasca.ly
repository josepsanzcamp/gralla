\version "2.16.0"

\header {
  dedication="Bestiari"
  title="         "
  subtitle="Toc de la Tarasca"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer=""
  arranger=""
  opus="Barcelona"
  instrument="Quim Soler"
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative e''
{
  \tempo 4=200
  \clef treble
  \key c \major
  \time 6/8
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %05
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  \repeat volta 2 { r2 r4  |
  %10
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %15
  r2 r4  |
  r2 r4  | }
  \repeat volta 2 { r2 r4  |
  r2 r4  |
  r2 r4  |
  %20
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  | }
  %25
  \repeat volta 2 { r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %30
  r2 r4  |
  r2 r4  |
  r2 r4  | }
  \repeat volta 2 { e4 c8 c4 c8  |
  c4 g8 g4 g8  |
  %35
  a4. b  |
  e4 c8 c4 c8  |
  c4 g8 g4 g8  |
  a4. b  |
  c4 e8 d4 e8  |
  %40
  c2.  |
  g'4 e8 e4 e8  |
  e4 c8 d4 e8  |
  f4. g  |
  e4 c8 c4 c8  |
  %45
  c4 g8 g4 g8  |
   a4. b  \bar "||"
  c4 e8 d4 e8  |
  \mark \markup {D.C. e Coda} c4. r  | }
  \time 3/4   \mark \markup {\musicglyph #"scripts.coda"} c2 e4  |
  %50
  d2 e4  |
  c2. ~  |
  c2\fermata r4  \bar "|."
}

liniaroAb =
\relative c''
{
  \tempo 4=200
  \clef treble
  \key c \major
  \time 6/8
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %05
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  \repeat volta 2 { r2 r4  |
  %10
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %15
  r2 r4  |
  r2 r4  | }
  \repeat volta 2 { r2 r4  |
  r2 r4  |
  r2 r4  |
  %20
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  | }
  %25
  \repeat volta 2 { r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %30
  r2 r4  |
  r2 r4  |
  r2 r4  | }
  \repeat volta 2 { r4 c8 c4 r8  |
  r4 c8 c4 r8  |
  %35
  r4 c8 b4 r8  |
  r4 c8 c4 r8  |
  r4 c8 c4 r8  |
  r4 c8 b4 r8  |
  r4 c8 b4 c8  |
  %40
  c8 b a g4.  |
  r4 g8 g4 r8  |
  r4 e8 e4 r8  |
  r4 f8 g a b  |
  c4 c8 c4 r8  |
  %45
  r4 c8 c4 r8  |
  r4 c8 b4 r8  \bar "||"
  r4 c8 g4 g8  |
  g8 g g g g g  | }
  \time 3/4   c2 e4  |
  %50
  g4 f e  |
  c2. ~  |
  c2.  \bar "|."
}

liniaroAc =
\drummode
{
  \tempo 4=200
  \time 6/8
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4.:32 tomfl:32  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  %05
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4.:32 tomfl:32  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl2.:32  |
  \repeat volta 2 { tomfl4 tomfl8 r4 tomfl8  |
  %10
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4 tomfl8 r4 tomfl8  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl4 tomfl8 r4 tomfl8  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  %15
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl4 tomfl8  | }
  \repeat volta 2 { tomfl8 tomfl tomfl tomfl4.->  |
  r2 r4  |
  tomfl8 tomfl tomfl tomfl4.->  |
  %20
  r2 r4  |
  tomfl8-> tomfl tomfl tomfl tomfl-> tomfl  |
  tomfl8 tomfl tomfl-> tomfl tomfl tomfl  |
  tomfl8-> tomfl tomfl tomfl tomfl-> tomfl  |
  tomfl8 tomfl tomfl-> tomfl tomfl tomfl  | }
  %25
  \repeat volta 2 { tomfl8-> tomfl tomfl-> tomfl tomfl-> tomfl  |
  tomfl8-> tomfl-> tomfl-> tomfl-> tomfl-> tomfl->  |
  tomfl8-> tomfl tomfl-> tomfl tomfl-> tomfl  |
  tomfl8-> tomfl-> tomfl-> tomfl-> tomfl-> tomfl->  |
  tomfl8-> tomfl tomfl tomfl-> tomfl tomfl  |
  %30
  tomfl8-> tomfl tomfl tomfl-> tomfl tomfl  |
  tomfl4.-> tomfl->  |
  tomfl4.-> tomfl->  | }
  \repeat volta 2 { tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  %35
  tomfl4.:32 tomfl:32  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4.:32 tomfl:32  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  %40
  tomfl8 tomfl tomfl tomfl4.  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4.:32 tomfl:32  |
  tomfl4 tomfl8 tomfl4 tomfl8  |
  %45
  tomfl4 tomfl8 tomfl tomfl tomfl  |
  tomfl4.:32 tomfl:32  \bar "||"
  tomfl4 tomfl8 tomfl4 tomfl8  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  | }
  \time 3/4   tomfl2 tomfl4  |
  %50
  tomfl2.:32 ~  |
  tomfl2.:32 ~  |
  tomfl2.:32  \bar "|."
}

liniaroAd =
\drummode
{
  \tempo 4=200
  \time 6/8
  tomml4. tomml  |
  tomml4. tomml  |
  tomml4. tomml  |
  tomml4. tomml  |
  %05
  tomml4. tomml  |
  tomml4. tomml  |
  tomml4. tomml  |
  tomml4. tomml  |
  \repeat volta 2 { tomml4 tomml8 r4.  |
  %10
  tomml4. tomml  |
  tomml4 tomml8 r4.  |
  tomml4. tomml  |
  tomml4 tomml8 r4.  |
  tomml4. tomml  |
  %15
  tomml4. tomml  |
  tomml4. tomml  | }
  \repeat volta 2 { tomml4. r  |
  tomml4. tomml  |
  tomml4. r  |
  %20
  tomml4. tomml  |
  tomml4. tomml  |
  tomml4. tomml  |
  tomml4. tomml  |
  tomml4. tomml  | }
  %25
  \repeat volta 2 { tomml4 tomml tomml  |
  r2 r4  |
  tomml4 tomml tomml  |
  r2 r4  |
  tomml4. r  |
  %30
  tomml4. r  |
  tomml4. tomml  |
  tomml4. tomml  | }
  \repeat volta 2 { tomml4. tomml  |
  tomml4. tomml  |
  %35
  tomml4. tomml  |
  tomml4. tomml  |
  tomml4. tomml  |
  tomml4. tomml  |
  tomml4. tomml  |
  %40
  tomml4. tomml  |
  tomml4. tomml  |
  tomml4. tomml  |
  tomml4. tomml  |
  tomml4. tomml  |
  %45
  tomml4. tomml  |
  tomml4. tomml  \bar "||"
  tomml4. tomml  |
  tomml4. tomml  | }
  \time 3/4   tomml4. r  |
  %50
  r2 r4  |
  r2 r4  |
  r4. tomml  \bar "|."
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
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAc
        \new DrumStaff \with {instrumentName = #"Timbal fondo" shortInstrumentName = #"T"} \liniaroAd
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new DrumStaff \with {instrumentName = #"Timbal" shortInstrumentName = #"T"} \liniaroAc
        \new DrumStaff \with {instrumentName = #"Timbal fondo" shortInstrumentName = #"T"} \liniaroAd
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
  \header {instrument="Timbal"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAc
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {instrument="Timbal fondo"}
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
  \header {instrument="Timbal"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAc
      >>
    }
    \layout {}
  }
}

\bookpart {
  \header {instrument="Timbal fondo"}
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

