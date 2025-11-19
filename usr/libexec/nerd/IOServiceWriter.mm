@interface IOServiceWriter
- (BOOL)finished;
- (IOServiceWriter)initWithService:(unsigned int)a3;
- (int)openService;
- (int)writeBytes:(char *)a3 ofLength:(unint64_t)a4 withError:(id *)a5;
- (int)writeData:(id)a3 withError:(id *)a4;
- (void)dealloc;
@end

@implementation IOServiceWriter

- (IOServiceWriter)initWithService:(unsigned int)a3
{
  v6.receiver = self;
  v6.super_class = IOServiceWriter;
  v4 = [(IOServiceWriter *)&v6 init];
  if (v4)
  {
    IOObjectRetain(a3);
    v4->_service = a3;
  }

  return v4;
}

- (int)writeBytes:(char *)a3 ofLength:(unint64_t)a4 withError:(id *)a5
{
  v7 = [NSData dataWithBytes:a3 length:a4];

  return [(IOServiceWriter *)self writeData:v7 withError:a5];
}

- (int)writeData:(id)a3 withError:(id *)a4
{
  v6 = IORegistryEntrySetCFProperty([(IOServiceWriter *)self service], @"FLASH", a3);
  if (v6)
  {
    v7 = [a3 length];
    v13 = MSUBootFirmwareError(v6, 0, @"writeData: Failed writing %d bytes with error %d", v8, v9, v10, v11, v12, v7);
    if (a4)
    {
      *a4 = MSUBootFirmwareError(3, v13, @"FLASH operation failed while writing to single SPI.", v14, v15, v16, v17, v18, v20);
    }
  }

  return v6;
}

- (int)openService
{
  v3 = [(IOServiceWriter *)self service];
  v4 = mach_task_self_;

  return IOServiceOpen(v3, v4, 0, &self->_serviceConnect);
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