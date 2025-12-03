@interface BTAVRCP_MyMusicFolder
- (BTAVRCP_MyMusicFolder)initWithName:(id)name uid:(unint64_t)uid;
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

@implementation BTAVRCP_MyMusicFolder

- (BTAVRCP_MyMusicFolder)initWithName:(id)name uid:(unint64_t)uid
{
  v8.receiver = self;
  v8.super_class = BTAVRCP_MyMusicFolder;
  v4 = [(BTAVRCP_VFSFolder *)&v8 initWithName:name uid:uid];
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"refreshActiveCategories" name:MPMediaLibraryDidChangeNotification object:0];

    v6 = +[MPMediaLibrary defaultMediaLibrary];
    [v6 beginGeneratingLibraryChangeNotifications];

    [(BTAVRCP_MyMusicFolder *)v4 refreshActiveCategories];
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[MPMediaLibrary defaultMediaLibrary];
  [v3 endGeneratingLibraryChangeNotifications];

  v4.receiver = self;
  v4.super_class = BTAVRCP_MyMusicFolder;
  [(BTAVRCP_MyMusicFolder *)&v4 dealloc];
}

- (void)refreshActiveCategories
{
  v12 = objc_alloc_init(NSMutableArray);
  for (i = 1; i != 7; ++i)
  {
    if (i > 3)
    {
      switch(i)
      {
        case 4:
          v4 = +[MPMediaLibrary defaultMediaLibrary];
          hasGenres = [v4 hasGenres];
          break;
        case 5:
          v4 = +[MPMediaLibrary defaultMediaLibrary];
          hasGenres = [v4 hasComposers];
          break;
        case 6:
          v6 = +[MPMediaLibrary defaultMediaLibrary];
          hasCompilations = [v6 hasCompilations];

          if ((hasCompilations & 1) == 0)
          {
            goto LABEL_20;
          }

LABEL_18:
          v11 = [NSNumber numberWithUnsignedLongLong:i];
          [v12 addObject:v11];

          continue;
        default:
          continue;
      }

LABEL_17:
      v10 = hasGenres;

      if ((v10 & 1) == 0)
      {
        continue;
      }

      goto LABEL_18;
    }

    if (i != 1)
    {
      if (i == 2)
      {
        v4 = +[MPMediaLibrary defaultMediaLibrary];
        hasGenres = [v4 hasAlbums];
      }

      else
      {
        if (i != 3)
        {
          continue;
        }

        v4 = +[MPMediaLibrary defaultMediaLibrary];
        hasGenres = [v4 hasSongs];
      }

      goto LABEL_17;
    }

    v8 = +[MPMediaLibrary defaultMediaLibrary];
    hasArtists = [v8 hasArtists];

    if (hasArtists)
    {
      goto LABEL_18;
    }
  }

LABEL_20:
  [(BTAVRCP_MyMusicFolder *)self setActiveCategories:v12];
}

