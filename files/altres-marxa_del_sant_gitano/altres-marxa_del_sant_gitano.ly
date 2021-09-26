\version "2.16.2"

\header {
  dedication="Marxa"
  title=""
  subtitle="Marxa del Sant Gitano"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer=""
  arranger="Cesc Alexandri - març de 2004"
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative a'
{
  \tempo 4=120
  \clef treble
  \key f \major
  \time 4/4
  r1  |
  r1  |
  r1  |
  r1  \bar "||"
  %05
  a2 e'  |
  <e a>1 ~ ~  |
  <e a>2 \times 2/3 { c'4 a g }  |
  \times 2/3 { bes16 c bes } a8 ~ a4 ~ a2 ~  |
  a2 r  |
  %10
  r1  |
  a,2 e'  |
  <e a>1 ~ ~  |
  <e a>2 \times 2/3 { f4 a g }  |
  \times 2/3 { bes16 c bes } a8 ~ a4 ~ a2 ~  |
  %15
  a2 r  |
  r1  |
  a,2 d  |
  <bes e>1 ~ ~  |
  <bes e>2 \times 2/3 { g'4 f d }  |
  %20
  \times 2/3 { f16 g f } e8 ~ e4 ~ e2 ~  |
  e2 r  |
  r1  |
  a,2 d  |
  <bes e>1 ~ ~  |
  %25
  <bes e>2 \times 2/3 { f'4 d <e aes> }  |
  << { \times 2/3 { d16 e d } des8 ~ des4 ~ des2 ~ } \\ { a'1 ~ } >>  |
  << { des,2 r } \\ { a'2 r2 } >>  | % kompletite
  r1  |
  r1  |
  %30
  r1  |
  \repeat volta 2 { des,4 _"Solo" d8 e f g a4  |
  bes2 ~ bes8 a aes e  |
  \times 2/3 { f16 g f } e8 ~ e4 ~ e8 des d bes  |
  \times 2/3 { bes16 c bes } a8 ~ a4 ~ a2  |
  %35
  des4  d8 e f g a4  |
  bes2 ~ bes8 a g bes  |
  \times 2/3 { bes16 c bes } a8 ~ a4 ~ a8 aes a f  |
  \times 2/3 { f16 g f } e8 ~ e4 ~ e8 des d bes  |
  a1  |
  %40
  r1  |
  r1  |
  r1  | }
  \repeat volta 2 { \times 2/3 { a'4 a a } \times 2/3 { aes e f }  |
  \times 2/3 { f16 g f } e8 ~ e4 ~ e e8 f  |
  %45
  \times 2/3 { a4 a a } \times 2/3 { bes a f }  |
  e2. des8 d  |
  e2 ~ e8 f a aes  |
  \times 2/3 { a16 bes a } f8 ~ f4 ~ f f8 d  |
  e2 ~ e8 des d d  |
  %50
  \times 2/3 { d16 e d } des8 ~ des4 ~ des2  |
  r1  |
  r1  |
  r1  |
  r1  | }
  %55
  \times 2/3 { a'4 a a } \times 2/3 { aes e a }  |
  \times 2/3 { bes16 c bes } a8 ~ a4 ~ a a8 bes  |
  a4 f g4. f8  |
  e2 ~ e4 e8 f  |
  g2 ~ g8 bes a aes  |
  %60
  \times 2/3 { a16 bes a } f8 ~ f4 ~ f des8 d  |
  e2 ~ e4. f8  |
  f4 e2 aes4  |
  a1 ~  |
  a8 r \times 2/3 { a-> a-> a-> } a4-^ r  \bar "|."
}

liniaroAb =
\relative a'
{
  \tempo 4=120
  \clef treble
  \key f \major
  \time 4/4
  r1  |
  r1  |
  r1  |
  r1  \bar "||"
  %05
  a2 a  |
  <a des>1 ~ ~  |
  <a des>2 \times 2/3 { e'4 c bes }  |
  \times 2/3 { d16 e d } des8 ~ des4 ~ des2 ~  |
  des2 r  |
  %10
  r1  |
  a2 a  |
  des1 ~  |
  des2 \times 2/3 { d4 c bes }  |
  \times 2/3 { d16 e d } des8 ~ des4 ~ des2 ~  |
  %15
  des2 r  |
  r1  |
  a2 a  |
  g1 ~  |
  g2 \times 2/3 { bes4 a f }  |
  %20
  \times 2/3 { a16 bes a } g8 ~ g4 ~ g2 ~  |
  g2 r  |
  r1  |
  a2 a  |
  g1 ~  |
  %25
  g2 \times 2/3 { d'4 bes c }  |
  \times 2/3 { bes16 c bes } a8 ~ a4 ~ a2 ~  |
  a2 r  |
  r1  |
  r1  |
  %30
  r1  |
  \repeat volta 2 { r1  |
  r1  |
  r1  |
  r1  |
  %35
  a4 a d des  |
  d2 ~ d8 c bes d  |
  \times 2/3 { d16 e d } des8 ~ des4 ~ des8 e f d  |
  \times 2/3 { d16 e d } des8 ~ des4 ~ des8 a aes e  |
  a1  |
  %40
  r1  |
  r1  |
  r1  | }
  \repeat volta 2 { \times 2/3 { a4 a a } \times 2/3 { e' des d }  |
  \times 2/3 { d16 e d } des8 ~ des4 ~ des des8 bes  |
  %45
  \times 2/3 { a4 des e } \times 2/3 { g f d }  |
  des4. \times 2/3 { d16 des bes } a2 ~  |
  a4 bes8 a g4 des'  |
  d4. \times 2/3 { e16 d c } bes2 ~  |
  bes4 bes8 a g4 bes  |
  %50
  \times 2/3 { bes16 c bes } a8 ~ a4 ~ a2  |
  r1  |
  r1  |
  r1  |
  r1  | }
  %55
  \times 2/3 { des4 des des } \times 2/3 { e des e }  |
  \times 2/3 { d16 e d } des8 ~ des4 ~ des des8 d  |
  des4 a bes4. a8  |
  g2 ~ g4 g8 a  |
  bes2 ~ bes8 d des e  |
  %60
  \times 2/3 { f16 g f } d8 ~ d4 ~ d a  |
  \times 2/3 { bes4 a g } bes4. d8  |
  des2 d4 <bes d>  |
  <a des>1 ~ ~  |
  <a des>8 r \times 2/3 { <a des> <a des> <a des> } <a des>4 r  \bar "|."
}

liniaroAc =
\drummode
{
  \tempo 4=120
  \time 4/4
  tomfl8 tomfl:16 ~ \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl8 tomfl:16 ~ \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl8 tomfl:16 ~ \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl8 tomfl:16 ~ \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  \bar "||"
  %05
  tomfl8 tomfl:16 ~ \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl8 tomfl:16 ~ \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl8 tomfl:16 ~ \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl8 tomfl:16 ~ \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl8 tomfl:16 ~ \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  %10
  tomfl8 tomfl:16 ~ \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl8 tomfl:16 ~ \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl8 tomfl:16 ~ \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl8 tomfl:16 ~ \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl8 tomfl:16 ~ \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  %15
  tomfl8 tomfl:16 ~ \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl8 tomfl:16 ~ \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl8 tomfl:16 ~ \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl8 tomfl:16 ~ \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl8 tomfl:16 ~ \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  %20
  tomfl8 tomfl:16 ~ \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl8 tomfl:16 ~ \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl8 tomfl:16 ~ \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl8 tomfl:16 ~ \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl8 tomfl:16 ~ \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  %25
  tomfl8 tomfl:16 ~ \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl8 tomfl:16 ~ \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl8 tomfl:16 ~ \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl8 tomfl:16 ~ \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl8 tomfl:16 ~ \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  %30
  tomfl8 tomfl:16 ~ \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  \repeat volta 2 { tomfl8 tomfl:16 ~ tomfl tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 tomfl:16 ~ tomfl tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 tomfl:16 ~ tomfl tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 tomfl:16 ~ tomfl tomfl tomfl2:32 ~  |
  %35
  tomfl8 tomfl:16 ~ tomfl tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 tomfl:16 ~ tomfl tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 tomfl:16 ~ tomfl tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 tomfl:16 ~ tomfl tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 tomfl:16 ~ tomfl tomfl tomfl tomfl tomfl tomfl  |
  %40
  tomfl8 tomfl:16 ~ tomfl tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 tomfl:16 ~ tomfl tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 tomfl:16 ~ tomfl tomfl tomfl2:32  | }
  \repeat volta 2 { \times 2/3 { tomfl4 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl2.:64 ~ tomfl8 tomfl  |
  %45
  \times 2/3 { tomfl4 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl2.:64 ~ tomfl8 tomfl  |
  tomfl8 tomfl:16 ~ tomfl tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 tomfl:16 ~ tomfl tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 tomfl:16 ~ tomfl tomfl tomfl tomfl tomfl tomfl  |
  %50
  tomfl8 tomfl:16 ~ tomfl tomfl tomfl tomfl tomfl tomfl  |
  tomfl8 tomfl:16 ~ \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl8 tomfl:16 ~ \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl8 tomfl:16 ~ \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl8 tomfl:16 ~ tomfl tomfl tomfl2:32  | }
  %55
  \times 2/3 { tomfl4 tomfl tomfl } \times 2/3 { tomfl tomfl tomfl }  |
  tomfl8.:32 ~ tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8.:32 ~ tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8.:32 ~ tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  tomfl8.:32 ~ tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  %60
  tomfl8.:32 ~ tomfl16 tomfl8 tomfl tomfl tomfl tomfl tomfl  |
  \times 2/3 { tomfl4 tomfl tomfl } tomfl4.:32 ~ tomfl8  |
  tomfl8. tomfl16 tomfl8 tomfl tomfl4:32 ~ tomfl8 tomfl  |
  tomfl2:32 ~ tomfl:32 ~  |
  tomfl8 r \times 2/3 { tomfl-> tomfl-> tomfl-> } tomfl4-^ r  \bar "|."
}

liniaroAd =
\drummode
{
  \tempo 4=120
  \time 4/4
  hh4 r r hh  |
  hh4 r r hh  |
  hh4 r r hh  |
  hh4 r hh hh  \bar "||"
  %05
  hh4 r r hh  |
  hh4 r r hh  |
  hh4 r r hh  |
  hh4 r hh hh  |
  hh4 r r hh  |
  %10
  hh4 r hh hh  |
  hh4 r r hh  |
  hh4 r r hh  |
  hh4 r r hh  |
  hh4 r hh hh  |
  %15
  hh4 r r hh  |
  hh4 r hh hh  |
  hh4 r r hh  |
  hh4 r r hh  |
  hh4 r r hh  |
  %20
  hh4 r hh hh  |
  hh4 r r hh  |
  hh4 r hh hh  |
  hh4 r r hh  |
  hh4 r r hh  |
  %25
  hh4 r r hh  |
  hh4 r hh hh  |
  hh4 r r hh  |
  hh4 r r hh  |
  hh4 r r hh  |
  %30
  hh4 r hh hh  |
  \repeat volta 2 { hh8. hh16 hh8 hh hh hh hh hh  |
  hh8. hh16 hh8 hh hh hh hh hh  |
  hh8. hh16 hh8 hh hh hh hh hh  |
  hh4 r hh hh  |
  %35
  hh8. hh16 hh8 hh hh hh hh hh  |
  hh8. hh16 hh8 hh hh hh hh hh  |
  hh8. hh16 hh8 hh hh hh hh hh  |
  hh8. hh16 hh8 hh hh hh hh hh  |
  hh8. hh16 hh8 hh hh hh hh hh  |
  %40
  hh4 r r hh  |
  hh4 r r hh  |
  hh4 r hh hh  | }
  \repeat volta 2 { \times 2/3 { hh4 hh hh } \times 2/3 { hh hh hh }  |
  hh8. hh16 hh8 hh hh hh hh hh  |
  %45
  \times 2/3 { hh4 hh hh } \times 2/3 { hh hh hh }  |
  hh8. hh16 hh8 hh hh hh hh hh  |
  hh8. hh16 hh8 hh hh hh hh hh  |
  hh8. hh16 hh8 hh hh hh hh hh  |
  hh8. hh16 hh8 hh hh hh hh hh  |
  %50
  hh8. hh16 hh8 hh hh hh hh hh  |
  hh4 r r hh  |
  hh4 r r hh  |
  hh4 r r hh  |
  hh4 r hh hh  | }
  %55
  \times 2/3 { hh4 hh hh } \times 2/3 { hh hh hh }  |
  hh8. hh16 hh8 hh hh hh hh hh  |
  hh8. hh16 hh8 hh hh hh hh hh  |
  hh8. hh16 hh8 hh hh hh hh hh  |
  hh8. hh16 hh8 hh hh hh hh hh  |
  %60
  hh8. hh16 hh8 hh hh hh hh hh  |
  \times 2/3 { hh4 hh hh } hh8. hh16 hh8 hh  |
  hh8. hh16 hh8 hh hh hh hh hh  |
  hh4 r r hh  |
  hh8-^ r \times 2/3 { hh-> hh-> hh-> } hh4-^ r  \bar "|."
}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new Staff \with {instrumentName = #"Gralla 1" shortInstrumentName = #"G"} \liniaroAa
        \new Staff \with {instrumentName = #"Gralla 2" shortInstrumentName = #"G"} \liniaroAb
        \new DrumStaff \with {instrumentName = #"Caixa" shortInstrumentName = #"C"} \liniaroAc
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
        \new DrumStaff \with {instrumentName = #"Caixa" shortInstrumentName = #"C"} \liniaroAc
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
  \header {instrument="Caixa"}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAc
      >>
    }
    \layout {}
  }
  \score { \unfoldRepeats
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new DrumStaff \liniaroAc
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

