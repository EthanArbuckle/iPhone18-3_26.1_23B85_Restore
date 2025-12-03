@interface PCIeNANDBootWriter
- (PCIeNANDBootWriter)initWithService:(unsigned int)service;
- (PCIeNANDBootWriter)initWithServiceNamed:(id)named parent:(unsigned int)parent;
- (int)writeFirmware:(id)firmware error:(id *)error;
- (void)appendImage:(id)image snapID:(int)d;
- (void)appendImages:(id)images;
- (void)dealloc;
- (void)resetImages;
@end

@implementation PCIeNANDBootWriter

- (PCIeNANDBootWriter)initWithService:(unsigned int)service
{
  v6.receiver = self;
  v6.super_class = PCIeNANDBootWriter;
  v4 = [(PCIeNANDBootWriter *)&v6 init];
  if (v4)
  {
    if (IOObjectConformsTo(service, "AppleNVMeFWNamespaceDevice"))
    {
      v4->_layout = 0;
      v4->_service = service;
      IOObjectRetain(service);
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (PCIeNANDBootWriter)initWithServiceNamed:(id)named parent:(unsigned int)parent
{
  Namespace = MSUBootFirmwareFindNamespace(parent, named);
  v6 = [(PCIeNANDBootWriter *)self initWithService:Namespace];
  if (Namespace && IOObjectRelease(Namespace))
  {
    sub_1000138BC(&v8, v9);
  }

  return v6;
}

- (void)dealloc
{
  service = self->_service;
  if (service)
  {
    IOObjectRelease(service);
  }

  v4.receiver = self;
  v4.super_class = PCIeNANDBootWriter;
  [(PCIeNANDBootWriter *)&v4 dealloc];
}

- (void)resetImages
{
  selfCopy = self;

  selfCopy->_imageData = objc_alloc_init(NSMutableData);
  *(&selfCopy->_table.header.var0.all + 4) = 0u;
  selfCopy = (selfCopy + 20);
  HIDWORD(selfCopy[-1]._layout) = 1;
  *&selfCopy->_table.header.var0.var0.version = 0u;
  *&selfCopy->_table.descriptor.var0.all[1] = 0u;
  *&selfCopy->_table.descriptor.var0.all[3] = 0u;
  *&selfCopy->_table.descriptor.var0.all[5] = 0u;
  *&selfCopy->_table.descriptor.var0.all[7] = 0u;
  *&selfCopy->_table.descriptor.var0.all[9] = 0u;
  *&selfCopy->_table.descriptor.var0.all[11] = 0u;
  *&selfCopy->_table.descriptor.var0.all[13] = 0u;
  *&selfCopy->_table.descriptor.var0.all[15] = 0u;
  *&selfCopy->_table.descriptor.var0.all[17] = 0u;
  *&selfCopy->_table.descriptor.var0.all[19] = 0u;
  *&selfCopy->_table.descriptor.var0.all[21] = 0u;
  *&selfCopy->_table.descriptor.var0.all[23] = 0u;
  *&selfCopy->_table.descriptor.var0.all[25] = 0u;
  *&selfCopy->_table.descriptor.var0.all[27] = 0u;
  *(&selfCopy->_table.descriptor.var0.all[28] + 4) = 0u;
}

- (void)appendImage:(id)image snapID:(int)d
{
  dCopy = d;
  v7 = [image length];
  imageData = self->_imageData;
  v9 = [(NSMutableData *)imageData length];
  if (v7)
  {
    num_images = self->_table.descriptor.var0.var0.num_images;
    if (num_images <= 0x1F)
    {
      v11 = v9;
      [(NSMutableData *)imageData appendData:image];
      v12 = ([(NSMutableData *)imageData length]+ 0x3FFF) & 0xFFFFFFFFFFFFC000;
      [(NSMutableData *)imageData setLength:v12];
      self->_table.header.var0.var0.firmware_sectors_written = v12 >> 12;
      self->_table.descriptor.var0.var0.num_images = num_images + 1;
      v13 = &self->super.isa + num_images;
      *(v13 + 32) = dCopy;
      *(v13 + 33) = 0;
      *(v13 + 35) = 0;
      *(v13 + 18) = v11 >> 12;
      *(v13 + 19) = (v12 >> 12) - (v11 >> 12);
    }
  }
}

- (void)appendImages:(id)images
{
  v5 = objc_autoreleasePoolPush();
  v6 = [images copyFirmwareWithRestoreInfo:{objc_msgSend(images, "llbData")}];
  ans2Data = [images ans2Data];
  if (self->_layout == 1)
  {
    v8 = +[NSMutableData data];
    [v8 appendData:v6];
    [v8 appendData:ans2Data];
    selfCopy2 = self;
    v10 = v8;
    v11 = 1;
  }

  else
  {
    [(PCIeNANDBootWriter *)self appendImage:v6 snapID:1];
    selfCopy2 = self;
    v10 = ans2Data;
    v11 = 3;
  }

  [(PCIeNANDBootWriter *)selfCopy2 appendImage:v10 snapID:v11];

  objc_autoreleasePoolPop(v5);
}

- (int)writeFirmware:(id)firmware error:(id *)error
{
  connect = 0;
  if ([firmware shouldCommit])
  {
    v7 = IOServiceOpen(self->_service, mach_task_self_, 0, &connect);
    if (!v7)
    {
      [(PCIeNANDBootWriter *)self resetImages];
      [(PCIeNANDBootWriter *)self appendImages:firmware];
      input = 0;
      v15 = 0;
      input = [(NSMutableData *)self->_imageData bytes];
      v15 = [(NSMutableData *)self->_imageData length];
      v7 = IOConnectCallScalarMethod(connect, 0, &input, 2u, 0, 0);
      if (!v7)
      {
        v8 = [NSMutableData dataWithBytes:&self->_table length:272];
        [(NSMutableData *)v8 setLength:4096];
        bytes = 0;
        v13 = 0;
        bytes = [(NSMutableData *)v8 bytes];
        v13 = [(NSMutableData *)v8 length];
        v7 = IOConnectCallScalarMethod(connect, 1u, &bytes, 2u, 0, 0);
      }
    }

    [(PCIeNANDBootWriter *)self resetImages];
    if (error && v7)
    {
      *error = [NSError errorWithDomain:NSMachErrorDomain code:v7 userInfo:0];
    }
  }

  else
  {
    v7 = 0;
  }

  if (connect && IOServiceClose(connect))
  {
    sub_1000139D0(&v11, v16);
  }

  return v7;
}

@end