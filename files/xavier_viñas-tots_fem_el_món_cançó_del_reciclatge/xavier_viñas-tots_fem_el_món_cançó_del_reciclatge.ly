\version "2.16.2"

\header {
  dedication="Tots fem el món"
  title=""
  subtitle="Cançó del reciclatge"
  subsubtitle=""
  poet="adaptació a gralla Xavier Viñas"
  meter=""
  piece=""
  composer="Carla Pérez"
  arranger="(alumna 2n Bat INS Vidreres, 2012)"
  opus=""
  instrument=""
  copyright=""
  tagline=""
}

liniaroAa =
\relative g'
{
  \tempo 4=120
  \clef treble
  \key f \major
  \time 4/4
  \repeat volta 2 { r8 g g g16 g ~ g g e8 g e  |
  r8 a \times 2/3 { a a a ~ } a g a r  |
  r8 a \times 2/3 { a4 a8 ~ } a g a g  |
  g8 g g16 a8 g16 ~ g2  |
  %05
  r8 g g g16 ~ g ~ g g e8 g e  |
  r8 a \times 2/3 { a16 a ~ a8 a ~ } a g a r  | % troigo!
  r8 a \times 2/3 { a4 } \times 2/3 { a8 ~ } a g a g  |
  g8 g g16 a8 g16 ~ g2  |
  r8 f f f16 a ~ a a ~ a8 a g  |
  %10
  g1  |
  e'8. e16 ~ \times 2/3 { e4 } \times 2/3 { d8 ~ } \times 2/3 { d4 } \times 2/3 { c4. } \times 2/3 { c8 }  |
  a8 c c d16 c ~ c4. c8  |
  d8 d d16 c8 e16 ~ e8 d d c  |
  e8 d d c16 d ~ d4 r  |
  %15
  e8. e16 ~ \times 2/3 { e4 } \times 2/3 { d8 ~ } \times 2/3 { d4 } \times 2/3 { c4. } \times 2/3 { c8 }  |
  des8 des des des16 des ~ des2  |
  d8 d d16 c8 e16 d4 ~ d8 c  |
  d8 d d16 e8. d2 }
  \alternative { { e4. d8 ~ d4 e  |
  %20
  c1  |
  ees4. d8 ~ \times 2/3 { d4 c8 } c4  |
  c1 }
  { e8. e16 ~ \times 2/3 { e4 } \times 2/3 { d8 ~ } \times 2/3 { d4 } \times 2/3 { c4. } \times 2/3 { c8 }  |
  a8 c c d16 c ~ c4. c8 } }
  %25
  d8 d d16 c8 e16 ~ e8 d d c  |
  e8 d d c16 d ~ d4 r  |
  e8. e16 ~ \times 2/3 { e4 } \times 2/3 { d8 ~ } \times 2/3 { d4 } \times 2/3 { c2 }  |
  des8 des des des16 des ~ des2  |
  d8 d d16 c8. \times 2/3 { e4 } \times 2/3 { d8 } \times 2/3 { d c c }  |
  %30
  d8 d d16 e8. d2  |
  e4. d8 ~ d4 e  |
  c1  |
  ees4. d8 ~ \times 2/3 { d4 } \times 2/3 { c8 ~ } c4  |
  c1  |
  %35
  e4. d8 ~ d4 g  |
  c,1 |
  ees4. d8 ~ \times 2/3 { d4 } \times 2/3 { c8 ~ } c4  |
  c1  \bar "|."
}
\addlyrics
{
  \tempo 4=120
  Si t'es ti -- mes -- la na -- tu ra --
  i_el món del teu vol -- tant
  vés amb mol ta -- cu -- ra_a --
  prèn a re ci -- clar --
  %05
  -- Si_a prop -- de ca sa -- te -- va
  vols sen -- tir_o cells -- can tar --
  i_a -- cada pri -- ma ve -- ra --
  veu re -- flors al camp
  Es -- col ta i posa' a can
  %10
  -- tar!
  Mi ra_i -- pen  -- -- sa groc --
  blau, verd o mar ró. -- Co  --
  lors que_e do -- nen vi -- da i que
  fan el món mil lor --
  %15
  Tri a -- sem   --  pre -- el
  bon con te -- -- ni dor --
  i si te  ens -- dub      tes --    con  --
  sul -- ta'ls sen se -- por.
  Tots fem el
  %20
  món.
  Dó na -- -- li_a --
  mor.
  Mi -- ra_i   pen  --   sa: groc,
  blau, o marró Co --
  %25
  lors que_e do  --  -- nen vi -- da i que --
  fan el món mi    -- llor.
  Cui da -- -- sem -- pre
  tot el -- -- teu en -- -- torn. --
  Si -- gues fe -- liç fes a -- mics i re --
  %30
  cor -- -- da -- la   can çó.
  Tots fem el
  món.
  Dó na -- -- li_a --
  mor.
  %35
  Tots fem el
  món.
  Dó na -- -- li_a --
  mor.
}

\score {
  \new StaffGroup {
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    <<
      \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAa
    >>
  }
  \layout {}
}
\score { \unfoldRepeats
  \new StaffGroup {
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    <<
      \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \liniaroAa
    >>
  }
  \midi {
    \set Staff.midiInstrument = "oboe"
    \set DrumStaff.midiInstrument = "drums"
  }
}

