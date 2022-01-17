module Page.Common.Header (pageHeader, links) where

import Page.Util.Prelude

import Page.Common.Logo (svgLogo)

pageHeader ∷ JSX
pageHeader = nav_ [ logo , links ]
  where
  logo = ul_ [ li' </ { id: "logo" } /> [ svgLogo ] ]

links ∷ JSX
links = ul_
  [ li_ [ boardLink ]
  , li_ [ discordLink ]
  ]
  where
  boardLink = externalLink "Project Board"
    "https://github.com/orgs/working-group-purescript-es/projects/1"
  discordLink = externalLink "Discord" "https://discord.gg/ubfQTsv8V8"

  externalLink caption href = a'
    </
      { href
      , className: "external-link"
      }
    /> [ text caption ]