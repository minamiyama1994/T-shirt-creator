module Handler.Show where

import Import
import System.Random
import Data.IORef

seeds :: IO ( IORef [ Int ] )
seeds = getStdGen >>= return . randoms >>= newIORef

getShowR :: Handler Html
getShowR = defaultLayout $(widgetFile "T")
