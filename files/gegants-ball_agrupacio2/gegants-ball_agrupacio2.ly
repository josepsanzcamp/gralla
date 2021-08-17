\version "2.16.0"

\header {
  dedication="Gegants"
  title="  "
  subtitle="Ball de gegants de l'Agrupació"
  subsubtitle="Vals"
  poet=""
  meter=""
  piece=""
  composer="Jordi Fàbregas"
  arranger=""
  opus=""
  instrument=""
  copyright="     "
  tagline="  "
}

liniaroAa =
\relative b'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/4
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %05
  \repeat volta 2 { b4. ( c8-. d  c  )  |
  b4. ( a8 g b   |
  d2 ) e4-.  |
  d2 r4  |
  e2-- g8.-. g16-.  |
  %10
  g4 ( fis e )  |
  e8-> d ~ d4 b (  |
  d2 ) r4  |
  c4. d8 ( fis d  |
  c4. ) d8 ( fis d  |
  %15
  b4. ) d8 ( g d )  |
  b4. ( c8 ) d ( dis   |
  e2 ) c4  |
  a'8 ( ( g ) fis-. g-. fis-. e-.  |
  e8-> d ~ d4 b (  |
  %20
  d2 ) ) r4  |
  cis4. d8-. e fis (   |
  g4. ) e8-. ( fis  g   |
  fis4. ) d8 ( fis  g   |
  a4 ) r a--  |
  %25
  b4. \f \> g8 ( e d \! )  |
  cis4. e8 ( g ) fis (  |
  d4 cis \> c ) \!  \bar "||"
  b4. ( c8-. d  c   |
  b4. a8 g  b   |
  %30
  d2 ) e4--  |
  d2 r4  |
  e2-- g8.-. g16-.  |
  g4 ( fis e )  |
  e8-> d ~ d4 b (  |
  %35
  d2 ) r4  |
  c4. d8 ( fis d )  |
  c4. d8 ( fis ) d (  |
  b4. ) e8 g e  |
  c'4 ( b a  |
  %40
  b4. ) d,8 ( g b  |
  a4. ) c,8 ( fis a }
  \alternative { { g2. ~ )  |
  g4 r r  |
  r2 r4  |
  %45
  r2 r4  |
  r2 r4 }
  { g2. ~   |
  g2.\fermata } } \bar "||"
}

liniaroAb =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key g \major
  \time 3/4
  r2 r4  |
  r2 r4  |
  r2 r4  |
  r2 r4  |
  %05
  \repeat volta 2 { g4. ( \mf a8-. b  a  )  |
  g4. ( a8 b g   |
  b2 ) c4-.  |
  b2 r4  |
  c2-- e8.-. e16-.  |
  %10
  e4 ( d c )  |
  c8-> b ~ b4 g (  |
  b2 ) r4  |
  a4. b8 ( d b  |
  a2 ~ a8 b16 a  |
  %15
  g2. )  |
  g4. a8 ais b (   |
  c2 ) a4  |
  fis'8 ( ( e ) d-. e-. d-. c-.  |
  c8-> b ~ b4 g (  |
  %20
  b2 ) ) r4  |
  a4. b8-. ( cis d    |
  cis2.   |
  d2.  |
  c4 ) r fis--  |
  %25
  g4. e8 ( cis b )  |
  a2.   |
  d2 r4  \bar "||"
  g,4. ( \mf a8-. b  a   |
  g4. a8 b  g   |
  %30
  b2 ) c4--  |
  b2 r4  |
  c2-- e8.-. e16-.  |
  e4 ( d c )  |
  c8-> b ~ b4 g (  |
  %35
  b2 ) r4  |
  a4. b8 ( d b )  |
  a2 ~ ( a8 b16 a  |
  g2. )  |
  e'4 ( d c  |
  %40
  d4. ) b8 ( d4  |
  dis4. ) a8 ( c4 }
  \alternative { { <b e>4 ~ <b d> ~ <b c> ~ )  |
  b4 r ( r )  |
  r2 r4  |
  %45
  r2 r4  |
  r2 r4 }
  { <b e>4-- ~ <b d>-- ~ <b c>-- ~  |
  b2.\fermata } } \bar "||"
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 3/4
  tomfl4-> tomfl8:32 tomfl:32 tomfl4  |
  tomfl4-> tomfl8:32 tomfl:32 tomfl:32 tomfl:32  |
  tomfl4-> tomfl tomfl8 tomfl  |
  tomfl4-> r r  |
  %05
  \repeat volta 2 { tomfl4-> \mf tomfl8:32 tomfl:32 tomfl4  |
  tomfl4-> tomfl8:32 tomfl:32 tomfl:32 tomfl:32  |
  tomfl4-> tomfl8:32 tomfl:32 tomfl4  |
  tomfl4-> tomfl8 tomfl tomfl tomfl  |
  tomfl2.:32  |
  %10
  tomfl2.:32  |
  tomfl2.:32  |
  tomfl4-> tomfl8 tomfl tomfl tomfl  |
  tomfl2.:32  |
  tomfl2.:32  |
  %15
  tomfl2.:32  |
  tomfl4 tomfl tomfl8 tomfl  |
  tomfl2.:32  |
  tomfl4.:32 tomfl8 tomfl tomfl  |
  tomfl2.:32  |
  %20
  tomfl4-> tomfl8 tomfl tomfl tomfl  |
  tomfl2.:32  |
  tomfl2.:32  |
  tomfl2.:32  |
  tomfl4 tomfl tomfl8 tomfl  |
  %25
  tomfl2.:32 \f  |
  tomfl2.:32  |
  tomfl4-> tomfl-> tomfl8 tomfl  \bar "||"
  tomfl4-> \mf tomfl8:32 tomfl:32 tomfl4  |
  tomfl4-> tomfl8:32 tomfl:32 tomfl:32 tomfl:32  |
  %30
  tomfl4-> tomfl8:32 tomfl:32 tomfl4  |
  tomfl4-> tomfl8 tomfl tomfl tomfl  |
  tomfl2.:32  |
  tomfl2.:32  |
  tomfl2.:32  |
  %35
  tomfl4-> tomfl tomfl8 tomfl  |
  tomfl2.:32  |
  tomfl2.:32  |
  tomfl2.:32  |
  tomfl4-> tomfl tomfl8 tomfl  |
  %40
  tomfl2.:32  |
  tomfl2.:32 }
  \alternative { { tomfl4-> tomfl tomfl8 tomfl  |
  tomfl2.:32  |
  tomfl2.:32  |
  %45
  tomfl4-> tomfl tomfl8 tomfl  |
  tomfl2.:32 }
  { tomfl4-> _"rit." tomfl tomfl8 tomfl  |
  tomfl2.\fermata } } \bar "||"
}

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a4")
  #(layout-set-staff-size 20)
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAc
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
      >>
    }
    \midi {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAc
      >>
    }
    \layout {}
  }\score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAc
      >>
    }
    \midi {}
  }
}

}

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a5landscape")
  #(layout-set-staff-size 16)
  #(define output-suffix "a5")
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
      >>
    }
    \layout {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
      >>
    }
    \layout {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAc
      >>
    }
    \layout {}
  }
}

}

\book {

\paper {
  print-page-number = false
  #(set-paper-size "a6landscape")
  #(layout-set-staff-size 12)
  #(define output-suffix "a6")
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" } \liniaroAa
      >>
    }
    \layout {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 2" } \liniaroAb
      >>
    }
    \layout {}
  }
}

\bookpart {
  \header {}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \with {instrumentName = #"Timbal" } \liniaroAc
      >>
    }
    \layout {}
  }
}

}

