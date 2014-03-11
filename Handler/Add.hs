module Handler.Add where

import Import

getAddR :: String -> Handler Value
getAddR lang = do
    _ <- runDB $ insert $ Language lang
    return $ object [ "insert" .= lang ]
