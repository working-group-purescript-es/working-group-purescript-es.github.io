module Page.Common.Frame where

import Page.Util.Prelude

withFrame ∷ String → Array JSX → JSX
withFrame pageTitle content = html'
  </ { lang: "en" }
  />
    [ head' </ {} />
        [ meta' </> { charSet: "utf-8" }
        , meta' </> { name: "viewport", content: "width=device-width, initial-scale=1" }
        , link' </> { rel: "stylesheet", href: "css/stylesheet.css" }
        , title_ [ text pageTitle ]
        ]
    , body_ [ main' </ { className: "container" } /> content ]
    ]