- (id)folderNameForUid:(unint64_t)uid
{
  v4 = +[NSBundle mobileBluetoothBundle];
  v5 = v4;
  v6 = 0;
  if (uid > 3)
  {
    switch(uid)
    {
      case 4uLL:
        v7 = @"GENRES";
        v8 = @"Genres";
        break;
      case 5uLL:
        v7 = @"COMPOSERS";
        v8 = @"Composers";
        break;
      case 6uLL:
        v7 = @"COMPILATIONS";
        v8 = @"Compilations";
        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    switch(uid)
    {
      case 1uLL:
        v7 = @"ARTISTS";
        v8 = @"Artists";
        break;
      case 2uLL:
        v7 = @"ALBUMS";
        v8 = @"Albums";
        break;
      case 3uLL:
        v7 = @"SONGS";
        v8 = @"Songs";
        break;
      default:
        goto LABEL_15;
    }
  }

  v6 = [v4 localizedStringForKey:v7 value:v8 table:0];
LABEL_15:

  return v6;
}

- (unsigned)folderTypeForUid:(unint64_t)uid
{
  v3 = 0x2030401020300uLL >> (8 * uid);
  if (uid >= 7)
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 7;
}

- (unint64_t)childrenCount
{
  activeCategories = [(BTAVRCP_MyMusicFolder *)self activeCategories];
  v3 = [activeCategories count];

  return v3;
}

- (unsigned)createFolderWithUid:(unint64_t)uid folder:(id *)folder
{
  activeCategories = [(BTAVRCP_MyMusicFolder *)self activeCategories];
  v8 = [NSNumber numberWithUnsignedLongLong:uid];
  v9 = [activeCategories containsObject:v8];

  if (!v9)
  {
    return 9;
  }

  result = 4;
  if (uid <= 3)
  {
    switch(uid)
    {
      case 1uLL:
        v19 = [BTAVRCP_ArtistsFolder alloc];
        v12 = [(BTAVRCP_MyMusicFolder *)self folderNameForUid:1];
        v13 = v19;
        v14 = v12;
        v15 = 1;
        break;
      case 2uLL:
        v21 = [BTAVRCP_AlbumsFolder alloc];
        v12 = [(BTAVRCP_MyMusicFolder *)self folderNameForUid:2];
        v13 = v21;
        v14 = v12;
        v15 = 2;
        break;
      case 3uLL:
        v11 = [BTAVRCP_SongsFolder alloc];
        v12 = [(BTAVRCP_MyMusicFolder *)self folderNameForUid:3];
        v13 = v11;
        v14 = v12;
        v15 = 3;
        break;
      default:
        return result;
    }

    goto LABEL_16;
  }

  if (uid == 4)
  {
    v20 = [BTAVRCP_GenresFolder alloc];
    v12 = [(BTAVRCP_MyMusicFolder *)self folderNameForUid:4];
    v13 = v20;
    v14 = v12;
    v15 = 4;
LABEL_16:
    *folder = [v13 initWithName:v14 uid:v15];
    goto LABEL_17;
  }

  if (uid == 5)
  {
    v22 = [BTAVRCP_ComposersFolder alloc];
    v12 = [(BTAVRCP_MyMusicFolder *)self folderNameForUid:5];
    v13 = v22;
    v14 = v12;
    v15 = 5;
    goto LABEL_16;
  }

  if (uid != 6)
  {
    return result;
  }

  v16 = [BTAVRCP_AlbumsFolder alloc];
  v17 = [(BTAVRCP_MyMusicFolder *)self folderNameForUid:6];
  *folder = [(BTAVRCP_AlbumsFolder *)v16 initWithName:v17 uid:6];

  v18 = *folder;
  v12 = [MPMediaPropertyPredicate predicateWithValue:&__kCFBooleanTrue forProperty:MPMediaItemPropertyIsCompilation];
  [v18 storePredicate:v12];
LABEL_17:

  return 4;
}

- (id)replyItemAtIndex:(unint64_t)index attributeIDs:(id)ds
{
  v6 = [(BTAVRCP_MyMusicFolder *)self activeCategories:index];
  v7 = [v6 count];

  if (v7 <= index)
  {
    v14 = 0;
  }

  else
  {
    activeCategories = [(BTAVRCP_MyMusicFolder *)self activeCategories];
    v9 = [activeCategories objectAtIndexedSubscript:index];
    unsignedLongLongValue = [v9 unsignedLongLongValue];

    v11 = [(BTAVRCP_MyMusicFolder *)self folderTypeForUid:unsignedLongLongValue];
    v12 = [NSNumber numberWithUnsignedLongLong:unsignedLongLongValue];
    v13 = [(BTAVRCP_MyMusicFolder *)self folderNameForUid:unsignedLongLongValue];
    v14 = [(BTAVRCP_VFSFolder *)self replyFolderWithType:v11 uid:v12 name:v13];
  }

  return v14;
}

- (id)replyAttributesForUid:(unint64_t)uid attributeIDs:(id)ds
{
  v5 = [(BTAVRCP_MyMusicFolder *)self activeCategories:uid];
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
  activeCategories = [(BTAVRCP_MyMusicFolder *)self activeCategories];
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