\version "2.16.0"

\header {
  dedication="Masurca"
  title="  "
  subtitle="Masurca"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Rafael García"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative e''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  e8. f16 e8. d16 c8. b16  |
  a4. a8 a c  |
  e2 a,4  |
  gis2.  |
  %05
  d'8. e16 d8. c16 b8. a16  |
  gis4. gis8 gis b  |
  e4 e8. d16 c8. b16  |
  a4 r2  |
  g'8. a16 g8. f16 e8. d16  |
  %10
  c4. g8 c e  |
  g2 c,4  |
  b2.  |
  f'8. g16 f8. e16 d8. c16  |
  b4. g8 b d  |
  %15
  g4 g8. f16 e8. d16  |
  c2.  |
  e8. f16 e8. d16 c8. b16  |
  a4. a8 a c  |
  e2 a,4  |
  %20
  gis2.  |
  d'8. e16 d8. c16 b8. a16  |
  gis4. gis8 gis b  |
  e4 e8. d16 c8. b16  |
  a4 r2  |
  %25
  g'8. a16 g8. f16 e8. d16  |
  c4. g8 c e  |
  g2 c,4  |
  b2.  |
  f'8. g16 f8. e16 d8. c16  |
  %30
  b4. g8 b d  |
  g4 g8. f16 e8. d16  |
  c2.  |
  a'4 e c  |
  a'4 e c  |
  %35
  g'4. f8 d8. b16  |
  g2.  |
  g'4. f8 d8. b16  |
  g2.  |
  a'4. e8 c8. b16  |
  %40
  a2.  |
  a'4 e c  |
  a'4 e c  |
  g'4. f8 d8. b16  |
  g2.  |
  %45
  g'4. f8 d8. b16  |
  g2.  |
  \times 2/3 { c8 d c } b8. c16 e8. d16  |
  c4 c r  \bar "|."
}

liniaroAb =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 3/4
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %05
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  c2 ~ c8 g  |
  %10
  c2.  |
  c2 cis4  |
  d2.  |
  g,2.  |
  d'2.  |
  %15
  g,2 b4  |
  c4 c r  |
  a2 c4  |
  e2.  |
  e2 a,4  |
  %20
  b2.  |
  e,2 gis4  |
  b2.  |
  e,2 gis4  |
  a2 r4  |
  %25
  c2 ~ c8 g  |
  c2.  |
  c2 cis4  |
  d2.  |
  g,2.  |
  %30
  d'2.  |
  g,2 b4  |
  c4 c r  |
  a2 gis4  |
  a2.  |
  %35
  g2 ~ <g b>4  |
  d'2.  |
  g,2 ~ <g b>4  |
  d'2.  |
  a2 c4  |
  %40
  e2.  |
  a,2 gis4  |
  a2.  |
  g2 ~ <g b>4  |
  d'2.  |
  %45
  g,2 ~ <g b>4  |
  d'2.  |
  c2 g'4  |
  c,4 c r  \bar "|."
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 3/4
  tomfl8 r tomfl tomfl tomfl tomfl  |
  tomfl8 r tomfl r tomfl r  |
  tomfl8 r tomfl r tomfl r  |
  tomfl8 r tomfl tomfl tomfl tomfl  |
  %05
  tomfl8 r tomfl r tomfl r  |
  tomfl8 r tomfl r tomfl r  |
  tomfl8 r tomfl tomfl tomfl tomfl  |
  tomfl8 r tomfl r r4  |
  tomfl8 r tomfl r tomfl r  |
  %10
  tomfl8 r tomfl tomfl tomfl r  |
  tomfl8 r tomfl r tomfl r  |
  tomfl8 r tomfl tomfl tomfl r  |
  tomfl8 r tomfl r tomfl r  |
  tomfl8 r tomfl tomfl tomfl r  |
  %15
  tomfl8 r tomfl r tomfl r  |
  tomfl8 r tomfl r r4  |
  tomfl8. tomfl16 tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  tomfl8. tomfl16 tomfl8. tomfl16 tomfl8. tomfl16  |
  tomfl8. tomfl16 tomfl8 tomfl16 tomfl tomfl8 tomfl16 tomfl  |
  %20
  tomh8. tomh16 tomh8. tomh16 tomh8. tomh16  |
  tomh8. tomh16 tomh8 tomh16 tomh tomh8 tomh16 tomh  |
  tomh8. tomh16 tomh8. tomh16 tomh8. tomh16  |
  tomh8. tomh16 tomh8 tomh16 tomh tomh8 tomh16 tomh  |
  tomh8. tomh16 tomh8. tomh16 tomh8. tomh16  |
  %25
  tomfl8 r tomfl r tomfl r  |
  tomfl8 r tomfl tomfl tomfl r  |
  tomfl8 r tomfl r tomfl r  |
  tomfl8 r tomfl tomfl tomfl r  |
  tomfl8 r tomfl r tomfl r  |
  %30
  tomfl8 r tomfl tomfl tomfl r  |
  tomfl8 r tomfl r tomfl r  |
  tomfl8 r tomfl r r4  |
  tomfl8 r tomfl r tomfl r  |
  tomfl8 r tomfl r tomfl r  |
  %35
  tomfl8 r tomfl r tomfl r  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 r tomfl r tomfl r  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 r tomfl r tomfl r  |
  %40
  tomfl8 r tomfl r r4  |
  tomfl8 r tomfl r tomfl r  |
  tomfl8 r tomfl r tomfl r  |
  tomfl8 r tomfl r tomfl r  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  %45
  tomfl8 r tomfl r tomfl r  |
  tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 r tomfl r tomfl r  |
  tomfl8 r tomfl r r4  \bar "|."
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

}

