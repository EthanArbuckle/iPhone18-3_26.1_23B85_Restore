@interface PCIeNANDiBootUpdater
+ (id)IOMatchingPropertyTable;
- (BOOL)updateBootFirmwareWithError:(id *)error;
- (void)dealloc;
@end

@implementation PCIeNANDiBootUpdater

+ (id)IOMatchingPropertyTable
{
  v3 = @"IOProviderClass";
  v4 = @"AppleEmbeddedNVMeController";
  return [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PCIeNANDiBootUpdater;
  [(MSUBootFirmwareUpdater *)&v3 dealloc];
}

- (BOOL)updateBootFirmwareWithError:(id *)error
{
  writer = [(PCIeNANDiBootUpdater *)self writer];
  [(PCIeNANDBootWriter *)writer setIsErase:[(MSUBootFirmwareUpdater *)self isErase]];
  [(PCIeNANDBootWriter *)writer setShouldCommit:[(MSUBootFirmwareUpdater *)self shouldCommit]];
  return [(PCIeNANDBootWriter *)writer writeFirmware:self error:error]== 0;
}

@end