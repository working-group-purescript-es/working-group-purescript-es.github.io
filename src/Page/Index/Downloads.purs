module Page.Index.Downloads (downloadBetaSection) where

import Page.Util.Prelude

import Page.Common.Section (section)

downloadBetaSection ∷ JSX
downloadBetaSection = section "Download beta"
  [ details_
      [ summary_ [ h4_ [ u_ [text "Pre-built"] ] ]
      , downloadTable
      ]
  ]

downloadTable ∷ JSX
downloadTable =
  table_
    [ tableHead
        [ "Operating system"
        , "Processor"
        , "Link"
        , "Date"
        ]
    , tbody_
        [ downloadTableRow "Windows"
            { arch: "AMD/Intel", href: "N/A", date: "-" }
            { arch: "ARM", href: "N/A", date: "-" }
        , downloadTableRow "Linux"
            { arch: "x64", href: "N/A", date: "-" }
            { arch: "arm64", href: "N/A", date: "-" }
        , downloadTableRow "macOS"
            { arch: "Intel", href: "N/A", date: "-" }
            { arch: "Apple Silicon", href: "N/A", date: "-" }
        ]
    ]

tableHead ∷ Array String → JSX
tableHead titles = thead_ [ tr_ $ th <$> titles ]
  where
  th title = th_ [ text title ]

downloadTableRow
  ∷ String
  -> { arch ∷ String, date ∷ String, href :: String }
  -> { arch ∷ String, date ∷ String, href :: String }
  → JSX
downloadTableRow os arch1 arch2 = fragment
  [ tr_
      [ td' </ { rowSpan: 2 } /> [ text os ]
      , td_ [ text arch1.arch ]
      , td_ [ a' </ { href: arch1.href } /> [ text "Download" ] ]
      , td_ [ text arch1.date ]
      ]
  , tr_
      [ td_ [ text arch2.arch ]
      , td_ [ a' </ { href: arch2.href } /> [ text "Download" ] ]
      , td_ [ text arch2.date ]
      ]
  ]