@interface BTAVRCP_Library
- (BTAVRCP_Library)init;
- (BTAVRCP_LibraryDelegate)delegate;
- (unint64_t)getNowPlayingItemsCount;
- (unint64_t)getSearchItemsCount;
- (unint64_t)getVFSItemsCount;
- (unsigned)getNowPlayingItemWithUid:(unint64_t)uid attributeIDs:(id)ds reply:(id)reply;
- (unsigned)getSearchItemWithUid:(unint64_t)uid attributeIDs:(id)ds reply:(id)reply;
- (unsigned)getVFSItemWithUid:(unint64_t)uid attributeIDs:(id)ds reply:(id)reply;
- (unsigned)playNowPlayingItemWithUid:(unint64_t)uid;
- (unsigned)playSearchItemWithUid:(unint64_t)uid;
- (unsigned)playVFSItemWithUid:(unint64_t)uid;
- (void)changePath:(unint64_t)path replyBlock:(id)block;
- (void)dealloc;
- (void)getCurrentPath:(id)path;
- (void)getNowPlayingItemsFromStart:(unint64_t)start toEnd:(unint64_t)end attributeIDs:(id)ds replyBlock:(id)block;
- (void)getSearchItemsFromStart:(unint64_t)start toEnd:(unint64_t)end attributeIDs:(id)ds replyBlock:(id)block;
- (void)getVFSItemsFromStart:(unint64_t)start toEnd:(unint64_t)end attributeIDs:(id)ds replyBlock:(id)block;
- (void)libraryDidChange;
- (void)search:(id)search replyBlock:(id)block;
@end

@implementation BTAVRCP_Library

- (BTAVRCP_Library)init
{
  v11.receiver = self;
  v11.super_class = BTAVRCP_Library;
  v2 = [(BTAVRCP_Library *)&v11 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"libraryDidChange" name:MPMediaLibraryDidChangeNotification object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"libraryDidChange" name:MPRadioLibraryStationsDidChangeNotification object:0];

    v5 = +[MPMediaLibrary defaultMediaLibrary];
    [v5 setCloudFilteringType:7];

    v6 = +[MPMediaLibrary defaultMediaLibrary];
    [v6 beginGeneratingLibraryChangeNotifications];

    [MPMediaQuery setFilteringDisabled:1];
    v7 = [NSMutableArray alloc];
    v8 = objc_alloc_init(BTAVRCP_RootFolder);
    v9 = [v7 initWithObjects:{v8, 0}];
    [(BTAVRCP_Library *)v2 setCurrentVFSPath:v9];

    [(BTAVRCP_Library *)v2 setCurrentSearchQuery:0];
    [(BTAVRCP_Library *)v2 changePath:1 replyBlock:&stru_100018A28];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[MPMediaLibrary defaultMediaLibrary];
  [v3 endGeneratingLibraryChangeNotifications];

  v4.receiver = self;
  v4.super_class = BTAVRCP_Library;
  [(BTAVRCP_Library *)&v4 dealloc];
}

- (void)libraryDidChange
{
  delegate = [(BTAVRCP_Library *)self delegate];
  [delegate libraryDidChange];
}

- (void)getCurrentPath:(id)path
{
  pathCopy = path;
  v5 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  currentVFSPath = [(BTAVRCP_Library *)self currentVFSPath];
  v7 = [currentVFSPath countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(currentVFSPath);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        currentVFSPath2 = [(BTAVRCP_Library *)self currentVFSPath];
        firstObject = [currentVFSPath2 firstObject];

        if (v11 != firstObject)
        {
          name = [v11 name];
          [v5 addObject:name];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [currentVFSPath countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v8);
  }

  v23[0] = @"kFolders";
  v23[1] = @"kNumItems";
  v24[0] = v5;
  currentVFSPath3 = [(BTAVRCP_Library *)self currentVFSPath];
  lastObject = [currentVFSPath3 lastObject];
  v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [lastObject childrenCount]);
  v24[1] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
  pathCopy[2](pathCopy, 4, v18);
}

