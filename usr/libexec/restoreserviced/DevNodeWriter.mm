@interface DevNodeWriter
- (BOOL)finished;
- (BOOL)isAvailable;
- (DevNodeWriter)initWithIOMedia:(unsigned int)media;
- (DevNodeWriter)initWithService:(unsigned int)service;
- (DevNodeWriter)initWithServiceNamed:(id)named parent:(unsigned int)parent;
- (NSString)devicePath;
- (int)writeBytes:(const void *)bytes ofLength:(unint64_t)length withError:(id *)error;
- (int)writeData:(id)data withError:(id *)error;
- (unint64_t)numberOfBytesRemainingInBlock;
- (void)_setupFileDescriptor;
- (void)_waitForDeviceNode:(id)node withTimeout:(unsigned int)timeout;
- (void)dealloc;
@end

@implementation DevNodeWriter

- (DevNodeWriter)initWithIOMedia:(unsigned int)media
{
  v13.receiver = self;
  v13.super_class = DevNodeWriter;
  v4 = [(DevNodeWriter *)&v13 init];
  if (v4)
  {
    if (IOObjectConformsTo(media, "IOMedia"))
    {
      IOServiceWaitQuiet(media, 0);
      IOObjectRetain(media);
      *(v4 + 2) = media;
      *(v4 + 12) = 0xFFFFFFFFLL;
      if ([v4 isAvailable])
      {
        [v4 _setupFileDescriptor];
        return v4;
      }

      CFProperty = IORegistryEntryCreateCFProperty(*(v4 + 2), @"BSD Name", kCFAllocatorDefault, 0);
      iBU_LOG_real(@"File descriptor %@ wasn't available at init time.", "[DevNodeWriter initWithIOMedia:]", v6, v7, v8, v9, v10, v11, CFProperty);
    }

    return 0;
  }

  return v4;
}

- (DevNodeWriter)initWithService:(unsigned int)service
{
  entryID = 0;
  IORegistryEntryGetRegistryEntryID(service, &entryID);
  IOServiceWaitQuiet(service, 0);
  v14[0] = @"IOParentMatch";
  v15[0] = IORegistryEntryIDMatching(entryID);
  v15[1] = @"IOMedia";
  v14[1] = @"IOProviderClass";
  v14[2] = @"IOPropertyMatch";
  v12 = @"Whole";
  v13 = [NSNumber numberWithBool:1];
  v15[2] = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v5 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];
  if (v5)
  {
    v6 = CFRetain(v5);
  }

  else
  {
    v6 = 0;
  }

  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
  v8 = [(DevNodeWriter *)self initWithIOMedia:MatchingService];
  if (MatchingService && IOObjectRelease(MatchingService))
  {
    sub_100013AE4(&v11, v16);
  }

  return v8;
}

- (DevNodeWriter)initWithServiceNamed:(id)named parent:(unsigned int)parent
{
  Namespace = MSUBootFirmwareFindNamespace(parent, named);
  v6 = [(DevNodeWriter *)self initWithService:Namespace];
  if (Namespace && IOObjectRelease(Namespace))
  {
    sub_100013C18(&v8, v9);
  }

  return v6;
}

- (BOOL)isAvailable
{
  if (self->_nodeDescriptor != -1)
  {
    return 1;
  }

  CFProperty = IORegistryEntryCreateCFProperty([(DevNodeWriter *)self service], @"BSD Name", kCFAllocatorDefault, 0);
  [(DevNodeWriter *)self _waitForDeviceNode:CFProperty withTimeout:60];
  v2 = self->_nodeDescriptor != -1;
  if (CFProperty)
  {
    CFRelease(CFProperty);
  }

  return v2;
}

- (void)_waitForDeviceNode:(id)node withTimeout:(unsigned int)timeout
{
  uTF8String = [(NSString *)[(DevNodeWriter *)self devicePath] UTF8String];
  iBU_LOG_real(@"Attempting to open dev node at path: %s", "[DevNodeWriter _waitForDeviceNode:withTimeout:]", v7, v8, v9, v10, v11, v12, uTF8String);
  do
  {
    v13 = open(uTF8String, 16777217);
    if (v13 != -1)
    {
      break;
    }

    v14 = __error();
    if (*v14 != 2)
    {
      strerror(*v14);
      iBU_LOG_real(@"open(2) on %s failed with error %d: %s. Not trying agin.", "[DevNodeWriter _waitForDeviceNode:withTimeout:]", v21, v22, v23, v24, v25, v26, uTF8String);
      break;
    }

    iBU_LOG_real(@"Dev node %s doesn't yet exist. Waiting to try again...", "[DevNodeWriter _waitForDeviceNode:withTimeout:]", v15, v16, v17, v18, v19, v20, uTF8String);
    sleep(1u);
    --timeout;
  }

  while (timeout);
  self->_nodeDescriptor = v13;
}

