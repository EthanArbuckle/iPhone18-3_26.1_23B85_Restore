@interface FPnfsMemNode
- (FPnfsMemNode)parent;
- (id)getattr;
- (id)lookup:(id)lookup;
- (id)lookupNode:(id)node;
- (id)readDirAtCookie:(unint64_t)cookie withVerifier:(unint64_t)verifier forBytes:(unint64_t)bytes andError:(int *)error;
- (id)readDirAttrAtCookie:(unint64_t)cookie withVerifier:(unint64_t)verifier forBytes:(unint64_t)bytes andError:(int *)error;
- (int)mkDir:(id)dir fhBuffer:(id *)buffer locked:(BOOL)locked;
- (int)renameFrom:(id)from toName:(id)name;
- (int)rmDir:(id)dir;
@end

@implementation FPnfsMemNode

- (id)lookupNode:(id)node
{
  nodeCopy = node;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  entries = selfCopy->entries;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100003B18;
  v11[3] = &unk_100060AF8;
  v7 = nodeCopy;
  v12 = v7;
  v8 = [(NSMutableArray *)entries indexOfObjectPassingTest:v11];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [(NSMutableArray *)selfCopy->entries objectAtIndexedSubscript:v8];
  }

  objc_sync_exit(selfCopy);

  return v9;
}

- (id)lookup:(id)lookup
{
  if (lookup)
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

- (int)mkDir:(id)dir fhBuffer:(id *)buffer locked:(BOOL)locked
{
  dirCopy = dir;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  entries = selfCopy->entries;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100003D60;
  v17[3] = &unk_100060AF8;
  v10 = dirCopy;
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
    v12 = [(NSMutableArray *)selfCopy->entries objectAtIndexedSubscript:v11];
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

  objc_sync_exit(selfCopy);
  v15 = v13;
  *buffer = v13;

  return v14;
}

- (int)renameFrom:(id)from toName:(id)name
{
  fromCopy = from;
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSString *)selfCopy->_name isEqualToString:fromCopy])
  {
    objc_storeStrong(&selfCopy->_name, name);
    v9 = 0;
  }

  else
  {
    v9 = 2;
  }

  objc_sync_exit(selfCopy);

  return v9;
}

- (int)rmDir:(id)dir
{
  dirCopy = dir;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  entries = selfCopy->entries;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000439C;
  v23[3] = &unk_100060AF8;
  v7 = dirCopy;
  v24 = v7;
  v8 = [(NSMutableArray *)entries indexOfObjectPassingTest:v23];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 2;
  }

  else
  {
    v10 = [(NSMutableArray *)selfCopy->entries objectAtIndexedSubscript:v8];
    if ([v10[1] count])
    {
      v9 = 66;
    }

    else
    {
      [(NSMutableArray *)selfCopy->entries removeObjectAtIndex:v8];
      v11 = [(FPnfsMemNode *)selfCopy fs];
      [v11 rmNode:v10];

      v12 = objc_alloc_init(NSDate);
      mtime = selfCopy->_mtime;
      selfCopy->_mtime = v12;

      name = [v10 name];
      selfCopy->size -= ([name length] + 29) & 0xFFFFFFFFFFFFFFF8;

      name2 = [v10 name];
      selfCopy->dirattrSize -= ([name2 length] + 208) & 0xFFFFFFF8;

      v9 = 0;
      ++selfCopy->_verf;
    }
  }

  v16 = [(NSMutableArray *)selfCopy->entries count];
  objc_sync_exit(selfCopy);

  if (!v16)
  {
    parent = [(FPnfsMemNode *)selfCopy parent];
    if (parent)
    {
      v19 = parent;
      parent2 = [(FPnfsMemNode *)selfCopy parent];

      if (parent2 != selfCopy)
      {
        v21 = dispatch_get_global_queue(2, 0);
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_100004404;
        v22[3] = &unk_100060978;
        v22[4] = selfCopy;
        dispatch_async(v21, v22);
      }
    }
  }

  return v9;
}

