@interface CKKSPBFileStorage
- (CKKSPBFileStorage)initWithStoragePath:(id)path storageClass:(Class)class;
- (id)storage;
- (void)setStorage:(id)storage;
@end

@implementation CKKSPBFileStorage

- (void)setStorage:(id)storage
{
  storageCopy = storage;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = storageCopy;
  data = [v9 data];
  storageFile = [(CKKSPBFileStorage *)selfCopy storageFile];
  [data writeToURL:storageFile atomically:1];

  v8 = [[(objc_class *)[(CKKSPBFileStorage *)selfCopy storageClass] alloc] initWithData:data];
  [(CKKSPBFileStorage *)selfCopy setProtobufStorage:v8];

  objc_sync_exit(selfCopy);
}

- (id)storage
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  protobufStorage = [(CKKSPBFileStorage *)selfCopy protobufStorage];
  objc_sync_exit(selfCopy);

  return protobufStorage;
}

- (CKKSPBFileStorage)initWithStoragePath:(id)path storageClass:(Class)class
{
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = CKKSPBFileStorage;
  v7 = [(CKKSPBFileStorage *)&v15 init];
  v8 = v7;
  if (v7)
  {
    [(CKKSPBFileStorage *)v7 setStorageFile:pathCopy];
    [(CKKSPBFileStorage *)v8 setStorageClass:class];
    v9 = [NSData dataWithContentsOfURL:pathCopy];
    if (v9)
    {
      v10 = [[(objc_class *)[(CKKSPBFileStorage *)v8 storageClass] alloc] initWithData:v9];
      [(CKKSPBFileStorage *)v8 setProtobufStorage:v10];
    }

    protobufStorage = [(CKKSPBFileStorage *)v8 protobufStorage];

    if (!protobufStorage)
    {
      v12 = [[(objc_class *)[(CKKSPBFileStorage *)v8 storageClass] alloc] init];
      [(CKKSPBFileStorage *)v8 setProtobufStorage:v12];
    }

    v13 = v8;
  }

  return v8;
}

@end