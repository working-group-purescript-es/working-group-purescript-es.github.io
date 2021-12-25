module Page.Common.Logo where

import Page.Util.Prelude

import React.Basic.DOM.SVG as SVG

svgLogo ∷ JSX
svgLogo =
  SVG.svg'
    </
      { viewBox: "0 0 435 232"
      , xmlns: "http://www.w3.org/2000/svg"
      }
    />
      [ SVG.path
          { d: "m221.42 231.55-41.07-38.35H0l41.07 38.35h180.35ZM41.07 97.11 0 135.46h180.35l41.07-38.35H41.07ZM339.86 72.85l79.58 86.23h-52.62l-79.58-86.23h52.62ZM221.4 39.36 180.36 1H.01l41.06 38.36H221.4ZM428.96 38.38V0H286.7a19 19 0 0 0-13.54 5.63 19.04 19.04 0 0 0-5.63 13.54v18.46l161.43.75ZM434.03 212.75l.03-19.2-161.44.04v38.35h142.22a19.16 19.16 0 0 0 19.19-19.2"
          , fill: "currentColor"
          }
      ]