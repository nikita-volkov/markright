module Markright.Prelude
  ( module Exports,

    -- * UTF8
    Data.Text.Encoding.encodeUtf8,
    decodeUtf8,
  )
where

import Acc as Exports (Acc)
import Attoparsec.Data as Exports (LenientParser (..))
import Control.Applicative as Exports hiding (WrappedArrow (..))
import Control.Arrow as Exports hiding (first, second)
import Control.Category as Exports
import Control.Concurrent as Exports
import Control.Exception as Exports
import Control.Monad as Exports hiding (fail, forM, forM_, mapM, mapM_, msum, sequence, sequence_)
import Control.Monad.Fail as Exports
import Control.Monad.Fix as Exports hiding (fix)
import Control.Monad.IO.Class as Exports
import Control.Monad.ST as Exports
import Control.Monad.Trans.Class as Exports
import Control.Monad.Trans.Cont as Exports hiding (callCC, shift)
import Control.Monad.Trans.Except as Exports (Except, ExceptT (ExceptT), catchE, except, mapExcept, mapExceptT, runExcept, runExceptT, throwE, withExcept, withExceptT)
import Control.Monad.Trans.Maybe as Exports
import Control.Monad.Trans.Reader as Exports (Reader, ReaderT (ReaderT), ask, mapReader, mapReaderT, runReader, runReaderT, withReader, withReaderT)
import Control.Monad.Trans.State.Strict as Exports (State, StateT (StateT), evalState, evalStateT, execState, execStateT, mapState, mapStateT, runState, runStateT, withState, withStateT)
import Control.Monad.Trans.Writer.Strict as Exports (Writer, WriterT (..), execWriter, execWriterT, mapWriter, mapWriterT, runWriter)
import Data.Bifunctor as Exports
import Data.Bits as Exports
import Data.Bool as Exports
import Data.ByteString as Exports (ByteString)
import Data.Char as Exports
import Data.Coerce as Exports
import Data.Complex as Exports
import Data.Data as Exports
import Data.Dynamic as Exports
import Data.Either as Exports
import Data.Fixed as Exports
import Data.Foldable as Exports hiding (toList)
import Data.Function as Exports hiding (id, (.))
import Data.Functor as Exports
import Data.Functor.Compose as Exports
import Data.Functor.Identity as Exports
import Data.IORef as Exports
import Data.Int as Exports
import Data.Ix as Exports
import Data.List as Exports hiding (all, and, any, concat, concatMap, elem, filter, find, foldl, foldl', foldl1, foldr, foldr1, isSubsequenceOf, map, mapAccumL, mapAccumR, maximum, maximumBy, minimum, minimumBy, notElem, or, product, singleton, sortOn, sum, uncons)
import Data.List.NonEmpty as Exports (NonEmpty (..))
import Data.Maybe as Exports hiding (catMaybes, mapMaybe)
import Data.Monoid as Exports hiding (Alt)
import Data.Ord as Exports
import Data.Proxy as Exports
import Data.Ratio as Exports
import Data.STRef as Exports
import Data.Semigroup as Exports hiding (First (..), Last (..))
import Data.String as Exports
import Data.Text as Exports (Text)
import Data.Text.Encoding qualified
import Data.Traversable as Exports
import Data.Tuple as Exports
import Data.Unique as Exports
import Data.Vector qualified as BVec
import Data.Vector.Unboxed qualified as UVec
import Data.Version as Exports
import Data.Void as Exports
import Data.Word as Exports
import Debug.Trace as Exports
import Foreign.ForeignPtr as Exports
import Foreign.Ptr as Exports
import Foreign.StablePtr as Exports
import Foreign.Storable as Exports
import GHC.Conc as Exports hiding (orElse, threadWaitRead, threadWaitReadSTM, threadWaitWrite, threadWaitWriteSTM, withMVar)
import GHC.Exts as Exports (IsList (..), groupWith, inline, lazy, sortWith)
import GHC.Generics as Exports (Generic)
import GHC.IO.Exception as Exports
import GHC.OverloadedLabels as Exports
import Language.Haskell.TH.Quote as Exports (QuasiQuoter (..))
import Language.Haskell.TH.Syntax as Exports (Lift, Q)
import Numeric as Exports hiding (showBin)
import System.Environment as Exports
import System.Exit as Exports
import System.IO as Exports (Handle, hClose)
import System.IO.Error as Exports
import System.IO.Unsafe as Exports
import System.Mem as Exports
import System.Mem.StableName as Exports
import System.Timeout as Exports
import Text.ParserCombinators.ReadP as Exports (ReadP, readP_to_S, readS_to_P)
import Text.ParserCombinators.ReadPrec as Exports (ReadPrec, readP_to_Prec, readPrec_to_P, readPrec_to_S, readS_to_Prec)
import Text.Printf as Exports (hPrintf, printf)
import Text.Read as Exports (Read (..), readEither, readMaybe)
import Unsafe.Coerce as Exports
import Prelude as Exports hiding (all, and, any, concat, concatMap, elem, fail, filter, foldl, foldl1, foldr, foldr1, id, map, mapM, mapM_, maximum, minimum, notElem, or, product, sequence, sequence_, sum, (.))

-- * UTF8

decodeUtf8 = Data.Text.Encoding.decodeUtf8'
