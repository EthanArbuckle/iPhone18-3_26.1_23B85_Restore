@interface BTAVRCP_CategoriesFolder
- (BTAVRCP_CategoriesFolder)initWithName:(id)a3 uid:(unint64_t)a4;
- (id)baseQuery;
- (id)folderNameForUid:(unint64_t)a3;
- (id)replyAttributesForUid:(unint64_t)a3 attributeIDs:(id)a4;
- (id)replyItemAtIndex:(unint64_t)a3 attributeIDs:(id)a4;
- (unint64_t)childrenCount;
- (unsigned)createFolderWithUid:(unint64_t)a3 folder:(id *)a4;
- (unsigned)folderTypeForUid:(unint64_t)a3;
- (unsigned)playItemWithUid:(unint64_t)a3;
- (void)dealloc;
- (void)refreshActiveCategories;
@end

@implementation BTAVRCP_CategoriesFolder

- (BTAVRCP_CategoriesFolder)initWithName:(id)a3 uid:(unint64_t)a4
{
  v9.receiver = self;
  v9.super_class = BTAVRCP_CategoriesFolder;
  v4 = [(BTAVRCP_VFSFolder *)&v9 initWithName:a3 uid:a4];
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
          v7 = [v6 isEnabled];
          break;
        case 4:
          v6 = +[MPMediaLibrary defaultMediaLibrary];
          v7 = [v6 hasPodcasts];
          break;
        case 5:
          v4 = +[MPMediaLibrary defaultMediaLibrary];
          v5 = [v4 hasAudiobooks];

          if ((v5 & 1) == 0)
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
      v8 = v7;

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
      v7 = [v6 hasPlaylists];
      goto LABEL_13;
    }

    v10 = +[MPMediaLibrary defaultMediaLibrary];
    v11 = [v10 hasMedia];

    if (v11)
    {
      goto LABEL_14;
    }
  }

LABEL_19:
  [(BTAVRCP_CategoriesFolder *)self setActiveCategories:v12];
}

- (id)folderNameForUid:(unint64_t)a3
{
  v4 = +[NSBundle mobileBluetoothBundle];
  v5 = v4;
  v6 = 0;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v7 = @"MY_MUSIC";
      v8 = @"My Music";
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_13;
      }

      v7 = @"PLAYLISTS";
      v8 = @"Playlists";
    }
  }

  else
  {
    switch(a3)
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

- (unsigned)folderTypeForUid:(unint64_t)a3
{
  v3 = 0x20205050000uLL >> (8 * a3);
  if (a3 >= 6)
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
  v2 = [(BTAVRCP_CategoriesFolder *)self activeCategories];
  v3 = [v2 count];

  return v3;
}

- (unsigned)createFolderWithUid:(unint64_t)a3 folder:(id *)a4
{
  v7 = [(BTAVRCP_CategoriesFolder *)self activeCategories];
  v8 = [NSNumber numberWithUnsignedLongLong:a3];
  v9 = [v7 containsObject:v8];

  if (!v9)
  {
    return 9;
  }

  if (a3 - 1 <= 4)
  {
    v10 = objc_alloc(*(&off_100018AE8)[a3 - 1]);
    v11 = [(BTAVRCP_CategoriesFolder *)self folderNameForUid:a3];
    *a4 = [v10 initWithName:v11 uid:a3];
  }

  return 4;
}

- (id)replyItemAtIndex:(unint64_t)a3 attributeIDs:(id)a4
{
  v6 = [(BTAVRCP_CategoriesFolder *)self activeCategories:a3];
  v7 = [v6 count];

  if (v7 <= a3)
  {
    v14 = 0;
  }

  else
  {
    v8 = [(BTAVRCP_CategoriesFolder *)self activeCategories];
    v9 = [v8 objectAtIndexedSubscript:a3];
    v10 = [v9 unsignedLongLongValue];

    v11 = [(BTAVRCP_CategoriesFolder *)self folderTypeForUid:v10];
    v12 = [NSNumber numberWithUnsignedLongLong:v10];
    v13 = [(BTAVRCP_CategoriesFolder *)self folderNameForUid:v10];
    v14 = [(BTAVRCP_VFSFolder *)self replyFolderWithType:v11 uid:v12 name:v13];
  }

  return v14;
}

- (id)replyAttributesForUid:(unint64_t)a3 attributeIDs:(id)a4
{
  v5 = [(BTAVRCP_CategoriesFolder *)self activeCategories:a3];
  v6 = [NSNumber numberWithUnsignedLongLong:a3];
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

- (unsigned)playItemWithUid:(unint64_t)a3
{
  v4 = [(BTAVRCP_CategoriesFolder *)self activeCategories];
  v5 = [NSNumber numberWithUnsignedLongLong:a3];
  v6 = [v4 containsObject:v5];

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