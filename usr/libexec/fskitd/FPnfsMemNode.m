@interface FPnfsMemNode
- (FPnfsMemNode)parent;
- (id)getattr;
- (id)lookup:(id)a3;
- (id)lookupNode:(id)a3;
- (id)readDirAtCookie:(unint64_t)a3 withVerifier:(unint64_t)a4 forBytes:(unint64_t)a5 andError:(int *)a6;
- (id)readDirAttrAtCookie:(unint64_t)a3 withVerifier:(unint64_t)a4 forBytes:(unint64_t)a5 andError:(int *)a6;
- (int)mkDir:(id)a3 fhBuffer:(id *)a4 locked:(BOOL)a5;
- (int)renameFrom:(id)a3 toName:(id)a4;
- (int)rmDir:(id)a3;
@end

@implementation FPnfsMemNode

- (id)lookupNode:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  entries = v5->entries;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100003B18;
  v11[3] = &unk_100060AF8;
  v7 = v4;
  v12 = v7;
  v8 = [(NSMutableArray *)entries indexOfObjectPassingTest:v11];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [(NSMutableArray *)v5->entries objectAtIndexedSubscript:v8];
  }

  objc_sync_exit(v5);

  return v9;
}

- (id)lookup:(id)a3
{
  if (a3)
  {
    v3 = [(FPnfsMemNode *)self lookupNode:?];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 fh];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)mkDir:(id)a3 fhBuffer:(id *)a4 locked:(BOOL)a5
{
  v7 = a3;
  v8 = self;
  objc_sync_enter(v8);
  entries = v8->entries;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100003D60;
  v17[3] = &unk_100060AF8;
  v10 = v7;
  v18 = v10;
  v11 = [(NSMutableArray *)entries indexOfObjectPassingTest:v17];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
    v13 = 0;
    v14 = 1;
  }

  else
  {
    v12 = [(NSMutableArray *)v8->entries objectAtIndexedSubscript:v11];
    v13 = [v12 fh];
    if ([v12 nascent])
    {
      [v12 setNascent:0];
      v14 = 0;
    }

    else
    {
      v14 = 17;
    }
  }

  objc_sync_exit(v8);
  v15 = v13;
  *a4 = v13;

  return v14;
}

- (int)renameFrom:(id)a3 toName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  if ([(NSString *)v8->_name isEqualToString:v6])
  {
    objc_storeStrong(&v8->_name, a4);
    v9 = 0;
  }

  else
  {
    v9 = 2;
  }

  objc_sync_exit(v8);

  return v9;
}

- (int)rmDir:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  entries = v5->entries;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000439C;
  v23[3] = &unk_100060AF8;
  v7 = v4;
  v24 = v7;
  v8 = [(NSMutableArray *)entries indexOfObjectPassingTest:v23];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 2;
  }

  else
  {
    v10 = [(NSMutableArray *)v5->entries objectAtIndexedSubscript:v8];
    if ([v10[1] count])
    {
      v9 = 66;
    }

    else
    {
      [(NSMutableArray *)v5->entries removeObjectAtIndex:v8];
      v11 = [(FPnfsMemNode *)v5 fs];
      [v11 rmNode:v10];

      v12 = objc_alloc_init(NSDate);
      mtime = v5->_mtime;
      v5->_mtime = v12;

      v14 = [v10 name];
      v5->size -= ([v14 length] + 29) & 0xFFFFFFFFFFFFFFF8;

      v15 = [v10 name];
      v5->dirattrSize -= ([v15 length] + 208) & 0xFFFFFFF8;

      v9 = 0;
      ++v5->_verf;
    }
  }

  v16 = [(NSMutableArray *)v5->entries count];
  objc_sync_exit(v5);

  if (!v16)
  {
    v18 = [(FPnfsMemNode *)v5 parent];
    if (v18)
    {
      v19 = v18;
      v20 = [(FPnfsMemNode *)v5 parent];

      if (v20 != v5)
      {
        v21 = dispatch_get_global_queue(2, 0);
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_100004404;
        v22[3] = &unk_100060978;
        v22[4] = v5;
        dispatch_async(v21, v22);
      }
    }
  }

  return v9;
}

