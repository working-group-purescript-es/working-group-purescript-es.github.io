module Page.Common.Section (section) where

import Page.Util.Prelude

import Data.Array ((:))
import Data.String (Pattern(..), Replacement(..))
import Data.String as String

section ∷ String → Array JSX → JSX
section title content =
  section_ $
    (h2' </ { id } /> [ a' </ { href: "#" <> id } /> [ text title ] ])
    : content
  where
  id = title 
    # String.replaceAll (Pattern " ") (Replacement "-") 
    # String.toLower
