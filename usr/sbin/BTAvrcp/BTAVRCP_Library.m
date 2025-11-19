@interface BTAVRCP_Library
- (BTAVRCP_Library)init;
- (BTAVRCP_LibraryDelegate)delegate;
- (unint64_t)getNowPlayingItemsCount;
- (unint64_t)getSearchItemsCount;
- (unint64_t)getVFSItemsCount;
- (unsigned)getNowPlayingItemWithUid:(unint64_t)a3 attributeIDs:(id)a4 reply:(id)a5;
- (unsigned)getSearchItemWithUid:(unint64_t)a3 attributeIDs:(id)a4 reply:(id)a5;
- (unsigned)getVFSItemWithUid:(unint64_t)a3 attributeIDs:(id)a4 reply:(id)a5;
- (unsigned)playNowPlayingItemWithUid:(unint64_t)a3;
- (unsigned)playSearchItemWithUid:(unint64_t)a3;
- (unsigned)playVFSItemWithUid:(unint64_t)a3;
- (void)changePath:(unint64_t)a3 replyBlock:(id)a4;
- (void)dealloc;
- (void)getCurrentPath:(id)a3;
- (void)getNowPlayingItemsFromStart:(unint64_t)a3 toEnd:(unint64_t)a4 attributeIDs:(id)a5 replyBlock:(id)a6;
- (void)getSearchItemsFromStart:(unint64_t)a3 toEnd:(unint64_t)a4 attributeIDs:(id)a5 replyBlock:(id)a6;
- (void)getVFSItemsFromStart:(unint64_t)a3 toEnd:(unint64_t)a4 attributeIDs:(id)a5 replyBlock:(id)a6;
- (void)libraryDidChange;
- (void)search:(id)a3 replyBlock:(id)a4;
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
  v2 = [(BTAVRCP_Library *)self delegate];
  [v2 libraryDidChange];
}

- (void)getCurrentPath:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(BTAVRCP_Library *)self currentVFSPath];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        v12 = [(BTAVRCP_Library *)self currentVFSPath];
        v13 = [v12 firstObject];

        if (v11 != v13)
        {
          v14 = [v11 name];
          [v5 addObject:v14];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v8);
  }

  v23[0] = @"kFolders";
  v23[1] = @"kNumItems";
  v24[0] = v5;
  v15 = [(BTAVRCP_Library *)self currentVFSPath];
  v16 = [v15 lastObject];
  v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v16 childrenCount]);
  v24[1] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
  v4[2](v4, 4, v18);
}

- (void)changePath:(unint64_t)a3 replyBlock:(id)a4
{
  v6 = a4;
  v7 = [(BTAVRCP_Library *)self currentVFSPath];
  v8 = v7;
  if (!a3)
  {
    v16 = [v7 count];

    if (v16 >= 2)
    {
      v11 = [(BTAVRCP_Library *)self currentVFSPath];
      [v11 removeLastObject];
      goto LABEL_6;
    }

    v10 = 9;
LABEL_9:
    v6[2](v6, v10, 0);
    goto LABEL_10;
  }

  v9 = [v7 lastObject];
  v21 = 0;
  v10 = [v9 createFolderWithUid:a3 folder:&v21];
  v11 = v21;

  if (v10 != 4)
  {

    goto LABEL_9;
  }

  v12 = [(BTAVRCP_Library *)self currentVFSPath];
  v13 = [v12 lastObject];
  v14 = [v13 predicates];
  [v11 storePredicates:v14];

  v15 = [(BTAVRCP_Library *)self currentVFSPath];
  [v15 addObject:v11];

LABEL_6:
  v22 = @"kNumItems";
  v17 = [(BTAVRCP_Library *)self currentVFSPath];
  v18 = [v17 lastObject];
  v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v18 childrenCount]);
  v23 = v19;
  v20 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  (v6)[2](v6, 4, v20);

LABEL_10:
}

- (void)getVFSItemsFromStart:(unint64_t)a3 toEnd:(unint64_t)a4 attributeIDs:(id)a5 replyBlock:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = +[NSMutableArray array];
  while (a3 <= a4)
  {
    v13 = [(BTAVRCP_Library *)self currentVFSPath];
    v14 = [v13 lastObject];
    v15 = [v14 replyItemAtIndex:a3 attributeIDs:v10];

    if (!v15)
    {
      break;
    }

    [v12 addObject:v15];

    ++a3;
  }

  if ([v12 count])
  {
    v17 = @"kItems";
    v18 = v12;
    v16 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v11[2](v11, 4, v16);
  }

  else
  {
    v11[2](v11, 11, 0);
  }
}

- (void)getSearchItemsFromStart:(unint64_t)a3 toEnd:(unint64_t)a4 attributeIDs:(id)a5 replyBlock:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = v11;
  if (self->_currentSearchQuery)
  {
    v13 = +[NSMutableArray array];
    while (a3 <= a4)
    {
      v14 = [(MPMediaQuery *)self->_currentSearchQuery itemAtIndex:a3];
      if (!v14)
      {
        break;
      }

      v15 = v14;
      v16 = [v14 replyItemWithAttributeIDs:v10];
      [v13 addObject:v16];

      ++a3;
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
    (*(v11 + 2))(v11, 20, 0);
  }
}

