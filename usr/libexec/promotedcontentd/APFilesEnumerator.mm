@interface APFilesEnumerator
- (APFilesEnumerator)initWithObjectsIterator:(id)iterator fileManager:(id)manager extension:(id)extension;
- (id)nextObject;
@end

@implementation APFilesEnumerator

- (APFilesEnumerator)initWithObjectsIterator:(id)iterator fileManager:(id)manager extension:(id)extension
{
  iteratorCopy = iterator;
  managerCopy = manager;
  extensionCopy = extension;
  v11 = [(APFilesEnumerator *)self init];
  if (v11)
  {
    v12 = [extensionCopy copy];
    extension = v11->_extension;
    v11->_extension = v12;

    v14 = [iteratorCopy copy];
    objectsIterator = v11->_objectsIterator;
    v11->_objectsIterator = v14;

    objc_storeStrong(&v11->_fileManager, manager);
  }

  return v11;
}

- (id)nextObject
{
  objectsIterator = [(APFilesEnumerator *)self objectsIterator];
  v4 = objectsIterator[2]();

  if (!v4)
  {
LABEL_7:
    v13 = 0;
    goto LABEL_9;
  }

  while (1)
  {
    extension = [(APFilesEnumerator *)self extension];
    if (extension)
    {
      v6 = extension;
      pathExtension = [v4 pathExtension];
      extension2 = [(APFilesEnumerator *)self extension];
      v9 = [pathExtension isEqualToString:extension2];

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
    objectsIterator2 = [(APFilesEnumerator *)self objectsIterator];
    v12 = objectsIterator2[2]();

    v4 = v12;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v14 = [APFileSystemItemInfo alloc];
  fileManager = [(APFilesEnumerator *)self fileManager];
  v13 = sub_10039550C(&v14->super.isa, v10, v4, fileManager);

LABEL_9:

  return v13;
}

@end