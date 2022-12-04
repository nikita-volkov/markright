module Markright.QuasiQuoterHelpers where

import Data.Attoparsec.Text qualified as Atto
import Data.Text qualified as Text
import Language.Haskell.TH.Quote
import Language.Haskell.TH.Syntax
import Markright.Prelude hiding (exp, lift)

mapFromExp :: ((String -> Q Exp) -> (String -> Q Exp)) -> QuasiQuoter -> QuasiQuoter
mapFromExp mapper qq =
  qq {quoteExp = mapper (quoteExp qq)}

flatMapExp :: (Exp -> Q Exp) -> QuasiQuoter -> QuasiQuoter
flatMapExp mapper qq =
  qq {quoteExp = quoteExp qq >=> mapper}

exp :: (String -> Q Exp) -> QuasiQuoter
exp exp =
  QuasiQuoter
    exp
    (const (fail "Context unsupported"))
    (const (fail "Context unsupported"))
    (const (fail "Context unsupported"))

dec :: (String -> Q [Dec]) -> QuasiQuoter
dec dec =
  QuasiQuoter
    (const (fail "Context unsupported"))
    (const (fail "Context unsupported"))
    (const (fail "Context unsupported"))
    dec

pureAttoparsedExp :: Atto.Parser Exp -> QuasiQuoter
pureAttoparsedExp parser =
  exp
    (either fail pure . Atto.parseOnly parser' . fromString)
  where
    parser' = parser <* Atto.endOfInput

-- |
-- Lets you easily create custom literal quoters by utilizing typeclasses.
lenientLiteral :: (LenientParser a, Lift a) => Proxy a -> QuasiQuoter
lenientLiteral proxy =
  pureAttoparsedExp . fmap (unsafePerformIO . runQ . lift . flip asProxyTypeOf proxy) $ lenientParser