- (void)getNowPlayingItemsFromStart:(unint64_t)a3 toEnd:(unint64_t)a4 attributeIDs:(id)a5 replyBlock:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = +[NSMutableArray array];
  v12 = +[MPMusicPlayerController systemMusicPlayer];
  v13 = [v12 numberOfItems];
  if (a3 <= a4)
  {
    if (v13 <= a3)
    {
      v14 = a3;
    }

    else
    {
      v14 = v13;
    }

    v15 = a4 + 1;
    do
    {
      if (v14 == a3)
      {
        break;
      }

      v16 = [v12 nowPlayingItemAtIndex:a3];
      if (!v16)
      {
        break;
      }

      v17 = v16;
      v18 = [v16 replyItemWithAttributeIDs:v9];
      [v11 addObject:v18];

      ++a3;
    }

    while (v15 != a3);
  }

  if ([v11 count])
  {
    v20 = @"kItems";
    v21 = v11;
    v19 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v10[2](v10, 4, v19);
  }

  else
  {
    v10[2](v10, 11, 0);
  }
}

- (unsigned)getVFSItemWithUid:(unint64_t)a3 attributeIDs:(id)a4 reply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(BTAVRCP_Library *)self currentVFSPath];
  v11 = [v10 lastObject];
  v12 = [v11 replyAttributesForUid:a3 attributeIDs:v9];

  if (v12)
  {
    [v8 addEntriesFromDictionary:v12];
    v13 = 4;
  }

  else
  {
    v13 = 9;
  }

  return v13;
}

- (unsigned)getSearchItemWithUid:(unint64_t)a3 attributeIDs:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  currentSearchQuery = self->_currentSearchQuery;
  if (currentSearchQuery)
  {
    v11 = [(MPMediaQuery *)currentSearchQuery itemWithUid:a3];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 replyAttributesForIDs:v8];
      [v9 addEntriesFromDictionary:v13];

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

- (unsigned)getNowPlayingItemWithUid:(unint64_t)a3 attributeIDs:(id)a4 reply:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = +[MPMusicPlayerController systemMusicPlayer];
  v10 = [v9 nowPlayingItem];
  v11 = v10;
  if (v10 && [v10 persistentID] == a3)
  {
    v12 = [v9 indexOfNowPlayingItem];
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12 + 1;
    }

    v15 = [v9 numberOfItems];
    if (v15)
    {
      v13 = v15;
    }
  }

  else
  {

    v16 = objc_alloc_init(MPMediaQuery);
    v11 = [v16 itemWithUid:a3];

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
  v21 = v8;
  v22 = v11;
  v17 = v11;
  [v7 enumerateAttributeIDs:v20];

  v18 = 4;
LABEL_13:

  return v18;
}

- (void)search:(id)a3 replyBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BTAVRCP_Library *)self currentVFSPath];
  v9 = [v8 lastObject];
  v10 = [v9 query];
  v11 = [v10 copy];
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
  v16 = [_MPMediaSearchStringPredicate predicateWithSearchString:v7 forProperties:v15];

  [(MPMediaQuery *)v14 addFilterPredicate:v16];
  currentSearchQuery = self->_currentSearchQuery;
  self->_currentSearchQuery = v14;
  v18 = v14;

  v22 = @"kNumItems";
  v19 = [(MPMediaQuery *)v18 items];
  v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v19 count]);
  v23 = v20;
  v21 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];

  v6[2](v6, 4, v21);
}

- (unint64_t)getVFSItemsCount
{
  v2 = [(BTAVRCP_Library *)self currentVFSPath];
  v3 = [v2 lastObject];
  v4 = [v3 childrenCount];

  return v4;
}

- (unint64_t)getSearchItemsCount
{
  result = self->_currentSearchQuery;
  if (result)
  {
    v3 = [result items];
    v4 = [v3 count];

    return v4;
  }

  return result;
}

- (unint64_t)getNowPlayingItemsCount
{
  v2 = +[MPMusicPlayerController systemMusicPlayer];
  v3 = [v2 numberOfItems];

  return v3;
}

- (unsigned)playVFSItemWithUid:(unint64_t)a3
{
  v4 = [(BTAVRCP_Library *)self currentVFSPath];
  v5 = [v4 lastObject];
  LOBYTE(a3) = [v5 playItemWithUid:a3];

  return a3;
}

- (unsigned)playSearchItemWithUid:(unint64_t)a3
{
  currentSearchQuery = self->_currentSearchQuery;
  if (!currentSearchQuery)
  {
    return 20;
  }

  v5 = [(MPMediaQuery *)currentSearchQuery itemWithUid:a3];
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

- (unsigned)playNowPlayingItemWithUid:(unint64_t)a3
{
  v4 = objc_alloc_init(MPMediaQuery);
  v5 = [v4 itemWithUid:a3];
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