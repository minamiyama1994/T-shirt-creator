module Handler.GetLangs where

import Import

getGetLangsR :: Handler Value
getGetLangsR = ( runDB $ selectList [ ] [ ] ) >>= ( \ v -> return $ object [ "langs" .= v ] ) . map ( \ ( Entity _ v ) -> languageLang v )
