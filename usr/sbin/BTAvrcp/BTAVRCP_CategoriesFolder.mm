@interface BTAVRCP_CategoriesFolder
- (BTAVRCP_CategoriesFolder)initWithName:(id)name uid:(unint64_t)uid;
- (id)baseQuery;
- (id)folderNameForUid:(unint64_t)uid;
- (id)replyAttributesForUid:(unint64_t)uid attributeIDs:(id)ds;
- (id)replyItemAtIndex:(unint64_t)index attributeIDs:(id)ds;
- (unint64_t)childrenCount;
- (unsigned)createFolderWithUid:(unint64_t)uid folder:(id *)folder;
- (unsigned)folderTypeForUid:(unint64_t)uid;
- (unsigned)playItemWithUid:(unint64_t)uid;
- (void)dealloc;
- (void)refreshActiveCategories;
@end

@implementation BTAVRCP_CategoriesFolder

- (BTAVRCP_CategoriesFolder)initWithName:(id)name uid:(unint64_t)uid
{
  v9.receiver = self;
  v9.super_class = BTAVRCP_CategoriesFolder;
  v4 = [(BTAVRCP_VFSFolder *)&v9 initWithName:name uid:uid];
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"refreshActiveCategories" name:MPMediaLibraryDidChangeNotification object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v4 selector:"refreshActiveCategories" name:MPRadioLibraryStationsDidChangeNotification object:0];

    v7 = +[MPMediaLibrary defaultMediaLibrary];
    [v7 beginGeneratingLibraryChangeNotifications];

    [(BTAVRCP_CategoriesFolder *)v4 refreshActiveCategories];
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[MPMediaLibrary defaultMediaLibrary];
  [v3 endGeneratingLibraryChangeNotifications];

  v4.receiver = self;
  v4.super_class = BTAVRCP_CategoriesFolder;
  [(BTAVRCP_CategoriesFolder *)&v4 dealloc];
}

- (void)refreshActiveCategories
{
  v12 = objc_alloc_init(NSMutableArray);
  for (i = 1; i != 6; ++i)
  {
    if (i > 2)
    {
      switch(i)
      {
        case 3:
          v6 = +[MPRadioLibrary defaultRadioLibrary];
          isEnabled = [v6 isEnabled];
          break;
        case 4:
          v6 = +[MPMediaLibrary defaultMediaLibrary];
          isEnabled = [v6 hasPodcasts];
          break;
        case 5:
          v4 = +[MPMediaLibrary defaultMediaLibrary];
          hasAudiobooks = [v4 hasAudiobooks];

          if ((hasAudiobooks & 1) == 0)
          {
            goto LABEL_19;
          }

LABEL_14:
          v9 = [NSNumber numberWithUnsignedLongLong:i];
          [v12 addObject:v9];

          continue;
        default:
          continue;
      }

LABEL_13:
      v8 = isEnabled;

      if ((v8 & 1) == 0)
      {
        continue;
      }

      goto LABEL_14;
    }

    if (i != 1)
    {
      if (i != 2)
      {
        continue;
      }

      v6 = +[MPMediaLibrary defaultMediaLibrary];
      isEnabled = [v6 hasPlaylists];
      goto LABEL_13;
    }

    v10 = +[MPMediaLibrary defaultMediaLibrary];
    hasMedia = [v10 hasMedia];

    if (hasMedia)
    {
      goto LABEL_14;
    }
  }

LABEL_19:
  [(BTAVRCP_CategoriesFolder *)self setActiveCategories:v12];
}

- (id)folderNameForUid:(unint64_t)uid
{
  v4 = +[NSBundle mobileBluetoothBundle];
  v5 = v4;
  v6 = 0;
  if (uid <= 2)
  {
    if (uid == 1)
    {
      v7 = @"MY_MUSIC";
      v8 = @"My Music";
    }

    else
    {
      if (uid != 2)
      {
        goto LABEL_13;
      }

      v7 = @"PLAYLISTS";
      v8 = @"Playlists";
    }
  }

  else
  {
    switch(uid)
    {
      case 3uLL:
        v7 = @"RADIO";
        v8 = @"Radio";
        break;
      case 4uLL:
        v7 = @"PODCASTS";
        v8 = @"Podcasts";
        break;
      case 5uLL:
        v7 = @"AUDIOBOOKS";
        v8 = @"Audiobooks";
        break;
      default:
        goto LABEL_13;
    }
  }

  v6 = [v4 localizedStringForKey:v7 value:v8 table:0];
LABEL_13:

  return v6;
}

- (unsigned)folderTypeForUid:(unint64_t)uid
{
  v3 = 0x20205050000uLL >> (8 * uid);
  if (uid >= 6)
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 7;
}

- (id)baseQuery
{
  v2 = objc_alloc_init(MPMediaQuery);

  return v2;
}

- (unint64_t)childrenCount
{
  activeCategories = [(BTAVRCP_CategoriesFolder *)self activeCategories];
  v3 = [activeCategories count];

  return v3;
}

- (unsigned)createFolderWithUid:(unint64_t)uid folder:(id *)folder
{
  activeCategories = [(BTAVRCP_CategoriesFolder *)self activeCategories];
  v8 = [NSNumber numberWithUnsignedLongLong:uid];
  v9 = [activeCategories containsObject:v8];

  if (!v9)
  {
    return 9;
  }

  if (uid - 1 <= 4)
  {
    v10 = objc_alloc(*(&off_100018AE8)[uid - 1]);
    v11 = [(BTAVRCP_CategoriesFolder *)self folderNameForUid:uid];
    *folder = [v10 initWithName:v11 uid:uid];
  }

  return 4;
}

- (id)replyItemAtIndex:(unint64_t)index attributeIDs:(id)ds
{
  v6 = [(BTAVRCP_CategoriesFolder *)self activeCategories:index];
  v7 = [v6 count];

  if (v7 <= index)
  {
    v14 = 0;
  }

  else
  {
    activeCategories = [(BTAVRCP_CategoriesFolder *)self activeCategories];
    v9 = [activeCategories objectAtIndexedSubscript:index];
    unsignedLongLongValue = [v9 unsignedLongLongValue];

    v11 = [(BTAVRCP_CategoriesFolder *)self folderTypeForUid:unsignedLongLongValue];
    v12 = [NSNumber numberWithUnsignedLongLong:unsignedLongLongValue];
    v13 = [(BTAVRCP_CategoriesFolder *)self folderNameForUid:unsignedLongLongValue];
    v14 = [(BTAVRCP_VFSFolder *)self replyFolderWithType:v11 uid:v12 name:v13];
  }

  return v14;
}

- (id)replyAttributesForUid:(unint64_t)uid attributeIDs:(id)ds
{
  v5 = [(BTAVRCP_CategoriesFolder *)self activeCategories:uid];
  v6 = [NSNumber numberWithUnsignedLongLong:uid];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    return &__NSDictionary0__struct;
  }

  else
  {
    return 0;
  }
}

- (unsigned)playItemWithUid:(unint64_t)uid
{
  activeCategories = [(BTAVRCP_CategoriesFolder *)self activeCategories];
  v5 = [NSNumber numberWithUnsignedLongLong:uid];
  v6 = [activeCategories containsObject:v5];

  if (v6)
  {
    return 12;
  }

  else
  {
    return 9;
  }
}

@end