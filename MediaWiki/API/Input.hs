--------------------------------------------------------------------
-- |
-- Module      : MediaWiki.API.Input
-- Description : De-serializing MediaWiki API types
-- Copyright   : (c) Sigbjorn Finne, 2008
-- License     : BSD3
--
-- Maintainer: Sigbjorn Finne <sof@forkIO.com>
-- Stability : provisional
-- Portability: portable
--
-- De-serializing MediaWiki API types
-- 
--------------------------------------------------------------------
module MediaWiki.API.Input where

data QueryResult
 = Query
     { quContinue :: Maybe String
     , quKind     :: QueryKind
     }
     
type PageID = String

data PageProp
 = PageProp
    { pgNamespace :: NamespaceID
    , pgTitle     :: String
    , pgId        :: PageID
    }

-- payload coming back from a 'userinfo' query.
data UserInfoProp
 = UserInfoProp
    { uiBlockInfo   :: Maybe BlockInfo
    , uiGroups      :: [GroupName]
    , uiRights      :: [RightsName]
    , uiHasMessages :: Maybe Bool
    , uiOptions     :: [(OptionName,String)]
    }

data WatchListInfo
 = WatchListInfo
      { wlPageId   :: PageId
      , wlRevId    :: RevisionId
      , wlTitle    :: Maybe String
      , wlUser     :: Maybe String
      , wlIsAnon   :: Maybe Bool
      , wlIsNew    :: Maybe Bool
      , wlIsMinor  :: Maybe Bool
      , wlIsPatrolled :: Maybe Bool
      , wlTimestamp    :: Maybe String
      , wlNewLength    :: Maybe (Integer,Integer)
      , wlComment      :: Maybe Bool
      }
