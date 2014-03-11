module Paths_TS (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch


version :: Version
version = Version {versionBranch = [0,0,0], versionTags = []}
bindir, libdir, datadir, libexecdir :: FilePath

bindir     = "/home/minamiyama1994/web/TS/cabal-dev//bin"
libdir     = "/home/minamiyama1994/web/TS/cabal-dev//lib/TS-0.0.0/ghc-7.6.3"
datadir    = "/home/minamiyama1994/web/TS/cabal-dev//share/TS-0.0.0"
libexecdir = "/home/minamiyama1994/web/TS/cabal-dev//libexec"

getBinDir, getLibDir, getDataDir, getLibexecDir :: IO FilePath
getBinDir = catchIO (getEnv "TS_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "TS_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "TS_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "TS_libexecdir") (\_ -> return libexecdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
