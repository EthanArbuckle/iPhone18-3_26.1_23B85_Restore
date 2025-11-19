@interface SKDiskPrivateCache
- (SKDiskPrivateCache)init;
- (id)copyHumanIOContentWithMediaDict:(id)a3 isWholeDisk:(BOOL)a4;
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

- (id)copyHumanIOContentWithMediaDict:(id)a3 isWholeDisk:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 objectForKeyedSubscript:@"Content"];
  [(SKDiskPrivateCache *)self setRawIOContent:v6];

  v7 = [(SKDiskPrivateCache *)self rawIOContent];

  if (!v7)
  {
    return 0;
  }

  if (v4)
  {
    v8 = [(SKDiskPrivateCache *)self rawIOContent];
  }

  else
  {
    v10 = [SKIOMedia alloc];
    v11 = [(SKDiskPrivateCache *)self wholeDADisk];
    v12 = [(SKIOMedia *)v10 initWithDADisk:v11];

    v8 = [(SKIOObject *)v12 copyPropertyWithClass:objc_opt_class() key:@"Content"];
  }

  if (sub_1000101BC(v8))
  {
    v13 = v8;
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
    if (v4)
    {
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v17 = v16;
        v18 = word_10003F440[v15];
        v19 = [(SKDiskPrivateCache *)self rawIOContent];
        v16 = MKTypeToHuman();

        if (v16)
        {
          v20 = [(SKDiskPrivateCache *)self rawIOContent];
          v21 = [v16 isEqualToString:v20];

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
      v23 = [(SKDiskPrivateCache *)self rawIOContent];
      v24 = [v16 isEqualToString:v23];

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
    v22 = [(SKDiskPrivateCache *)self rawIOContent];
    v16 = MKTypeToHuman();

    if (v16)
    {
      goto LABEL_25;
    }
  }

LABEL_28:
  v25 = [(SKDiskPrivateCache *)self rawIOContent];
  v26 = [&off_10004BE98 objectForKey:v25];

  v16 = v26;
LABEL_29:
  if (sub_1000101BC(v16))
  {
    v27 = v16;
  }

  else
  {
    v27 = [(SKDiskPrivateCache *)self rawIOContent];
  }

  v9 = v27;

  return v9;
}

@end