module Page where

import Prelude

import Data.Bounded.Generic (genericBottom, genericTop)
import Data.Enum (class BoundedEnum, class Enum)
import Data.Enum.Generic (genericCardinality, genericFromEnum, genericPred, genericSucc, genericToEnum)
import Data.Generic.Rep (class Generic)

data Page = Index

fileName ∷ Page → String
fileName = (_ <> ".html") <<< case _ of
  Index -> "index"

-- My plate is boiling
derive instance Generic Page _
derive instance Eq Page
derive instance Ord Page
instance Enum Page where
  succ = genericSucc
  pred = genericPred

instance Bounded Page where
  top = genericTop
  bottom = genericBottom

instance BoundedEnum Page where
  cardinality = genericCardinality
  toEnum = genericToEnum
  fromEnum = genericFromEnum