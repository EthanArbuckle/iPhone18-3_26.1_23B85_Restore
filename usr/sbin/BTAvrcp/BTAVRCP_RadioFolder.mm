@interface BTAVRCP_RadioFolder
- (BTAVRCP_RadioFolder)initWithName:(id)name uid:(unint64_t)uid;
- (id)replyAttributesForUid:(unint64_t)uid attributeIDs:(id)ds;
- (id)replyItemAtIndex:(unint64_t)index attributeIDs:(id)ds;
- (id)stationWithUid:(unint64_t)uid;
- (unint64_t)childrenCount;
- (unsigned)createFolderWithUid:(unint64_t)uid folder:(id *)folder;
- (unsigned)playItemWithUid:(unint64_t)uid;
- (void)fetchRecentStations:(id)stations;
- (void)refreshRecentStations;
@end

@implementation BTAVRCP_RadioFolder

- (BTAVRCP_RadioFolder)initWithName:(id)name uid:(unint64_t)uid
{
  v16.receiver = self;
  v16.super_class = BTAVRCP_RadioFolder;
  v4 = [(BTAVRCP_VFSFolder *)&v16 initWithName:name uid:uid];
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"refreshRecentStations" name:MPRadioLibraryStationsDidChangeNotification object:0];

    v6 = objc_alloc_init(BTAVRCP_Syncifier);
    [(BTAVRCP_Syncifier *)v6 createSwitcher];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_10000A4B4;
    v7 = v13 = &unk_100018B80;
    v15 = v7;
    v14 = v4;
    [(BTAVRCP_RadioFolder *)v14 fetchRecentStations:&v10];
    if (![(BTAVRCP_Syncifier *)v6 wait:3.0, v10, v11, v12, v13])
    {
      v8 = qword_10001EFD0;
      if (os_log_type_enabled(qword_10001EFD0, OS_LOG_TYPE_ERROR))
      {
        sub_10000EA68(v8);
      }
    }
  }

  return v4;
}

- (void)refreshRecentStations
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000A658;
  v2[3] = &unk_100018BA8;
  v2[4] = self;
  [(BTAVRCP_RadioFolder *)self fetchRecentStations:v2];
}

- (void)fetchRecentStations:(id)stations
{
  stationsCopy = stations;
  v4 = +[MPRadioLibrary defaultRadioLibrary];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000A7A8;
  v6[3] = &unk_100018BD0;
  v7 = stationsCopy;
  v5 = stationsCopy;
  [v4 getRecentStationGroupsWithCompletionHandler:v6];
}

- (id)stationWithUid:(unint64_t)uid
{
  if (uid && (-[BTAVRCP_RadioFolder recentStations](self, "recentStations"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6 >= uid))
  {
    recentStations = [(BTAVRCP_RadioFolder *)self recentStations];
    v7 = [recentStations objectAtIndexedSubscript:uid - 1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)childrenCount
{
  recentStations = [(BTAVRCP_RadioFolder *)self recentStations];
  v3 = [recentStations count];

  return v3;
}

- (unsigned)createFolderWithUid:(unint64_t)uid folder:(id *)folder
{
  folder = [(BTAVRCP_RadioFolder *)self stationWithUid:uid, folder];

  if (folder)
  {
    return 8;
  }

  else
  {
    return 9;
  }
}

- (id)replyItemAtIndex:(unint64_t)index attributeIDs:(id)ds
{
  dsCopy = ds;
  recentStations = [(BTAVRCP_RadioFolder *)self recentStations];
  v8 = [recentStations count];

  if (v8 <= index)
  {
    v13 = 0;
  }

  else
  {
    recentStations2 = [(BTAVRCP_RadioFolder *)self recentStations];
    v10 = [recentStations2 objectAtIndexedSubscript:index];

    if ([dsCopy containsObject:&off_100019BE8])
    {
      v17 = @"kTitle";
      localizedName = [v10 localizedName];
      v18 = localizedName;
      v12 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    }

    else
    {
      v12 = 0;
    }

    v14 = [NSNumber numberWithUnsignedInteger:index + 1];
    localizedName2 = [v10 localizedName];
    v13 = [(BTAVRCP_VFSFolder *)self replyItemWithUid:v14 name:localizedName2 attributes:v12];
  }

  return v13;
}

- (id)replyAttributesForUid:(unint64_t)uid attributeIDs:(id)ds
{
  dsCopy = ds;
  v7 = [(BTAVRCP_RadioFolder *)self stationWithUid:uid];
  if (v7)
  {
    v8 = +[NSMutableDictionary dictionary];
    if ([dsCopy containsObject:&off_100019BE8])
    {
      localizedName = [v7 localizedName];
      [v8 setValue:localizedName forKey:@"kTitle"];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unsigned)playItemWithUid:(unint64_t)uid
{
  v3 = [(BTAVRCP_RadioFolder *)self stationWithUid:uid];
  if (v3)
  {
    v4 = +[MPMusicPlayerController systemMusicPlayer];
    [v4 setQueueWithRadioStation:v3];
    [v4 play];

    v5 = 4;
  }

  else
  {
    v5 = 9;
  }

  return v5;
}

@end