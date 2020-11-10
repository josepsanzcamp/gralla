\version "2.16.0"

\header {
  dedication="Blues"
  title="  "
  subtitle="Saint James Infirmary"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="W. C. Hardy"
  arranger="Arr. Enric Montsant i Damià"
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
  \time 4/4
  e4 e8. e16 d4 ~ d8. e16  |
  c8 a4. r2  |
  e'4 e8. e16 a4 ~ a8. f16  |
  e1  |
  %05
  e4 e8. e16 d4 ~ d8. e16  |
  c8 a4. r4 r8. a16 (  |
  c4 ) r8. c16 ( b4 ) r8. b16 (  |
  a2 ) r  |
  e'4 e8. e16 d4 ~ d8. e16  |
  %10
  c8 a4. r2  |
  e'4 e8. e16 a4 ~ a8. f16  |
  e1  |
  e4 e8. e16 d4 ~ d8. e16  |
  c8 a4. r4 r8. a16 (  |
  %15
  c4 ) r8. c16 ( b4 ) r8. b16 (  |
  a2 ) r  |
  e'4 e8. e16 d4 ~ d8. e16  |
  c8 a4. r2  |
  e'4 e8. e16 a4 ~ a8. f16  |
  %20
  e1  |
  e4 e8. e16 d4 ~ d8. e16  |
  c8 a4. r4 r8. a16 (  |
  c4 ) r8. c16 ( b4 ) r8. b16 (  |
  a2 ) r  \bar "|."
}

liniaroAb =
\relative c''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  r1  |
  r1  |
  r1  |
  r1  |
  %05
  r1  |
  r1  |
  r1  |
  r1  |
  c4 c8. c16 b4 ~ b8. b16  |
  %10
  c8 c4. r2  |
  c4 c8. c16 d4 ~ d8. d16  |
  c2 b  |
  c4 c8. c16 b4 ~ b8. b16  |
  c8 c4. r4 r8. c16 (  |
  %15
  a4 ) r8. a16 ( gis4 ) r8. gis16 (  |
  a2 ) r  |
  c4 c8. c16 b4 ~ b8. b16  |
  c8 c4. r2  |
  c4 c8. c16 d4 ~ d8. d16  |
  %20
  c2 b  |
  c4 c8. c16 b4 ~ b8. b16  |
  c8 c4. r4 r8. c16 (  |
  a4 ) r8. a16 ( gis4 ) r8. gis16 (  |
  a2 ) r  \bar "|."
}

liniaroAc =
\relative a''
{
  \tempo 4=120
  \clef treble
  \key c \major
  \time 4/4
  r1  |
  r1  |
  r1  |
  r1  |
  %05
  r1  |
  r1  |
  r1  |
  r1  |
  r1  |
  %10
  r1  |
  r1  |
  r1  |
  r1  |
  r1  |
  %15
  r1  |
  r1  |
  a4 a8. a16 gis4 ~ gis8. gis16  |
  a8 e4. r2  |
  a4 a g f  |
  %20
  e2 d  |
  a'2 gis  |
  g2 r4 r8. fis16 (  |
  f4 ) r8. f16 ( e4 ) r8. e16  |
  e2 r  \bar "|."
}

liniaroAd =
\drummode
{
  \tempo 4=120
  \time 4/4
  tomfl4 tomfl8. tomfl16 tomfl2:64  |
  tomfl4 tomfl8. tomfl16 tomfl4 r  |
  tomfl4 tomfl8. tomfl16 tomfl2:64  |
  tomfl4 tomfl8. tomfl16 tomfl4 r  |
  %05
  tomfl4 tomfl8. tomfl16 tomfl2:64  |
  tomfl4 tomfl8. tomfl16 tomfl4 r8. tomfl16:32 ~  |
  tomfl4 r8. tomfl16:32 ~ tomfl4 r8. tomfl16:32 ~  |
  tomfl4 tomfl8. tomfl16 tomfl4 r  |
  tomfl4 tomfl8. tomfl16 tomfl2:64  |
  %10
  tomfl4 tomfl8. tomfl16 tomfl4 r  |
  tomfl4 tomfl8. tomfl16 tomfl2:64  |
  tomfl4 tomfl8. tomfl16 tomfl4 r  |
  tomfl4 tomfl8. tomfl16 tomfl2:64  |
  tomfl4 tomfl8. tomfl16 tomfl4 r8. tomfl16:32 ~  |
  %15
  tomfl4 r8. tomfl16:32 ~ tomfl4 r8. tomfl16:32 ~  |
  tomfl4 tomfl8. tomfl16 tomfl4 r  |
  tomfl4 tomfl8. tomfl16 tomfl2:64  |
  tomfl4 tomfl8. tomfl16 tomfl4 r  |
  tomfl4 tomfl8. tomfl16 tomfl2:64  |
  %20
  tomfl4 tomfl8. tomfl16 tomfl4 r  |
  tomfl4 tomfl8. tomfl16 tomfl2:64  |
  tomfl4 tomfl8. tomfl16 tomfl4 r8. tomfl16:32 ~  |
  tomfl4 r8. tomfl16:32 ~ tomfl4 r8. tomfl16:32 ~  |
  tomfl4 tomfl8. tomfl16 tomfl4 r  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
        \new DrumStaff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAd
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAb
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAc
        \new DrumStaff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAd
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
  \header {instrument=""}
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
  \header {instrument=""}
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
  \header {instrument=""}
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

