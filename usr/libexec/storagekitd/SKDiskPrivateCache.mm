@interface SKDiskPrivateCache
- (SKDiskPrivateCache)init;
- (id)copyHumanIOContentWithMediaDict:(id)dict isWholeDisk:(BOOL)disk;
@end

@implementation SKDiskPrivateCache

- (SKDiskPrivateCache)init
{
  v3.receiver = self;
  v3.super_class = SKDiskPrivateCache;
  result = [(SKDiskPrivateCache *)&v3 init];
  if (result)
  {
    result->_schemeID = 512;
  }

  return result;
}

- (id)copyHumanIOContentWithMediaDict:(id)dict isWholeDisk:(BOOL)disk
{
  diskCopy = disk;
  v6 = [dict objectForKeyedSubscript:@"Content"];
  [(SKDiskPrivateCache *)self setRawIOContent:v6];

  rawIOContent = [(SKDiskPrivateCache *)self rawIOContent];

  if (!rawIOContent)
  {
    return 0;
  }

  if (diskCopy)
  {
    rawIOContent2 = [(SKDiskPrivateCache *)self rawIOContent];
  }

  else
  {
    v10 = [SKIOMedia alloc];
    wholeDADisk = [(SKDiskPrivateCache *)self wholeDADisk];
    v12 = [(SKIOMedia *)v10 initWithDADisk:wholeDADisk];

    rawIOContent2 = [(SKIOObject *)v12 copyPropertyWithClass:objc_opt_class() key:@"Content"];
  }

  if (sub_1000101BC(rawIOContent2))
  {
    v13 = rawIOContent2;
    if ([v13 isEqualToString:@"Apple_partition_scheme"])
    {
      v14 = 1;
    }

    else if ([v13 isEqualToString:@"FDisk_partition_scheme"])
    {
      v14 = 8;
    }

    else if ([v13 isEqualToString:@"GUID_partition_scheme"])
    {
      v14 = 16;
    }

    else
    {
      v14 = 512;
    }
  }

  else
  {
    v14 = 512;
  }

  [(SKDiskPrivateCache *)self setSchemeID:v14];
  if ([(SKDiskPrivateCache *)self schemeID]== 512)
  {
    if (diskCopy)
    {
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v17 = v16;
        v18 = word_10003F440[v15];
        rawIOContent3 = [(SKDiskPrivateCache *)self rawIOContent];
        v16 = MKTypeToHuman();

        if (v16)
        {
          rawIOContent4 = [(SKDiskPrivateCache *)self rawIOContent];
          v21 = [v16 isEqualToString:rawIOContent4];

          if (!v21)
          {
            break;
          }
        }

        v15 += 2;
        if (v15 == 8)
        {
          if (v16)
          {
            break;
          }

          goto LABEL_28;
        }
      }

LABEL_25:
      rawIOContent5 = [(SKDiskPrivateCache *)self rawIOContent];
      v24 = [v16 isEqualToString:rawIOContent5];

      if (!v24)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    v16 = 0;
  }

  else
  {
    [(SKDiskPrivateCache *)self schemeID];
    rawIOContent6 = [(SKDiskPrivateCache *)self rawIOContent];
    v16 = MKTypeToHuman();

    if (v16)
    {
      goto LABEL_25;
    }
  }

LABEL_28:
  rawIOContent7 = [(SKDiskPrivateCache *)self rawIOContent];
  v26 = [&off_10004BE98 objectForKey:rawIOContent7];

  v16 = v26;
LABEL_29:
  if (sub_1000101BC(v16))
  {
    rawIOContent8 = v16;
  }

  else
  {
    rawIOContent8 = [(SKDiskPrivateCache *)self rawIOContent];
  }

  v9 = rawIOContent8;

  return v9;
}

@end