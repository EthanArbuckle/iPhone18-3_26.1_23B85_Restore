@interface BTAVRCP_RadioFolder
- (BTAVRCP_RadioFolder)initWithName:(id)a3 uid:(unint64_t)a4;
- (id)replyAttributesForUid:(unint64_t)a3 attributeIDs:(id)a4;
- (id)replyItemAtIndex:(unint64_t)a3 attributeIDs:(id)a4;
- (id)stationWithUid:(unint64_t)a3;
- (unint64_t)childrenCount;
- (unsigned)createFolderWithUid:(unint64_t)a3 folder:(id *)a4;
- (unsigned)playItemWithUid:(unint64_t)a3;
- (void)fetchRecentStations:(id)a3;
- (void)refreshRecentStations;
@end

@implementation BTAVRCP_RadioFolder

- (BTAVRCP_RadioFolder)initWithName:(id)a3 uid:(unint64_t)a4
{
  v16.receiver = self;
  v16.super_class = BTAVRCP_RadioFolder;
  v4 = [(BTAVRCP_VFSFolder *)&v16 initWithName:a3 uid:a4];
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

- (void)fetchRecentStations:(id)a3
{
  v3 = a3;
  v4 = +[MPRadioLibrary defaultRadioLibrary];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000A7A8;
  v6[3] = &unk_100018BD0;
  v7 = v3;
  v5 = v3;
  [v4 getRecentStationGroupsWithCompletionHandler:v6];
}

- (id)stationWithUid:(unint64_t)a3
{
  if (a3 && (-[BTAVRCP_RadioFolder recentStations](self, "recentStations"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6 >= a3))
  {
    v8 = [(BTAVRCP_RadioFolder *)self recentStations];
    v7 = [v8 objectAtIndexedSubscript:a3 - 1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)childrenCount
{
  v2 = [(BTAVRCP_RadioFolder *)self recentStations];
  v3 = [v2 count];

  return v3;
}

- (unsigned)createFolderWithUid:(unint64_t)a3 folder:(id *)a4
{
  v4 = [(BTAVRCP_RadioFolder *)self stationWithUid:a3, a4];

  if (v4)
  {
    return 8;
  }

  else
  {
    return 9;
  }
}

- (id)replyItemAtIndex:(unint64_t)a3 attributeIDs:(id)a4
{
  v6 = a4;
  v7 = [(BTAVRCP_RadioFolder *)self recentStations];
  v8 = [v7 count];

  if (v8 <= a3)
  {
    v13 = 0;
  }

  else
  {
    v9 = [(BTAVRCP_RadioFolder *)self recentStations];
    v10 = [v9 objectAtIndexedSubscript:a3];

    if ([v6 containsObject:&off_100019BE8])
    {
      v17 = @"kTitle";
      v11 = [v10 localizedName];
      v18 = v11;
      v12 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    }

    else
    {
      v12 = 0;
    }

    v14 = [NSNumber numberWithUnsignedInteger:a3 + 1];
    v15 = [v10 localizedName];
    v13 = [(BTAVRCP_VFSFolder *)self replyItemWithUid:v14 name:v15 attributes:v12];
  }

  return v13;
}

- (id)replyAttributesForUid:(unint64_t)a3 attributeIDs:(id)a4
{
  v6 = a4;
  v7 = [(BTAVRCP_RadioFolder *)self stationWithUid:a3];
  if (v7)
  {
    v8 = +[NSMutableDictionary dictionary];
    if ([v6 containsObject:&off_100019BE8])
    {
      v9 = [v7 localizedName];
      [v8 setValue:v9 forKey:@"kTitle"];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unsigned)playItemWithUid:(unint64_t)a3
{
  v3 = [(BTAVRCP_RadioFolder *)self stationWithUid:a3];
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