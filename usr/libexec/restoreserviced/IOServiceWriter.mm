@interface IOServiceWriter
- (BOOL)finished;
- (IOServiceWriter)initWithService:(unsigned int)service;
- (int)openService;
- (int)writeBytes:(char *)bytes ofLength:(unint64_t)length withError:(id *)error;
- (int)writeData:(id)data withError:(id *)error;
- (void)dealloc;
@end

@implementation IOServiceWriter

- (IOServiceWriter)initWithService:(unsigned int)service
{
  v6.receiver = self;
  v6.super_class = IOServiceWriter;
  v4 = [(IOServiceWriter *)&v6 init];
  if (v4)
  {
    IOObjectRetain(service);
    v4->_service = service;
  }

  return v4;
}

- (int)writeBytes:(char *)bytes ofLength:(unint64_t)length withError:(id *)error
{
  v7 = [NSData dataWithBytes:bytes length:length];

  return [(IOServiceWriter *)self writeData:v7 withError:error];
}

- (int)writeData:(id)data withError:(id *)error
{
  v6 = IORegistryEntrySetCFProperty([(IOServiceWriter *)self service], @"FLASH", data);
  if (v6)
  {
    v7 = [data length];
    v13 = MSUBootFirmwareError(v6, 0, @"writeData: Failed writing %d bytes with error %d", v8, v9, v10, v11, v12, v7);
    if (error)
    {
      *error = MSUBootFirmwareError(3, v13, @"FLASH operation failed while writing to single SPI.", v14, v15, v16, v17, v18, v20);
    }
  }

  return v6;
}

- (int)openService
{
  service = [(IOServiceWriter *)self service];
  v4 = mach_task_self_;

  return IOServiceOpen(service, v4, 0, &self->_serviceConnect);
}

- (BOOL)finished
{
  serviceConnect = self->_serviceConnect;
  if (serviceConnect)
  {
    IOServiceClose(serviceConnect);
    self->_serviceConnect = 0;
  }

  service = self->_service;
  if (service)
  {
    IOObjectRelease(service);
    self->_service = 0;
  }

  return 1;
}

- (void)dealloc
{
  [(IOServiceWriter *)self finished];
  v3.receiver = self;
  v3.super_class = IOServiceWriter;
  [(IOServiceWriter *)&v3 dealloc];
}

@end