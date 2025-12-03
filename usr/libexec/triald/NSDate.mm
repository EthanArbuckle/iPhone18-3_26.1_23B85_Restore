@interface NSDate
+ (void)load;
- (id)tri_memoryFriendlyDescriptionWithLocale:(id)locale;
@end

@implementation NSDate

+ (void)load
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100000C9C;
  v2[3] = &unk_100004118;
  v2[4] = self;
  v2[5] = a2;
  if (qword_100008078 != -1)
  {
    dispatch_once(&qword_100008078, v2);
  }
}

- (id)tri_memoryFriendlyDescriptionWithLocale:(id)locale
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100000F5C;
  v15[3] = &unk_100004140;
  v15[4] = self;
  localeCopy = locale;
  v16 = localeCopy;
  v17 = a2;
  v6 = objc_retainBlock(v15);
  if (localeCopy)
  {
    goto LABEL_2;
  }

  [(NSDate *)self timeIntervalSince1970];
  v14 = v9;
  memset(&v13, 0, sizeof(v13));
  if (!gmtime_r(&v14, &v13))
  {
    goto LABEL_2;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  *v18 = 0u;
  v19 = 0u;
  if (strftime(v18, 0x100uLL, "%Y-%m-%d %H:%M:%S +0000", &v13))
  {
    v10 = [[NSString alloc] initWithUTF8String:v18];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = (v6[2])(v6);
    }

    v7 = v12;
  }

  else
  {
LABEL_2:
    v7 = (v6[2])(v6);
  }

  return v7;
}

@end