- (void)changePath:(unint64_t)path replyBlock:(id)block
{
  blockCopy = block;
  currentVFSPath = [(BTAVRCP_Library *)self currentVFSPath];
  v8 = currentVFSPath;
  if (!path)
  {
    v16 = [currentVFSPath count];

    if (v16 >= 2)
    {
      currentVFSPath2 = [(BTAVRCP_Library *)self currentVFSPath];
      [currentVFSPath2 removeLastObject];
      goto LABEL_6;
    }

    v10 = 9;
LABEL_9:
    blockCopy[2](blockCopy, v10, 0);
    goto LABEL_10;
  }

  lastObject = [currentVFSPath lastObject];
  v21 = 0;
  v10 = [lastObject createFolderWithUid:path folder:&v21];
  currentVFSPath2 = v21;

  if (v10 != 4)
  {

    goto LABEL_9;
  }

  currentVFSPath3 = [(BTAVRCP_Library *)self currentVFSPath];
  lastObject2 = [currentVFSPath3 lastObject];
  predicates = [lastObject2 predicates];
  [currentVFSPath2 storePredicates:predicates];

  currentVFSPath4 = [(BTAVRCP_Library *)self currentVFSPath];
  [currentVFSPath4 addObject:currentVFSPath2];

LABEL_6:
  v22 = @"kNumItems";
  currentVFSPath5 = [(BTAVRCP_Library *)self currentVFSPath];
  lastObject3 = [currentVFSPath5 lastObject];
  v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [lastObject3 childrenCount]);
  v23 = v19;
  v20 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  (blockCopy)[2](blockCopy, 4, v20);

LABEL_10:
}

- (void)getVFSItemsFromStart:(unint64_t)start toEnd:(unint64_t)end attributeIDs:(id)ds replyBlock:(id)block
{
  dsCopy = ds;
  blockCopy = block;
  v12 = +[NSMutableArray array];
  while (start <= end)
  {
    currentVFSPath = [(BTAVRCP_Library *)self currentVFSPath];
    lastObject = [currentVFSPath lastObject];
    v15 = [lastObject replyItemAtIndex:start attributeIDs:dsCopy];

    if (!v15)
    {
      break;
    }

    [v12 addObject:v15];

    ++start;
  }

  if ([v12 count])
  {
    v17 = @"kItems";
    v18 = v12;
    v16 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    blockCopy[2](blockCopy, 4, v16);
  }

  else
  {
    blockCopy[2](blockCopy, 11, 0);
  }
}

- (void)getSearchItemsFromStart:(unint64_t)start toEnd:(unint64_t)end attributeIDs:(id)ds replyBlock:(id)block
{
  dsCopy = ds;
  blockCopy = block;
  v12 = blockCopy;
  if (self->_currentSearchQuery)
  {
    v13 = +[NSMutableArray array];
    while (start <= end)
    {
      v14 = [(MPMediaQuery *)self->_currentSearchQuery itemAtIndex:start];
      if (!v14)
      {
        break;
      }

      v15 = v14;
      v16 = [v14 replyItemWithAttributeIDs:dsCopy];
      [v13 addObject:v16];

      ++start;
    }

    if ([v13 count])
    {
      v18 = @"kItems";
      v19 = v13;
      v17 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      (v12)[2](v12, 4, v17);
    }

    else
    {
      v12[2](v12, 11, 0);
    }
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, 20, 0);
  }
}

- (void)getNowPlayingItemsFromStart:(unint64_t)start toEnd:(unint64_t)end attributeIDs:(id)ds replyBlock:(id)block
{
  dsCopy = ds;
  blockCopy = block;
  v11 = +[NSMutableArray array];
  v12 = +[MPMusicPlayerController systemMusicPlayer];
  numberOfItems = [v12 numberOfItems];
  if (start <= end)
  {
    if (numberOfItems <= start)
    {
      startCopy = start;
    }

    else
    {
      startCopy = numberOfItems;
    }

    v15 = end + 1;
    do
    {
      if (startCopy == start)
      {
        break;
      }

      v16 = [v12 nowPlayingItemAtIndex:start];
      if (!v16)
      {
        break;
      }

      v17 = v16;
      v18 = [v16 replyItemWithAttributeIDs:dsCopy];
      [v11 addObject:v18];

      ++start;
    }

    while (v15 != start);
  }

  if ([v11 count])
  {
    v20 = @"kItems";
    v21 = v11;
    v19 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    blockCopy[2](blockCopy, 4, v19);
  }

  else
  {
    blockCopy[2](blockCopy, 11, 0);
  }
}

- (unsigned)getVFSItemWithUid:(unint64_t)uid attributeIDs:(id)ds reply:(id)reply
{
  replyCopy = reply;
  dsCopy = ds;
  currentVFSPath = [(BTAVRCP_Library *)self currentVFSPath];
  lastObject = [currentVFSPath lastObject];
  v12 = [lastObject replyAttributesForUid:uid attributeIDs:dsCopy];

  if (v12)
  {
    [replyCopy addEntriesFromDictionary:v12];
    v13 = 4;
  }

  else
  {
    v13 = 9;
  }

  return v13;
}

- (unsigned)getSearchItemWithUid:(unint64_t)uid attributeIDs:(id)ds reply:(id)reply
{
  dsCopy = ds;
  replyCopy = reply;
  currentSearchQuery = self->_currentSearchQuery;
  if (currentSearchQuery)
  {
    v11 = [(MPMediaQuery *)currentSearchQuery itemWithUid:uid];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 replyAttributesForIDs:dsCopy];
      [replyCopy addEntriesFromDictionary:v13];

      v14 = 4;
    }

    else
    {
      v14 = 9;
    }
  }

  else
  {
    v14 = 20;
  }

  return v14;
}

