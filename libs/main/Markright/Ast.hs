module Markright.Ast where

import Data.Text qualified as Text
import Markright.Prelude

-- | AST of formatted text.
data Tree
  = Tree [Node]
  deriving (Lift, Show, Eq, Generic)

data Node
  = ParagraphNode [ParagraphNode]
  | ListNode List
  deriving (Lift, Show, Eq, Generic)

data List = List
  { numbered :: Bool,
    head :: Tree,
    tail :: [Tree]
  }
  deriving (Lift, Show, Eq, Generic)

data ParagraphNode
  = PlainTextParagraphNode Text
  | BoldParagraphNode ParagraphNode
  | ItalicParagraphNode ParagraphNode
  deriving (Lift, Show, Eq, Generic)
