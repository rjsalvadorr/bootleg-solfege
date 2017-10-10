\version "2.18.2"
\language "english"

\header {
  title = "Solfege Exercises"
  subtitle = "A minor, using classical guitar"
}

% #(set-global-staff-size 18)

\layout {
    indent = 0\cm
    \override Staff.TimeSignature #'stencil = ##f
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
}

\paper {
    #(set-paper-size "letter")
    top-margin = 0.5\in
    right-margin = 0.5\in
    bottom-margin = 0.5\in
    left-margin = 0.5\in

    print-all-headers = ##t
    ragged-right = ##f
}

global = {
  \key a \minor
  \time 4/4
  \clef "treble_8"
}

\score {
  \layout {}
  \midi { \tempo 4=70 }
  \header { piece = "Minor scale" title = ##f subtitle = ##f }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    <a, c e a>4 <gs b e gs>4 <a c e a>2
    a4 b c d | e f g a | a g f e | d c b a | r1
    a4 b c d | e f g a | a g f e | d c b a | r1
    \bar "|."
  }
}

\score {
  \layout {}
  \midi { \tempo 4=70 }
  \header { piece = "Do me sol do" title = ##f subtitle = ##f }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    <a, c e a>4 <gs b e gs>4 <a c e a>2
    a4 c e a | a e c a
    a4 c e a | a e c a 
    a4 c e a | a e c a
    a4 c e a | a e c a 
    \bar "|."
  }
}

\score {
  \layout {}
  \midi { \tempo 4=70 }
  \header { piece = "Me sol do me" title = ##f subtitle = ##f }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    <a, c e a>4 <gs b e gs>4 <a c e a>2
    c4 e a c | c a e c
    c4 e a c | c a e c
    c4 e a c | c a e c
    c4 e a c | c a e c
    \bar "|."
  }
}

\score {
  \layout {}
  \midi { \tempo 4=70 }
  \header { piece = "Sol do me sol" title = ##f subtitle = ##f }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    <a, c e a>4 <gs b e gs>4 <a c e a>2
    e'4 a c e | e c a e
    e4 a c e | e c a e
    e4 a c e | e c a e
    e4 a c e | e c a e
    \bar "|."
  }
}

\score {
  \layout {}
  \midi { \tempo 4=70 }
  \header { piece = "Do me sol do (I)  →  Do fa le do (IV)  →  Re sol ti re (V)  →  back to I" title = ##f subtitle = ##f }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    <a, c e a>4 <gs b e gs>4 <a c e a>2
    a4 c e a | a e c a
    a4 d f a | a f d a
    b4 e gs b | b gs e b
    a4 c e a | a e c a
    
    <a c e a>4 <gs b e gs>4 <a c e a>2
    a4 c e a | a e c a
    a4 d f a | a f d a
    b4 e gs b | b gs e b
    a4 c e a | a e c a
    \bar "|."
  }
}