- (unsigned)getNowPlayingItemWithUid:(unint64_t)uid attributeIDs:(id)ds reply:(id)reply
{
  dsCopy = ds;
  replyCopy = reply;
  v9 = +[MPMusicPlayerController systemMusicPlayer];
  nowPlayingItem = [v9 nowPlayingItem];
  v11 = nowPlayingItem;
  if (nowPlayingItem && [nowPlayingItem persistentID] == uid)
  {
    indexOfNowPlayingItem = [v9 indexOfNowPlayingItem];
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (indexOfNowPlayingItem == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = indexOfNowPlayingItem + 1;
    }

    numberOfItems = [v9 numberOfItems];
    if (numberOfItems)
    {
      v13 = numberOfItems;
    }
  }

  else
  {

    v16 = objc_alloc_init(MPMediaQuery);
    v11 = [v16 itemWithUid:uid];

    if (!v11)
    {
      v18 = 9;
      goto LABEL_13;
    }

    v14 = 0x7FFFFFFFFFFFFFFFLL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000036FC;
  v20[3] = &unk_100018A50;
  v23 = v14;
  v24 = v13;
  v21 = replyCopy;
  v22 = v11;
  v17 = v11;
  [dsCopy enumerateAttributeIDs:v20];

  v18 = 4;
LABEL_13:

  return v18;
}

- (void)search:(id)search replyBlock:(id)block
{
  blockCopy = block;
  searchCopy = search;
  currentVFSPath = [(BTAVRCP_Library *)self currentVFSPath];
  lastObject = [currentVFSPath lastObject];
  query = [lastObject query];
  v11 = [query copy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = objc_alloc_init(MPMediaQuery);
  }

  v14 = v13;

  v15 = [NSSet setWithObjects:MPMediaItemPropertyTitle, MPMediaItemPropertyAlbumTitle, MPMediaItemPropertyArtist, MPMediaItemPropertyPodcastTitle, 0];
  v16 = [_MPMediaSearchStringPredicate predicateWithSearchString:searchCopy forProperties:v15];

  [(MPMediaQuery *)v14 addFilterPredicate:v16];
  currentSearchQuery = self->_currentSearchQuery;
  self->_currentSearchQuery = v14;
  v18 = v14;

  v22 = @"kNumItems";
  items = [(MPMediaQuery *)v18 items];
  v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [items count]);
  v23 = v20;
  v21 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];

  blockCopy[2](blockCopy, 4, v21);
}

- (unint64_t)getVFSItemsCount
{
  currentVFSPath = [(BTAVRCP_Library *)self currentVFSPath];
  lastObject = [currentVFSPath lastObject];
  childrenCount = [lastObject childrenCount];

  return childrenCount;
}

- (unint64_t)getSearchItemsCount
{
  result = self->_currentSearchQuery;
  if (result)
  {
    items = [result items];
    v4 = [items count];

    return v4;
  }

  return result;
}

- (unint64_t)getNowPlayingItemsCount
{
  v2 = +[MPMusicPlayerController systemMusicPlayer];
  numberOfItems = [v2 numberOfItems];

  return numberOfItems;
}

- (unsigned)playVFSItemWithUid:(unint64_t)uid
{
  currentVFSPath = [(BTAVRCP_Library *)self currentVFSPath];
  lastObject = [currentVFSPath lastObject];
  LOBYTE(uid) = [lastObject playItemWithUid:uid];

  return uid;
}

- (unsigned)playSearchItemWithUid:(unint64_t)uid
{
  currentSearchQuery = self->_currentSearchQuery;
  if (!currentSearchQuery)
  {
    return 20;
  }

  v5 = [(MPMediaQuery *)currentSearchQuery itemWithUid:uid];
  if (v5)
  {
    v6 = +[MPMusicPlayerController systemMusicPlayer];
    [v6 setQueueWithQuery:self->_currentSearchQuery firstItem:v5];
    [v6 play];

    v7 = 4;
  }

  else
  {
    v7 = 9;
  }

  return v7;
}

- (unsigned)playNowPlayingItemWithUid:(unint64_t)uid
{
  v4 = objc_alloc_init(MPMediaQuery);
  v5 = [v4 itemWithUid:uid];
  if (v5)
  {
    v6 = +[MPMusicPlayerController systemMusicPlayer];
    [v6 setNowPlayingItem:v5];
    [v6 play];

    v7 = 4;
  }

  else
  {
    v7 = 9;
  }

  return v7;
}

- (BTAVRCP_LibraryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end