@interface PCIeNANDiBootUpdater
+ (id)IOMatchingPropertyTable;
- (BOOL)updateBootFirmwareWithError:(id *)a3;
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

- (BOOL)updateBootFirmwareWithError:(id *)a3
{
  v5 = [(PCIeNANDiBootUpdater *)self writer];
  [(PCIeNANDBootWriter *)v5 setIsErase:[(MSUBootFirmwareUpdater *)self isErase]];
  [(PCIeNANDBootWriter *)v5 setShouldCommit:[(MSUBootFirmwareUpdater *)self shouldCommit]];
  return [(PCIeNANDBootWriter *)v5 writeFirmware:self error:a3]== 0;
}

@end