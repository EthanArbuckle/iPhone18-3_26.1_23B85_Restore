@interface DIIOObject
+ (id)copyDiskImagesControllerWithError:(id *)error;
- (DIIOObject)initWithClassName:(id)name error:(id *)error;
- (DIIOObject)initWithDIIOObject:(id)object;
- (DIIOObject)initWithIOObject:(unsigned int)object retain:(BOOL)retain;
- (DIIOObject)initWithIteratorNext:(id)next;
- (DIIOObject)initWithRegistryEntryID:(unint64_t)d error:(id *)error;
- (DIIOObject)ioObjectWithClassName:(id)name iterateParent:(BOOL)parent error:(id *)error;
- (NSString)ioClassName;
- (id)copyParentWithError:(id *)error;
- (id)copyPropertyWithClass:(Class)class key:(id)key;
- (id)newIteratorWithOptions:(unsigned int)options error:(id *)error;
- (unint64_t)registryEntryIDWithError:(id *)error;
- (void)dealloc;
@end

@implementation DIIOObject

- (DIIOObject)initWithIOObject:(unsigned int)object retain:(BOOL)retain
{
  if (object)
  {
    if (retain)
    {
      IOObjectRetain(object);
    }

    v10.receiver = self;
    v10.super_class = DIIOObject;
    v6 = [(DIIOObject *)&v10 init];
    v7 = v6;
    if (v6)
    {
      v6->_ioObj = object;
    }

    else
    {
      IOObjectRelease(object);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (DIIOObject)initWithDIIOObject:(id)object
{
  ioObj = [object ioObj];

  return [(DIIOObject *)self initWithIOObject:ioObj retain:1];
}

- (DIIOObject)initWithRegistryEntryID:(unint64_t)d error:(id *)error
{
  v7 = IORegistryEntryIDMatching(d);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v7);
  if (MatchingService)
  {
    self = [(DIIOObject *)self initWithIOObject:MatchingService];
    selfCopy = self;
  }

  else
  {
    v10 = [NSString stringWithFormat:@"Cannot find registry entry ID 0x%llx", d];
    selfCopy = [DIError nilWithEnumValue:153 verboseInfo:v10 error:error];
  }

  return selfCopy;
}

- (DIIOObject)initWithClassName:(id)name error:(id *)error
{
  nameCopy = name;
  v7 = IOServiceMatching([nameCopy UTF8String]);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v7);
  if (MatchingService)
  {
    self = [(DIIOObject *)self initWithIOObject:MatchingService];
    selfCopy = self;
  }

  else
  {
    nameCopy = [NSString stringWithFormat:@"Cannot find IO object of class %@", nameCopy];
    selfCopy = [DIError nilWithEnumValue:153 verboseInfo:nameCopy error:error];
  }

  return selfCopy;
}

- (DIIOObject)initWithIteratorNext:(id)next
{
  copyNextObject = [next copyNextObject];

  return [(DIIOObject *)self initWithIOObject:copyNextObject];
}

- (id)newIteratorWithOptions:(unsigned int)options error:(id *)error
{
  iterator = 0;
  v5 = IORegistryEntryCreateIterator([(DIIOObject *)self ioObj], "IOService", options, &iterator);
  if (v5)
  {
    v6 = [NSString stringWithFormat:@"Failed creating IO iterator, err code %d", v5];
    v7 = [DIError nilWithEnumValue:153 verboseInfo:v6 error:error];
  }

  else
  {
    v8 = [DIIOIterator alloc];
    return [(DIIOIterator *)v8 initWithIOIterator:iterator retain:0];
  }

  return v7;
}

- (unint64_t)registryEntryIDWithError:(id *)error
{
  entryID = 0;
  RegistryEntryID = IORegistryEntryGetRegistryEntryID([(DIIOObject *)self ioObj], &entryID);
  if (!RegistryEntryID)
  {
    return entryID;
  }

  registryEntryID = [NSString stringWithFormat:@"Failed to get registry entry ID, ret %d", RegistryEntryID];
  [DIError failWithEnumValue:153 verboseInfo:registryEntryID error:error];

  return 0;
}

- (NSString)ioClassName
{
  v2 = IOObjectCopyClass([(DIIOObject *)self ioObj]);

  return v2;
}

- (void)dealloc
{
  ioObj = self->_ioObj;
  if (ioObj)
  {
    IOObjectRelease(ioObj);
    self->_ioObj = 0;
  }

  v4.receiver = self;
  v4.super_class = DIIOObject;
  [(DIIOObject *)&v4 dealloc];
}

- (DIIOObject)ioObjectWithClassName:(id)name iterateParent:(BOOL)parent error:(id *)error
{
  parentCopy = parent;
  nameCopy = name;
  uTF8String = [nameCopy UTF8String];
  if (parentCopy)
  {
    v10 = 3;
  }

  else
  {
    v10 = 1;
  }

  v11 = [(DIIOObject *)self newIteratorWithOptions:v10 error:error];
  if (v11)
  {
    v12 = 0;
    while (1)
    {
      v13 = [[DIIOObject alloc] initWithIteratorNext:v11];

      if (!v13)
      {
        break;
      }

      v12 = v13;
      if (IOObjectConformsTo([(DIIOObject *)v13 ioObj], uTF8String))
      {
        goto LABEL_11;
      }
    }

    nameCopy = [NSString stringWithFormat:@"Cannot find %@ entry", nameCopy];
    v13 = [DIError nilWithEnumValue:153 verboseInfo:nameCopy error:error];
  }

  else
  {
    v13 = 0;
  }

LABEL_11:

  return v13;
}

- (id)copyPropertyWithClass:(Class)class key:(id)key
{
  keyCopy = key;
  CFProperty = IORegistryEntryCreateCFProperty([(DIIOObject *)self ioObj], keyCopy, kCFAllocatorDefault, 0);

  if (CFProperty && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = CFProperty;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyParentWithError:(id *)error
{
  parent = 0;
  ParentEntry = IORegistryEntryGetParentEntry([(DIIOObject *)self ioObj], "IOService", &parent);
  if (ParentEntry)
  {
    parentEntry = [NSString stringWithFormat:@"Failed to get parent registry entry, err code %d", ParentEntry];
    v6 = [DIError nilWithEnumValue:153 verboseInfo:parentEntry error:error];
  }

  else
  {
    v7 = [DIIOObject alloc];
    return [(DIIOObject *)v7 initWithIOObject:parent];
  }

  return v6;
}

+ (id)copyDiskImagesControllerWithError:(id *)error
{
  v4 = [[DIIOObject alloc] initWithClassName:@"AppleDiskImagesController" error:0];
  v5 = v4;
  if (v4)
  {
    error = v4;
  }

  else
  {
    error = [DIError nilWithEnumValue:153 verboseInfo:@"Failed to find DiskImages2 controller error:driver might not be installed", error];
  }

  v7 = error;

  return v7;
}

@end