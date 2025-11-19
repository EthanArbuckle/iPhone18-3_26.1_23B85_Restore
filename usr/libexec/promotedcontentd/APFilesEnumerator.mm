@interface APFilesEnumerator
- (APFilesEnumerator)initWithObjectsIterator:(id)a3 fileManager:(id)a4 extension:(id)a5;
- (id)nextObject;
@end

@implementation APFilesEnumerator

- (APFilesEnumerator)initWithObjectsIterator:(id)a3 fileManager:(id)a4 extension:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(APFilesEnumerator *)self init];
  if (v11)
  {
    v12 = [v10 copy];
    extension = v11->_extension;
    v11->_extension = v12;

    v14 = [v8 copy];
    objectsIterator = v11->_objectsIterator;
    v11->_objectsIterator = v14;

    objc_storeStrong(&v11->_fileManager, a4);
  }

  return v11;
}

- (id)nextObject
{
  v3 = [(APFilesEnumerator *)self objectsIterator];
  v4 = v3[2]();

  if (!v4)
  {
LABEL_7:
    v13 = 0;
    goto LABEL_9;
  }

  while (1)
  {
    v5 = [(APFilesEnumerator *)self extension];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 pathExtension];
      v8 = [(APFilesEnumerator *)self extension];
      v9 = [v7 isEqualToString:v8];

      if ((v9 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v10 = sub_10036E3F8(APFileNameConverter, v4, 0);
    if ([v10 length])
    {
      break;
    }

LABEL_6:
    v11 = [(APFilesEnumerator *)self objectsIterator];
    v12 = v11[2]();

    v4 = v12;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v14 = [APFileSystemItemInfo alloc];
  v15 = [(APFilesEnumerator *)self fileManager];
  v13 = sub_10039550C(&v14->super.isa, v10, v4, v15);

LABEL_9:

  return v13;
}

@end