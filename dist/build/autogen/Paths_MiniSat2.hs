module Paths_MiniSat2 (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName
  ) where

import Data.Version (Version(..))
import System.Environment (getEnv)

version :: Version
version = Version {versionBranch = [0,0,3], versionTags = []}

bindir, libdir, datadir, libexecdir :: FilePath

bindir     = "/home/ian/.cabal/bin"
libdir     = "/home/ian/.cabal/lib/MiniSat2-0.0.3/ghc-7.2.2"
datadir    = "/home/ian/.cabal/share/MiniSat2-0.0.3"
libexecdir = "/home/ian/.cabal/libexec"

getBinDir, getLibDir, getDataDir, getLibexecDir :: IO FilePath
getBinDir = catch (getEnv "MiniSat2_bindir") (\_ -> return bindir)
getLibDir = catch (getEnv "MiniSat2_libdir") (\_ -> return libdir)
getDataDir = catch (getEnv "MiniSat2_datadir") (\_ -> return datadir)
getLibexecDir = catch (getEnv "MiniSat2_libexecdir") (\_ -> return libexecdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