- (id)readDirAtCookie:(unint64_t)a3 withVerifier:(unint64_t)a4 forBytes:(unint64_t)a5 andError:(int *)a6
{
  if (a6)
  {
    v6 = a6;
    v10 = self;
    objc_sync_enter(v10);
    if (a4 && v10->_verf != a4)
    {
      v12 = 0;
      v18 = -1000;
    }

    else
    {
      if (v10->size >= a5)
      {
        size = a5;
      }

      else
      {
        size = v10->size;
      }

      v12 = [[NSMutableData alloc] initWithLength:size];
      v13 = [v12 mutableBytes];
      if (v13)
      {
        v36 = v6;
        v14 = [(NSMutableArray *)v10->entries count];
        v15 = a3 + 1;
        v35 = v12;
        if (a3 || size < 0x18)
        {
          if (a3 > 1)
          {
            v19 = 0;
            v16 = 0;
LABEL_28:
            if (a3 >= 2)
            {
              v24 = a3 - 2;
            }

            else
            {
              v24 = 0;
            }

            if (v16 >= size || v24 >= v14)
            {
              v25 = v19;
            }

            else
            {
              do
              {
                v25 = [(NSMutableArray *)v10->entries objectAtIndexedSubscript:v24];

                v26 = [(FPnfsMemNode *)v25 name];
                v27 = ([v26 length] + 29) & 0xFFFFFFFFFFFFFFF8;

                if (v27 + v16 > size)
                {
                  break;
                }

                if (!v25->_nascent)
                {
                  v28 = [(FPnfsMemNode *)v25 name];
                  v29 = [v28 UTF8String];

                  v30 = [(FPnfsMemNode *)v25 fileno];
                  if (v14 - 1 == v24)
                  {
                    v31 = -1;
                  }

                  else
                  {
                    v31 = v15;
                  }

                  v13 = sub_10000482C(v30, v29, v31, v13);
                }

                ++v15;
                ++v24;
                v19 = v25;
              }

              while (v24 < v14);
            }

            v32 = objc_alloc_init(NSDate);
            atime = v10->_atime;
            v10->_atime = v32;

            v18 = 0;
            v12 = v35;
            v6 = v36;
            goto LABEL_43;
          }

          v16 = 0;
        }

        else
        {
          v13 = sub_10000482C([(FPnfsMemNode *)v10 fileno], ".", 1, v13);
          v16 = 24;
        }

        if (size >= v16 + 24)
        {
          v20 = [(FPnfsMemNode *)v10 parent];
          if (v20)
          {
            v21 = [(FPnfsMemNode *)v10 parent];
          }

          else
          {
            v21 = v10;
          }

          v19 = v21;

          v22 = [(FPnfsMemNode *)v19 fileno];
          if (v14)
          {
            v23 = 2;
          }

          else
          {
            v23 = -1;
          }

          v13 = sub_10000482C(v22, "..", v23, v13);
          v15 = a3 | 2;
          v16 += 24;
        }

        else
        {
          v19 = 0;
        }

        goto LABEL_28;
      }

      v18 = 28;
    }

LABEL_43:
    objc_sync_exit(v10);

    *v6 = v18;
    goto LABEL_44;
  }

  v17 = livefs_std_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v38 = "[FPnfsMemNode readDirAtCookie:withVerifier:forBytes:andError:]";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: received a NULL error pointer", buf, 0xCu);
  }

  v12 = 0;
LABEL_44:

  return v12;
}