- (id)readDirAtCookie:(unint64_t)cookie withVerifier:(unint64_t)verifier forBytes:(unint64_t)bytes andError:(int *)error
{
  if (error)
  {
    errorCopy = error;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (verifier && selfCopy->_verf != verifier)
    {
      v12 = 0;
      v18 = -1000;
    }

    else
    {
      if (selfCopy->size >= bytes)
      {
        size = bytes;
      }

      else
      {
        size = selfCopy->size;
      }

      v12 = [[NSMutableData alloc] initWithLength:size];
      mutableBytes = [v12 mutableBytes];
      if (mutableBytes)
      {
        v36 = errorCopy;
        v14 = [(NSMutableArray *)selfCopy->entries count];
        v15 = cookie + 1;
        v35 = v12;
        if (cookie || size < 0x18)
        {
          if (cookie > 1)
          {
            v19 = 0;
            v16 = 0;
LABEL_28:
            if (cookie >= 2)
            {
              v24 = cookie - 2;
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
                v25 = [(NSMutableArray *)selfCopy->entries objectAtIndexedSubscript:v24];

                name = [(FPnfsMemNode *)v25 name];
                v27 = ([name length] + 29) & 0xFFFFFFFFFFFFFFF8;

                if (v27 + v16 > size)
                {
                  break;
                }

                if (!v25->_nascent)
                {
                  name2 = [(FPnfsMemNode *)v25 name];
                  uTF8String = [name2 UTF8String];

                  fileno = [(FPnfsMemNode *)v25 fileno];
                  if (v14 - 1 == v24)
                  {
                    v31 = -1;
                  }

                  else
                  {
                    v31 = v15;
                  }

                  mutableBytes = sub_10000482C(fileno, uTF8String, v31, mutableBytes);
                }

                ++v15;
                ++v24;
                v19 = v25;
              }

              while (v24 < v14);
            }

            v32 = objc_alloc_init(NSDate);
            atime = selfCopy->_atime;
            selfCopy->_atime = v32;

            v18 = 0;
            v12 = v35;
            errorCopy = v36;
            goto LABEL_43;
          }

          v16 = 0;
        }

        else
        {
          mutableBytes = sub_10000482C([(FPnfsMemNode *)selfCopy fileno], ".", 1, mutableBytes);
          v16 = 24;
        }

        if (size >= v16 + 24)
        {
          parent = [(FPnfsMemNode *)selfCopy parent];
          if (parent)
          {
            parent2 = [(FPnfsMemNode *)selfCopy parent];
          }

          else
          {
            parent2 = selfCopy;
          }

          v19 = parent2;

          fileno2 = [(FPnfsMemNode *)v19 fileno];
          if (v14)
          {
            v23 = 2;
          }

          else
          {
            v23 = -1;
          }

          mutableBytes = sub_10000482C(fileno2, "..", v23, mutableBytes);
          v15 = cookie | 2;
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
    objc_sync_exit(selfCopy);

    *errorCopy = v18;
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

- (id)readDirAttrAtCookie:(unint64_t)cookie withVerifier:(unint64_t)verifier forBytes:(unint64_t)bytes andError:(int *)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (verifier && selfCopy->_verf != verifier)
  {
    v12 = 0;
    v34 = -1000;
  }

  else
  {
    if (selfCopy->dirattrSize >= bytes)
    {
      dirattrSize = bytes;
    }

    else
    {
      dirattrSize = selfCopy->dirattrSize;
    }

    v38 = selfCopy;
    v12 = [[NSMutableData alloc] initWithLength:dirattrSize];
    mutableBytes = [v12 mutableBytes];
    if (mutableBytes)
    {
      v14 = [(NSMutableArray *)selfCopy->entries count];
      v15 = v14;
      v36 = v12;
      errorCopy = error;
      v16 = 0;
      v17 = cookie - 2;
      if (cookie < 2)
      {
        v17 = 0;
      }

      if (v17 < v14 && dirattrSize)
      {
        v18 = 0;
        v19 = 0;
        v20 = cookie + 2;
        v21 = cookie - 2;
        if (cookie < 2)
        {
          v21 = 0;
        }

        v22 = v21 + 1;
        do
        {
          v16 = [(NSMutableArray *)selfCopy->entries objectAtIndexedSubscript:v22 - 1];

          name = [v16 name];
          v24 = ([name length] + 208) & 0xFFFFFFF8;

          v25 = v24 + v19;
          if (v25 > dirattrSize)
          {
            break;
          }

          if ((v16[32] & 1) == 0)
          {
            name2 = [v16 name];
            uTF8String = [name2 UTF8String];

            fileno = [v16 fileno];
            if (v15 == v22)
            {
              v29 = -1;
            }

            else
            {
              v29 = v20;
            }

            v30 = strlen(uTF8String);
            *(mutableBytes + 10) = fileno;
            *(mutableBytes + 5) = 0x1C000000002;
            *(mutableBytes + 8) = 0;
            *(mutableBytes + 3) = 323;
            mutableBytes[6] = v30;
            mutableBytes[5] = 200;
            *mutableBytes = v29;
            mutableBytes[4] = (v30 & 0xFFF8) + 208;
            strlcpy(mutableBytes + 200, uTF8String, v30 + 1);
            if (v29 == -1)
            {
              v31 = 0;
              mutableBytes[4] = 0;
            }

            else
            {
              v31 = mutableBytes[4];
            }

            selfCopy = v38;
            mutableBytes = (mutableBytes + v31);
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
      atime = selfCopy->_atime;
      selfCopy->_atime = v32;

      v34 = 0;
      v12 = v36;
      error = errorCopy;
    }

    else
    {
      v34 = 28;
    }
  }

  objc_sync_exit(selfCopy);

  *error = v34;

  return v12;
}

- (id)getattr
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v15 = [(NSMutableArray *)selfCopy->entries count:0]+ 2;
  v16 = getuid();
  v17 = getgid();
  size = selfCopy->size;
  v19 = 1;
  *&v20 = [(FPnfsMemNode *)selfCopy fileno];
  atime = [(FPnfsMemNode *)selfCopy atime];
  v4 = atime;
  if (atime)
  {
    [atime timeIntervalSince1970];
    v21 = vcvtmd_s64_f64(v5);
    v22 = llround((v5 - floor(v5)) * 1000000000.0);
  }

  mtime = [(FPnfsMemNode *)selfCopy mtime];
  v7 = mtime;
  if (mtime)
  {
    [mtime timeIntervalSince1970];
    v23 = vcvtmd_s64_f64(v8);
    v24 = llround((v8 - floor(v8)) * 1000000000.0);
  }

  mtime2 = [(FPnfsMemNode *)selfCopy mtime];
  v10 = mtime2;
  if (mtime2)
  {
    [mtime2 timeIntervalSince1970];
    v25 = vcvtmd_s64_f64(v11);
    v26 = llround((v11 - floor(v11)) * 1000000000.0);
  }

  v12 = [NSData dataWithBytes:&v14 length:184];
  objc_sync_exit(selfCopy);

  return v12;
}

- (FPnfsMemNode)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end