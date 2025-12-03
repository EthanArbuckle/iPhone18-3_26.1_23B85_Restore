@interface KCSharingRowMapper
- (KCSharingRowMapper)initWithModel:(Class)model;
- (id)columnNamesWithTableName:(id)name;
- (id)mapResultRow:(sqlite3_stmt *)row startingAt:(unint64_t)at error:(id *)error;
@end

@implementation KCSharingRowMapper

- (id)mapResultRow:(sqlite3_stmt *)row startingAt:(unint64_t)at error:(id *)error
{
  databaseItemClass = [(objc_class *)self->_model databaseItemClass];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v23 = sub_100030E04;
  v24 = &unk_100333BF8;
  selfCopy = self;
  atCopy = at;
  v10 = sub_1000160F4(0, databaseItemClass, dword_10039E2F8, 0);
  v11 = 0;
  v27 = 0;
  do
  {
    v12 = v23(v22, v11, &v27);
    if (v12)
    {
      v13 = v12;
      v14 = sub_10001620C(0, row, v12, v11);
      if (!v14)
      {
        if (v10)
        {
          CFRelease(v10);
        }

        goto LABEL_16;
      }

      v15 = v14;
      v16 = *(v10 + 48);
      v17 = sub_100016428(v13);
      CFDictionarySetValue(v16, v17, v15);
      CFRelease(v15);
    }

    v11 = (v11 + 1);
  }

  while (v27 != 1);
  v18 = sub_100016514(databaseItemClass, 9, 0);
  if (v18)
  {
    if (CFDictionaryGetValue(*(v10 + 48), *v18))
    {
      *(v10 + 40) = 1;
    }

    goto LABEL_10;
  }

  if (v10)
  {
LABEL_10:
    v19 = v10;
    goto LABEL_11;
  }

LABEL_16:
  if (error)
  {
    v21 = 0;
    v19 = 0;
    *error = 0;
  }

  else
  {
    v19 = 0;
  }

LABEL_11:

  return v19;
}

- (id)columnNamesWithTableName:(id)name
{
  nameCopy = name;
  v5 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_boxedAttrs;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if (nameCopy)
        {
          pointerValue = [v11 pointerValue];
          v13 = [NSString stringWithFormat:@"%@.%@", nameCopy, *pointerValue, v17];
        }

        else
        {
          v13 = *[v11 pointerValue];
        }

        v14 = v13;
        [v5 addObject:v13];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [v5 copy];

  return v15;
}

- (KCSharingRowMapper)initWithModel:(Class)model
{
  v19.receiver = self;
  v19.super_class = KCSharingRowMapper;
  v4 = [(KCSharingRowMapper *)&v19 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_model, model);
    requiredAttributeKeys = [(objc_class *)v5->_model requiredAttributeKeys];
    v7 = +[NSMutableArray array];
    databaseItemClass = [(objc_class *)model databaseItemClass];
    v9 = databaseItemClass[2];
    if (v9)
    {
      v10 = databaseItemClass + 3;
      do
      {
        v11 = *(v9 + 8);
        v12 = (v11 - 6) < 4 || v11 == 16;
        if (v12 || (v15 = *(v9 + 16), (v15 & 2) != 0) && ((v15 & 0x101) != 0 || [requiredAttributeKeys containsObject:*v9]))
        {
          v13 = [NSValue valueWithPointer:v9];
          [v7 addObject:v13];
        }

        v14 = *v10++;
        v9 = v14;
      }

      while (v14);
    }

    v16 = [v7 copy];
    boxedAttrs = v5->_boxedAttrs;
    v5->_boxedAttrs = v16;
  }

  return v5;
}

@end