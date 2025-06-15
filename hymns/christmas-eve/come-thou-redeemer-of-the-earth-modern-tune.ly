\version "2.22.2"
\language "english"
\include "../../tunes/puer-nobis-nascitur-lm.ly"
\include "../../lyrics/come-thou-redeemer-of-the-earth.ly"

\header {
  title = "14: Come, Thou Redeemer of the Earth"
  composer = "M. Praetorius, 1571-1621"
  poet = "St. Ambrose, 340-97, Tr. J. M. Neale and others"
}


\score {
    \new ChoirStaff <<
        \new Staff = "upper" <<
            \new Voice = "soprano" {
                \voiceOne
                \soprano
            }
            \new Voice = "alto" {
                \voiceTwo
                \alto
            }
        >>
        \new Lyrics \lyricsto "soprano" \verseOne
        \new Lyrics \lyricsto "soprano" \verseTwo
        \new Lyrics \lyricsto "soprano" \verseThree
        \new Lyrics \lyricsto "soprano" \verseFour
        \new Lyrics \lyricsto "soprano" \verseFive
        \new Lyrics \lyricsto "soprano" \verseSix
        \new Lyrics \lyricsto "soprano" \verseSeven
        \new Lyrics \lyricsto "soprano" \verseEight

        \new Staff = "lower" <<
            \clef "bass"
            \new Voice = "tenor" {
                \voiceThree
                \tenor
            }
            \new Voice = "bass" {
                \voiceFour
                \bass
            }
        >>
    >>
    \layout {
        \context {
            \Staff 
            \remove Time_signature_engraver
        }
    }
}