\version "2.18.2"
\language "english"

\header {
  title = "Solfege Exercises"
  subtitle = "A major, using classical guitar"
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
  \key a \major
  \time 4/4
  \clef "treble_8"
}

\score {
  \midi { \tempo 4=65 }
  \relative c' {
    \global
    % Dummy midi block. Just makes numbering so much easier...
    r4
  }
}

%%%%%%%%%%
%%%%%%%%%% Scales
%%%%%%%%%%

\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "01. Major scale" title = ##f subtitle = "Scales" }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    <a, cs e a>4 <gs b e gs>4 <a cs e a>2
    a4 b cs d | e fs gs a | a gs fs e | d cs b a
    a4 b cs d | e fs gs a | a gs fs e | d cs b a
    \bar "|."
  }
}

\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "02. Major scale, lower half (Do - Sol)" title = ##f subtitle = ##f }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    \time 3/4
    <a, cs e a>4 <gs b e gs>4 <a cs e a>4
    a4 b cs | d e d | cs b a
    a4 b cs | d e d | cs b a
    a4 b cs | d e d | cs b a
    \bar "|."
  }
}

\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "03. Major scale, upper half (Do - Fa)" title = ##f subtitle = ##f }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    \time 3/4
    <a, cs e a>4 <gs b e gs>4 <a cs e a>4
    a' gs fs | e d e | fs gs a
    a gs fs | e d e | fs gs a
    a gs fs | e d e | fs gs a
    \bar "|."
  }
}

%%%%%%%%%%
%%%%%%%%%% Arpeggios
%%%%%%%%%%

\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "04. Do mi sol" title = ##f subtitle = "Three note arpeggios" }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    \time 3/4
    <a, cs e a>4 <gs b e gs>4 <a cs e a>4
    a4 cs e | cs a2 
    a4 cs e | cs a2 
    a4 cs e | cs a2 
    a4 cs e | cs a2 
    \bar "|."
  }
}

\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "05. Mi sol do" title = ##f subtitle = ##f }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    \time 3/4
    <a, cs e a>4 <gs b e gs>4 <a cs e a>4
    cs4 e a | e cs2 
    cs4 e a | e cs2 
    cs4 e a | e cs2 
    cs4 e a | e cs2 
    \bar "|."
  }
}

\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "06. Sol do mi" title = ##f subtitle = ##f }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    \time 3/4
    <a, cs e a>4 <gs b e gs>4 <a cs e a>4
    e'4 a cs | a e2
    e4 a cs | a e2
    e4 a cs | a e2
    e4 a cs | a e2
    \bar "|."
  }
}

\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "07. Do mi sol do" title = ##f subtitle = "Four note arpeggios" }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    <a, cs e a>4 <gs b e gs>4 <a cs e a>2
    a4 cs e a | a e cs a
    a4 cs e a | a e cs a 
    a4 cs e a | a e cs a
    a4 cs e a | a e cs a 
    \bar "|."
  }
}

\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "08. Mi sol do mi" title = ##f subtitle = ##f }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    <a, cs e a>4 <gs b e gs>4 <a cs e a>2
    cs4 e a cs | cs a e cs
    cs4 e a cs | cs a e cs
    cs4 e a cs | cs a e cs
    cs4 e a cs | cs a e cs
    \bar "|."
  }
}

\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "09. Sol do mi sol" title = ##f subtitle = ##f }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    <a, cs e a>4 <gs b e gs>4 <a cs e a>2
    e'4 a cs e | e cs a e
    e4 a cs e | e cs a e
    e4 a cs e | e cs a e
    e4 a cs e | e cs a e
    \bar "|."
  }
}

%%%%%%%%%%
%%%%%%%%%% Diatonic chords
%%%%%%%%%%

\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "10. Do mi sol do (I) →  Re sol ti re (V)" title = ##f subtitle = "Diatonic chords" }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    <a, cs e a>4 <gs b e gs>4 <a cs e a>2
    a4 cs e a | a e cs a
    b4 e gs b | b gs e b
    a4 cs e a | a e cs a
    
    <a cs e a>4 <gs b e gs>4 <a cs e a>2
    a4 cs e a | a e cs a
    b4 e gs b | b gs e b
    a4 cs e a | a e cs a
    \bar "|."
  }
}

\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "11. Do mi sol do (I)  →  Do fa la do (IV)" title = ##f subtitle = ##f }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    <a, cs e a>4 <gs b e gs>4 <a cs e a>2
    a4 cs e a | a e cs a
    a4 d fs a | a fs d a
    a4 cs e a | a e cs a
    
    <a cs e a>4 <gs b e gs>4 <a cs e a>2
    a4 cs e a | a e cs a
    a4 d fs a | a fs d a
    a4 cs e a | a e cs a
    \bar "|."
  }
}

\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "12. Do mi sol do (I)  →  Do mi la do (vi)" title = ##f subtitle = ##f }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    <a, cs e a>4 <gs b e gs>4 <a cs e a>2
    a4 cs e a | a e cs a
    a4 cs fs a | a fs cs a
    a4 cs e a | a e cs a
    
    <a cs e a>4 <gs b e gs>4 <a cs e a>2
    a4 cs e a | a e cs a
    a4 cs fs a | a fs cs a
    a4 cs e a | a e cs a
    \bar "|."
  }
}

\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "13. Do mi sol do (I)  →  Re fa la re (ii)" title = ##f subtitle = ##f }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    <a, cs e a>4 <gs b e gs>4 <a cs e a>2
    a4 cs e a | a e cs a
    b4 d fs b | b fs d b
    a4 cs e a | a e cs a
    
    <a cs e a>4 <gs b e gs>4 <a cs e a>2
    a4 cs e a | a e cs a
    b4 d fs b | b fs d b
    a4 cs e a | a e cs a
    \bar "|."
  }
}

\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "14. Do mi sol do (I)  →  Re fa ti re (vii°)" title = ##f subtitle = ##f }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    <a, cs e a>4 <gs b e gs>4 <a cs e a>2
    a4 cs e a | a e cs a
    b4 d gs b | b gs d b
    a4 cs e a | a e cs a
    
    <a cs e a>4 <gs b e gs>4 <a cs e a>2
    a4 cs e a | a e cs a
    b4 d gs b | b gs d b
    a4 cs e a | a e cs a
    \bar "|."
  }
}

\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "15. Do mi sol do (I)  →  Mi sol ti mi (iii)" title = ##f subtitle = ##f }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    <a, cs e a>4 <gs b e gs>4 <a cs e a>2
    a4 cs e a | a e cs a
    cs e gs cs | cs gs e cs
    a4 cs e a | a e cs a
    
    <a cs e a>4 <gs b e gs>4 <a cs e a>2
    a4 cs e a | a e cs a
    cs e gs cs | cs gs e cs
    a4 cs e a | a e cs a
    \bar "|."
  }
}


\score {
  \layout {}
  \midi { \tempo 4=65 }
  \header { piece = "16. Do mi sol do (I)  →  Do fa la do (IV)  →  Re sol ti re (V)  →  back to I" title = ##f subtitle = ##f }
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } \relative c'{
    \global
    <a, cs e a>4 <gs b e gs>4 <a cs e a>2
    a4 cs e a | a e cs a
    a4 d fs a | a fs d a
    b4 e gs b | b gs e b
    a4 cs e a | a e cs a
    
    <a cs e a>4 <gs b e gs>4 <a cs e a>2
    a4 cs e a | a e cs a
    a4 d fs a | a fs d a
    b4 e gs b | b gs e b
    a4 cs e a | a e cs a
    \bar "|."
  }
}

