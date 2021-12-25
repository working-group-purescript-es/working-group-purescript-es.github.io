module Main (main) where

import Prelude

import Control.Parallel (parTraverse_)
import Data.Enum (enumFromTo)
import Effect (Effect)
import Effect.Aff (Aff, launchAff_)
import Page.Index as Index
import Node.Encoding (Encoding(..))
import Node.FS.Aff as FS
import Page (Page)
import Page as Page
import React.Basic (JSX)
import React.Basic.DOM.Server (renderToStaticMarkup)

main ∷ Effect Unit
main = launchAff_ do
  allPages # parTraverse_ writePageToFile

allPages ∷ Array Page
allPages = enumFromTo bottom top

writePageToFile ∷ Page → Aff Unit
writePageToFile page = do
  let fileName = Page.fileName page
  let content = page # jsxForPage # renderHTMLPage
  FS.writeTextFile UTF8 fileName content

jsxForPage ∷ Page → JSX
jsxForPage = case _ of
  Page.Index -> Index.page

renderHTMLPage ∷ JSX -> String
renderHTMLPage jsx = "<!DOCTYPE html>" <> renderToStaticMarkup jsx