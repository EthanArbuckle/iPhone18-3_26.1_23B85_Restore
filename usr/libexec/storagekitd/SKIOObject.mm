@interface SKIOObject
- (NSString)ioClassName;
- (SKIOObject)initWithClassName:(id)name;
- (SKIOObject)initWithIOObject:(unsigned int)object retain:(BOOL)retain;
- (SKIOObject)initWithIteratorNext:(id)next;
- (SKIOObject)initWithSKIOObject:(id)object;
- (SKIOObject)ioObjectWithClassName:(id)name iterateParents:(BOOL)parents;
- (id)copyParent;
- (id)copyParentPropertyWithClass:(Class)class key:(id)key;
- (id)copyProperties;
- (id)copyPropertyWithClass:(Class)class key:(id)key;
- (id)newIteratorWithOptions:(unsigned int)options;
- (void)dealloc;
@end

@implementation SKIOObject

- (SKIOObject)initWithIOObject:(unsigned int)object retain:(BOOL)retain
{
  if (object)
  {
    if (retain)
    {
      IOObjectRetain(object);
    }

    v10.receiver = self;
    v10.super_class = SKIOObject;
    v6 = [(SKIOObject *)&v10 init];
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

- (SKIOObject)initWithSKIOObject:(id)object
{
  ioObj = [object ioObj];

  return [(SKIOObject *)self initWithIOObject:ioObj retain:1];
}

- (SKIOObject)initWithClassName:(id)name
{
  nameCopy = name;
  v5 = IOServiceMatching([nameCopy UTF8String]);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v5);
  if (MatchingService)
  {
    self = [(SKIOObject *)self initWithIOObject:MatchingService];
    selfCopy = self;
  }

  else
  {
    v8 = sub_10000BFD0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = nameCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Cannot find IO object of class %@", &v10, 0xCu);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (SKIOObject)initWithIteratorNext:(id)next
{
  copyNextObject = [next copyNextObject];

  return [(SKIOObject *)self initWithIOObject:copyNextObject];
}

- (id)newIteratorWithOptions:(unsigned int)options
{
  iterator = 0;
  v3 = IORegistryEntryCreateIterator([(SKIOObject *)self ioObj], "IOService", options, &iterator);
  if (v3)
  {
    v4 = v3;
    v5 = sub_10000BFD0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed creating IO iterator, err code %d", buf, 8u);
    }

    return 0;
  }

  else
  {
    v7 = [SKIOIterator alloc];
    return [(SKIOObject *)v7 initWithIOObject:iterator retain:0];
  }
}

- (NSString)ioClassName
{
  v2 = IOObjectCopyClass([(SKIOObject *)self ioObj]);

  return v2;
}

- (void)dealloc
{
  ioObj = self->_ioObj;
  if (ioObj)
  {
    IOObjectRelease(ioObj);
  }

  v4.receiver = self;
  v4.super_class = SKIOObject;
  [(SKIOObject *)&v4 dealloc];
}

- (SKIOObject)ioObjectWithClassName:(id)name iterateParents:(BOOL)parents
{
  parentsCopy = parents;
  nameCopy = name;
  uTF8String = [nameCopy UTF8String];
  if (parentsCopy)
  {
    v8 = 3;
  }

  else
  {
    v8 = 1;
  }

  v9 = [(SKIOObject *)self newIteratorWithOptions:v8];
  if (v9)
  {
    v10 = 0;
    while (1)
    {
      v11 = [[SKIOObject alloc] initWithIteratorNext:v9];

      if (!v11)
      {
        break;
      }

      v10 = v11;
      if (IOObjectConformsTo([(SKIOObject *)v11 ioObj], uTF8String))
      {
        goto LABEL_13;
      }
    }

    v12 = sub_10000BFD0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = nameCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Cannot find %@ entry", &v14, 0xCu);
    }
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (id)copyPropertyWithClass:(Class)class key:(id)key
{
  keyCopy = key;
  CFProperty = IORegistryEntryCreateCFProperty([(SKIOObject *)self ioObj], keyCopy, kCFAllocatorDefault, 0);

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

- (id)copyParentPropertyWithClass:(Class)class key:(id)key
{
  keyCopy = key;
  v6 = IORegistryEntrySearchCFProperty([(SKIOObject *)self ioObj], "IOService", keyCopy, kCFAllocatorDefault, 3u);

  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyProperties
{
  properties = 0;
  IORegistryEntryCreateCFProperties([(SKIOObject *)self ioObj], &properties, kCFAllocatorDefault, 0);
  return properties;
}

- (id)copyParent
{
  parent = 0;
  ParentEntry = IORegistryEntryGetParentEntry([(SKIOObject *)self ioObj], "IOService", &parent);
  if (ParentEntry)
  {
    v3 = ParentEntry;
    v4 = sub_10000BFD0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to get parent registry entry, err code %d", buf, 8u);
    }

    return 0;
  }

  else
  {
    v6 = [SKIOObject alloc];
    return [(SKIOObject *)v6 initWithIOObject:parent];
  }
}

@end