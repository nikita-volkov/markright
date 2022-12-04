module Markright.Builder
  ( Builder,
    freeze,
  )
where

import Data.Text qualified as Text
import Markright.Ast qualified as Ast
import Markright.Prelude

newtype Builder
  = Builder (Acc Ast.Node)
  deriving (Semigroup, Monoid)

freeze :: Builder -> Ast.Tree
freeze =
  error "TODO"

melt :: Ast.Tree -> Builder
melt (Ast.Tree nodeList) =
  Builder (fromList nodeList)
