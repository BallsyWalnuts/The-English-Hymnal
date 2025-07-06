\version "2.22.2"
\language "english"
\include "gregorian.ly"
\include "../../tunes/mode-iv-arr-j-h-a.ly"
\include "../../lyrics/creator-of-the-stars-of-night.ly"

\header {
    title = "Creator of The Stars of Night"
    composer = \markup {
        \column {
            "Mode iv."
            "arr. J. H. A"
        }
    }
    poet = \markup {
        \column {
            "7th. cent."
            "Tr. J. M. Neale"
        }
    }
}

global = {
    \key ef \major
}

\score {
    \new StaffGroup <<
        \new VaticanaVoice = "cantus" {
            \cantus
        }
        
        \new Lyrics \lyricsto "cantus" \verseOne

        \new PianoStaff <<
            \new Staff <<
                \new Voice = "soprano" <<
                    \voiceOne
                    \soprano
                >>
                \new Voice <<
                    \alto
                >>
            >>

            \new Staff <<
                \clef "bass"
                \new Voice <<
                    \bass
                >>
            >>
        >>
  >>
  \layout {
    \context {
      \Staff
      \remove Time_signature_engraver
    }
  }
}