module Main where

import           Test.Framework                          (defaultMain,
                                                          testGroup)
------------------------------------------------------------------------------
import qualified Snap.Internal.Http.Server.Parser.Tests  as Parser
import qualified Snap.Internal.Http.Server.Session.Tests as Session

------------------------------------------------------------------------------
main :: IO ()
main = defaultMain tests
  where
    tests = [ testGroup "Parser" Parser.tests
            , testGroup "Server" Session.tests
            ]