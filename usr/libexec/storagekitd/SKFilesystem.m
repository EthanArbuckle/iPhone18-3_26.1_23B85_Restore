@interface SKFilesystem
+ (id)buildFilesystems;
- (BOOL)supportsJournaling;
@end

@implementation SKFilesystem

+ (id)buildFilesystems
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000477C;
  block[3] = &unk_100048C10;
  block[4] = a1;
  if (qword_100059300 != -1)
  {
    dispatch_once(&qword_100059300, block);
  }

  p_cb = &OBJC_PROTOCOL___SKWaitable.cb;
  v4 = qword_100059310;
  objc_sync_enter(v4);
  if (byte_100059318 == 1)
  {
    p_cb = qword_100059308;
    objc_sync_exit(v4);
  }

  else
  {
    v5 = [a1 extensionFilesystemsMapping];
    v6 = [v5 count];
    byte_100059318 = v6 != 0;
    if (v6)
    {
      [qword_100059310 addEntriesFromDictionary:v5];
      v7 = [SKFilesystem collectFilesystemsWithPersonalityMapping:qword_100059310];
      v8 = qword_100059308;
      qword_100059308 = v7;
    }

    else
    {
      p_cb = qword_100059308;
    }

    objc_sync_exit(v4);
    if (v6)
    {
      p_cb = qword_100059308;
    }
  }

  return p_cb;
}

- (BOOL)supportsJournaling
{
  v3 = [(SKFilesystem *)self dmPersonality];
  if ([v3 isEqualToString:@"HFS+"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(SKFilesystem *)self dmPersonality];
    if ([v5 isEqualToString:@"Journaled HFS+"])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(SKFilesystem *)self dmPersonality];
      if ([v6 isEqualToString:@"Case-sensitive HFS+"])
      {
        v4 = 1;
      }

      else
      {
        v7 = [(SKFilesystem *)self dmPersonality];
        v4 = [v7 isEqualToString:@"Case-sensitive Journaled HFS+"];
      }
    }
  }

  return v4;
}

@end