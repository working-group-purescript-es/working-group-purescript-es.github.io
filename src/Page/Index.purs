module Page.Index (page) where

import Page.Util.Prelude

import Data.Array ((:))
import Page.Common.Frame (withFrame)
import Page.Common.Header (pageHeader)
import Page.Common.Section (section)
import Page.Index.Downloads (downloadBetaSection)

page ∷ JSX
page = withFrame "ES modules for PureScript"
  [ pageHeader
  , h1_ [ text "ES modules for PureScript" ]
  , tryItOutSection
  , downloadBetaSection
  , buildYourselfSection
  ]

tryItOutSection ∷ JSX
tryItOutSection =
  section "Try it out"
    [ ol_
        [ item "Get the compiler" []
        , item "Start a new project" []
        ]
    ]
  where
  item title content =
    li_ (h5_ [ text title ] : content)

buildYourselfSection ∷ JSX
buildYourselfSection =
  section "Build the compiler yourself"
    [ pre_
        [ text
            """git clone -b es-modules git@github.com:working-group-purescript-es/purescript.git purescript-es
cd purescript-es
stack install"""
        ]
    ]