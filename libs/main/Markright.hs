module Markright where

import Data.Text qualified as Text
import Markright.Ast qualified as Ast
import Markright.Prelude
import Markright.QuasiQuoterHelpers qualified as Qq

instance LenientParser Ast.Tree where
  lenientParser =
    error "TODO"

q :: QuasiQuoter
q =
  Qq.lenientLiteral (Proxy @Ast.Tree)