- (NSString)devicePath
{
  v2 = IORegistryEntryCreateCFProperty([(DevNodeWriter *)self service], @"BSD Name", kCFAllocatorDefault, 0);

  return [@"/dev/" stringByAppendingPathComponent:v2];
}

- (void)dealloc
{
  service = self->_service;
  if (service)
  {
    IOObjectRelease(service);
    self->_service = 0;
  }

  nodeDescriptor = self->_nodeDescriptor;
  if (nodeDescriptor != -1)
  {
    close(nodeDescriptor);
  }

  v5.receiver = self;
  v5.super_class = DevNodeWriter;
  [(DevNodeWriter *)&v5 dealloc];
}

- (BOOL)finished
{
  fsync(self->_nodeDescriptor);
  service = self->_service;
  if (service)
  {
    IOObjectRelease(service);
    self->_service = 0;
  }

  nodeDescriptor = self->_nodeDescriptor;
  if (nodeDescriptor != -1)
  {
    close(nodeDescriptor);
    self->_nodeDescriptor = -1;
  }

  return 1;
}

- (void)_setupFileDescriptor
{
  nodeDescriptor = self->_nodeDescriptor;
  if (nodeDescriptor != -1)
  {
    if (fcntl(nodeDescriptor, 48))
    {
      iBU_LOG_real(@"Failed to set F_NOCACHE on descriptor.", "[DevNodeWriter _setupFileDescriptor]", v4, v5, v6, v7, v8, v9, 1);
    }

    v12 = 0;
    memset(&v11, 0, sizeof(v11));
    if (ioctl(self->_nodeDescriptor, 0x40046418uLL, &v12))
    {
      if (fstat(self->_nodeDescriptor, &v11))
      {
        st_blksize = 0;
      }

      else
      {
        st_blksize = v11.st_blksize;
      }
    }

    else
    {
      st_blksize = v12;
    }

    self->_preferredBlockSize = st_blksize;
  }
}

- (int)writeBytes:(const void *)bytes ofLength:(unint64_t)length withError:(id *)error
{
  nodeDescriptor = [(DevNodeWriter *)self nodeDescriptor];
  if (!length)
  {
    return 0;
  }

  v10 = nodeDescriptor;
  while (1)
  {
    v11 = write(v10, bytes, length);
    if (v11 == -1)
    {
      break;
    }

    bytes = bytes + v11;
    length -= v11;
    if (!length)
    {
      return 0;
    }
  }

  v13 = *__error();
  v14 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v13 userInfo:0];
  [(DevNodeWriter *)self devicePath];
  iBU_LOG_real(@"Failed to write %lu bytes to %@", "[DevNodeWriter writeBytes:ofLength:withError:]", v15, v16, v17, v18, v19, v20, length);
  if (error)
  {
    [(DevNodeWriter *)self devicePath];
    *error = MSUBootFirmwareError(3, v14, @"Failed to write %lu bytes to %@", v27, v28, v29, v30, v31, length);
  }

  iBU_LOG_real(@"There are %lu bytes left to write.", "[DevNodeWriter writeBytes:ofLength:withError:]", v21, v22, v23, v24, v25, v26, length);
  return v13 | 0xC000;
}

- (int)writeData:(id)data withError:(id *)error
{
  bytes = [data bytes];
  v8 = [data length];

  return [(DevNodeWriter *)self writeBytes:bytes ofLength:v8 withError:error];
}

- (unint64_t)numberOfBytesRemainingInBlock
{
  preferredBlockSize = [(DevNodeWriter *)self preferredBlockSize];
  if (preferredBlockSize < 1)
  {
    return 0;
  }

  v4 = preferredBlockSize;
  v5 = lseek([(DevNodeWriter *)self nodeDescriptor], 0, 1);
  if ((v5 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v6 = v5 % v4;
  if (v6)
  {
    return (v4 - v6);
  }

  else
  {
    return 0;
  }
}

@end