- (id)readDirAttrAtCookie:(unint64_t)a3 withVerifier:(unint64_t)a4 forBytes:(unint64_t)a5 andError:(int *)a6
{
  v10 = self;
  objc_sync_enter(v10);
  if (a4 && v10->_verf != a4)
  {
    v12 = 0;
    v34 = -1000;
  }

  else
  {
    if (v10->dirattrSize >= a5)
    {
      dirattrSize = a5;
    }

    else
    {
      dirattrSize = v10->dirattrSize;
    }

    v38 = v10;
    v12 = [[NSMutableData alloc] initWithLength:dirattrSize];
    v13 = [v12 mutableBytes];
    if (v13)
    {
      v14 = [(NSMutableArray *)v10->entries count];
      v15 = v14;
      v36 = v12;
      v37 = a6;
      v16 = 0;
      v17 = a3 - 2;
      if (a3 < 2)
      {
        v17 = 0;
      }

      if (v17 < v14 && dirattrSize)
      {
        v18 = 0;
        v19 = 0;
        v20 = a3 + 2;
        v21 = a3 - 2;
        if (a3 < 2)
        {
          v21 = 0;
        }

        v22 = v21 + 1;
        do
        {
          v16 = [(NSMutableArray *)v10->entries objectAtIndexedSubscript:v22 - 1];

          v23 = [v16 name];
          v24 = ([v23 length] + 208) & 0xFFFFFFF8;

          v25 = v24 + v19;
          if (v25 > dirattrSize)
          {
            break;
          }

          if ((v16[32] & 1) == 0)
          {
            v26 = [v16 name];
            v27 = [v26 UTF8String];

            v28 = [v16 fileno];
            if (v15 == v22)
            {
              v29 = -1;
            }

            else
            {
              v29 = v20;
            }

            v30 = strlen(v27);
            *(v13 + 10) = v28;
            *(v13 + 5) = 0x1C000000002;
            *(v13 + 8) = 0;
            *(v13 + 3) = 323;
            v13[6] = v30;
            v13[5] = 200;
            *v13 = v29;
            v13[4] = (v30 & 0xFFF8) + 208;
            strlcpy(v13 + 200, v27, v30 + 1);
            if (v29 == -1)
            {
              v31 = 0;
              v13[4] = 0;
            }

            else
            {
              v31 = v13[4];
            }

            v10 = v38;
            v13 = (v13 + v31);
            v19 = v25;
          }

          if (v22 >= v15)
          {
            break;
          }

          ++v20;
          ++v22;
          v18 = v16;
        }

        while (v19 < dirattrSize);
      }

      v32 = objc_alloc_init(NSDate);
      atime = v10->_atime;
      v10->_atime = v32;

      v34 = 0;
      v12 = v36;
      a6 = v37;
    }

    else
    {
      v34 = 28;
    }
  }

  objc_sync_exit(v10);

  *a6 = v34;

  return v12;
}

- (id)getattr
{
  v2 = self;
  objc_sync_enter(v2);
  v15 = [(NSMutableArray *)v2->entries count:0]+ 2;
  v16 = getuid();
  v17 = getgid();
  size = v2->size;
  v19 = 1;
  *&v20 = [(FPnfsMemNode *)v2 fileno];
  v3 = [(FPnfsMemNode *)v2 atime];
  v4 = v3;
  if (v3)
  {
    [v3 timeIntervalSince1970];
    v21 = vcvtmd_s64_f64(v5);
    v22 = llround((v5 - floor(v5)) * 1000000000.0);
  }

  v6 = [(FPnfsMemNode *)v2 mtime];
  v7 = v6;
  if (v6)
  {
    [v6 timeIntervalSince1970];
    v23 = vcvtmd_s64_f64(v8);
    v24 = llround((v8 - floor(v8)) * 1000000000.0);
  }

  v9 = [(FPnfsMemNode *)v2 mtime];
  v10 = v9;
  if (v9)
  {
    [v9 timeIntervalSince1970];
    v25 = vcvtmd_s64_f64(v11);
    v26 = llround((v11 - floor(v11)) * 1000000000.0);
  }

  v12 = [NSData dataWithBytes:&v14 length:184];
  objc_sync_exit(v2);

  return v12;
}

- (FPnfsMemNode)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end