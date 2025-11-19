@interface MPMediaItem
+ (id)propertiesForUid;
- (id)replyAttributesForIDs:(id)a3;
- (id)replyItemWithAttributeIDs:(id)a3;
- (id)uid;
- (void)setReplyAttributeForID:(unint64_t)a3 inReplyAttributes:(id)a4;
@end

@implementation MPMediaItem

+ (id)propertiesForUid
{
  v4[0] = MPMediaItemPropertyPersistentID;
  v4[1] = MPMediaItemPropertyStoreID;
  v4[2] = MPMediaItemPropertySubscriptionStoreItemID;
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

- (id)uid
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = +[MPMediaItem propertiesForUid];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = [(MPMediaItem *)self valueForProperty:*(*(&v11 + 1) + 8 * v7)];
      if (v8)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v3 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyStoreRadioStationID];
    v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 hash]);
  }

  v9 = v8;

  return v9;
}

- (id)replyItemWithAttributeIDs:(id)a3
{
  v4 = a3;
  v14[0] = &__kCFBooleanFalse;
  v13[0] = @"kIsFolder";
  v13[1] = @"kUid";
  v5 = [(MPMediaItem *)self uid];
  v14[1] = v5;
  v13[2] = @"kName";
  v6 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyTitle];
  v7 = v6;
  v8 = &stru_100019658;
  if (v6)
  {
    v8 = v6;
  }

  v14[2] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];

  if (v4)
  {
    v10 = [v9 mutableCopy];
    v11 = [(MPMediaItem *)self replyAttributesForIDs:v4];
    [v10 setValue:v11 forKey:@"kAttributes"];

    v9 = v10;
  }

  return v9;
}

- (id)replyAttributesForIDs:(id)a3
{
  v4 = a3;
  +[NSMutableDictionary dictionary];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000B4B4;
  v9[3] = &unk_100018AC8;
  v5 = v9[4] = self;
  v10 = v5;
  [v4 enumerateAttributeIDs:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

- (void)setReplyAttributeForID:(unint64_t)a3 inReplyAttributes:(id)a4
{
  v15 = a4;
  if (a3 <= 4)
  {
    if (a3 <= 2)
    {
      if (a3 != 1)
      {
        if (a3 != 2)
        {
          goto LABEL_32;
        }

        v6 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyArtist];
        if (!v6)
        {
          goto LABEL_31;
        }

        v7 = @"kArtist";
        goto LABEL_26;
      }

      v6 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyTitle];
      if (v6)
      {
        v7 = @"kTitle";
        goto LABEL_26;
      }

      goto LABEL_31;
    }

    if (a3 == 3)
    {
      v6 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyAlbumTitle];
      if (v6)
      {
        v7 = @"kAlbum";
        goto LABEL_26;
      }

      goto LABEL_31;
    }

    v8 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyAlbumTrackNumber];
    v6 = v8;
    if (!v8 || ![v8 unsignedIntegerValue])
    {
      goto LABEL_31;
    }

    v9 = [v6 stringValue];
    v10 = @"kTrackNumber";
    goto LABEL_29;
  }

  if (a3 > 6)
  {
    if (a3 != 7)
    {
      if (a3 != 8)
      {
        goto LABEL_32;
      }

      v6 = [(MPMediaItem *)self uid];
      if (![v6 unsignedIntegerValue])
      {
        goto LABEL_31;
      }

      v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 unsignedIntegerValue] % 0x989680);
      v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%tu", [v9 unsignedIntegerValue]);
      [v15 setValue:v11 forKey:@"kImageHandle"];

LABEL_30:
      goto LABEL_31;
    }

    v13 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyPlaybackDuration];
    v6 = v13;
    if (!v13)
    {
      goto LABEL_31;
    }

    [v13 doubleValue];
    v9 = [NSString stringWithFormat:@"%lu", (v14 * 1000.0)];
    v10 = @"kPlayingTime";
LABEL_29:
    [v15 setValue:v9 forKey:v10];
    goto LABEL_30;
  }

  if (a3 == 5)
  {
    v12 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyAlbumTrackCount];
    v6 = v12;
    if (!v12 || ![v12 unsignedIntegerValue])
    {
      goto LABEL_31;
    }

    v9 = [v6 stringValue];
    v10 = @"kTrackCount";
    goto LABEL_29;
  }

  v6 = [(MPMediaItem *)self valueForProperty:MPMediaItemPropertyGenre];
  if (v6)
  {
    v7 = @"kGenre";
LABEL_26:
    [v15 setValue:v6 forKey:v7];
  }

LABEL_31:

LABEL_32:
}

@end