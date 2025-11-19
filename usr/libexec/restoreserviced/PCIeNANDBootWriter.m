@interface PCIeNANDBootWriter
- (PCIeNANDBootWriter)initWithService:(unsigned int)a3;
- (PCIeNANDBootWriter)initWithServiceNamed:(id)a3 parent:(unsigned int)a4;
- (int)writeFirmware:(id)a3 error:(id *)a4;
- (void)appendImage:(id)a3 snapID:(int)a4;
- (void)appendImages:(id)a3;
- (void)dealloc;
- (void)resetImages;
@end

@implementation PCIeNANDBootWriter

- (PCIeNANDBootWriter)initWithService:(unsigned int)a3
{
  v6.receiver = self;
  v6.super_class = PCIeNANDBootWriter;
  v4 = [(PCIeNANDBootWriter *)&v6 init];
  if (v4)
  {
    if (IOObjectConformsTo(a3, "AppleNVMeFWNamespaceDevice"))
    {
      v4->_layout = 0;
      v4->_service = a3;
      IOObjectRetain(a3);
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (PCIeNANDBootWriter)initWithServiceNamed:(id)a3 parent:(unsigned int)a4
{
  Namespace = MSUBootFirmwareFindNamespace(a4, a3);
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
  v2 = self;

  v2->_imageData = objc_alloc_init(NSMutableData);
  *(&v2->_table.header.var0.all + 4) = 0u;
  v2 = (v2 + 20);
  HIDWORD(v2[-1]._layout) = 1;
  *&v2->_table.header.var0.var0.version = 0u;
  *&v2->_table.descriptor.var0.all[1] = 0u;
  *&v2->_table.descriptor.var0.all[3] = 0u;
  *&v2->_table.descriptor.var0.all[5] = 0u;
  *&v2->_table.descriptor.var0.all[7] = 0u;
  *&v2->_table.descriptor.var0.all[9] = 0u;
  *&v2->_table.descriptor.var0.all[11] = 0u;
  *&v2->_table.descriptor.var0.all[13] = 0u;
  *&v2->_table.descriptor.var0.all[15] = 0u;
  *&v2->_table.descriptor.var0.all[17] = 0u;
  *&v2->_table.descriptor.var0.all[19] = 0u;
  *&v2->_table.descriptor.var0.all[21] = 0u;
  *&v2->_table.descriptor.var0.all[23] = 0u;
  *&v2->_table.descriptor.var0.all[25] = 0u;
  *&v2->_table.descriptor.var0.all[27] = 0u;
  *(&v2->_table.descriptor.var0.all[28] + 4) = 0u;
}

- (void)appendImage:(id)a3 snapID:(int)a4
{
  v4 = a4;
  v7 = [a3 length];
  imageData = self->_imageData;
  v9 = [(NSMutableData *)imageData length];
  if (v7)
  {
    num_images = self->_table.descriptor.var0.var0.num_images;
    if (num_images <= 0x1F)
    {
      v11 = v9;
      [(NSMutableData *)imageData appendData:a3];
      v12 = ([(NSMutableData *)imageData length]+ 0x3FFF) & 0xFFFFFFFFFFFFC000;
      [(NSMutableData *)imageData setLength:v12];
      self->_table.header.var0.var0.firmware_sectors_written = v12 >> 12;
      self->_table.descriptor.var0.var0.num_images = num_images + 1;
      v13 = &self->super.isa + num_images;
      *(v13 + 32) = v4;
      *(v13 + 33) = 0;
      *(v13 + 35) = 0;
      *(v13 + 18) = v11 >> 12;
      *(v13 + 19) = (v12 >> 12) - (v11 >> 12);
    }
  }
}

- (void)appendImages:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [a3 copyFirmwareWithRestoreInfo:{objc_msgSend(a3, "llbData")}];
  v7 = [a3 ans2Data];
  if (self->_layout == 1)
  {
    v8 = +[NSMutableData data];
    [v8 appendData:v6];
    [v8 appendData:v7];
    v9 = self;
    v10 = v8;
    v11 = 1;
  }

  else
  {
    [(PCIeNANDBootWriter *)self appendImage:v6 snapID:1];
    v9 = self;
    v10 = v7;
    v11 = 3;
  }

  [(PCIeNANDBootWriter *)v9 appendImage:v10 snapID:v11];

  objc_autoreleasePoolPop(v5);
}

- (int)writeFirmware:(id)a3 error:(id *)a4
{
  connect = 0;
  if ([a3 shouldCommit])
  {
    v7 = IOServiceOpen(self->_service, mach_task_self_, 0, &connect);
    if (!v7)
    {
      [(PCIeNANDBootWriter *)self resetImages];
      [(PCIeNANDBootWriter *)self appendImages:a3];
      input = 0;
      v15 = 0;
      input = [(NSMutableData *)self->_imageData bytes];
      v15 = [(NSMutableData *)self->_imageData length];
      v7 = IOConnectCallScalarMethod(connect, 0, &input, 2u, 0, 0);
      if (!v7)
      {
        v8 = [NSMutableData dataWithBytes:&self->_table length:272];
        [(NSMutableData *)v8 setLength:4096];
        v12 = 0;
        v13 = 0;
        v12 = [(NSMutableData *)v8 bytes];
        v13 = [(NSMutableData *)v8 length];
        v7 = IOConnectCallScalarMethod(connect, 1u, &v12, 2u, 0, 0);
      }
    }

    [(PCIeNANDBootWriter *)self resetImages];
    if (a4 && v7)
    {
      *a4 = [NSError errorWithDomain:NSMachErrorDomain code:v7 userInfo:0];
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