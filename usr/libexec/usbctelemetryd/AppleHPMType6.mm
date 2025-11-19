@interface AppleHPMType6
- (int)getBootFlags;
@end

@implementation AppleHPMType6

- (int)getBootFlags
{
  CFProperty = IORegistryEntryCreateCFProperty(self->super.appleHPMInterfaceService, @"Boot Flags", kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v4 = CFProperty;
    BytePtr = CFDataGetBytePtr(CFProperty);
    if (BytePtr)
    {
      v6 = BytePtr;
      v7 = [NSNumber numberWithUnsignedChar:*BytePtr & 7];
      [(NSMutableDictionary *)self->super._analyticsDict setObject:v7 forKeyedSubscript:@"BootStage"];

      v8 = [NSNumber numberWithBool:(*v6 >> 3) & 1];
      [(NSMutableDictionary *)self->super._analyticsDict setObject:v8 forKeyedSubscript:@"OTPACParseError"];

      v9 = [NSNumber numberWithBool:(*v6 >> 4) & 1];
      [(NSMutableDictionary *)self->super._analyticsDict setObject:v9 forKeyedSubscript:@"SRAMACParseError"];

      v10 = [NSNumber numberWithBool:(*v6 >> 5) & 1];
      [(NSMutableDictionary *)self->super._analyticsDict setObject:v10 forKeyedSubscript:@"ACParseSuccessful"];

      v11 = [NSNumber numberWithBool:(*v6 >> 6) & 1];
      [(NSMutableDictionary *)self->super._analyticsDict setObject:v11 forKeyedSubscript:@"StringTableLoadedFromAC"];

      v12 = [NSNumber numberWithUnsignedChar:v6[3] & 3 | (4 * (v6[2] & 0x3Fu))];
      [(NSMutableDictionary *)self->super._analyticsDict setObject:v12 forKeyedSubscript:@"OTPErrorOffset"];

      v13 = [NSNumber numberWithBool:(v6[3] >> 2) & 1];
      [(NSMutableDictionary *)self->super._analyticsDict setObject:v13 forKeyedSubscript:@"CPROReadError"];

      v14 = [NSNumber numberWithBool:(v6[3] >> 3) & 1];
      [(NSMutableDictionary *)self->super._analyticsDict setObject:v14 forKeyedSubscript:@"ACReadError"];

      v15 = [NSNumber numberWithBool:(v6[3] >> 4) & 1];
      [(NSMutableDictionary *)self->super._analyticsDict setObject:v15 forKeyedSubscript:@"VendorZoneError"];

      v16 = [NSNumber numberWithBool:(v6[3] >> 5) & 1];
      [(NSMutableDictionary *)self->super._analyticsDict setObject:v16 forKeyedSubscript:@"AutoLoadError"];

      v17 = [NSNumber numberWithBool:(v6[3] >> 6) & 1];
      [(NSMutableDictionary *)self->super._analyticsDict setObject:v17 forKeyedSubscript:@"SIDReadError"];

      v18 = [NSNumber numberWithUnsignedInt:(v6[5] << 8) | ((v6[6] & 0xF) << 16) | v6[4]];
      [(NSMutableDictionary *)self->super._analyticsDict setObject:v18 forKeyedSubscript:@"ErrorInstructionOffset"];

      HIDWORD(v19) = v6[7];
      LODWORD(v19) = v6[6] << 24;
      v20 = [NSNumber numberWithUnsignedInt:(v19 >> 28)];
      [(NSMutableDictionary *)self->super._analyticsDict setObject:v20 forKeyedSubscript:@"ErrorCode"];

      v21 = [NSNumber numberWithUnsignedInt:v6[7] >> 4];
      [(NSMutableDictionary *)self->super._analyticsDict setObject:v21 forKeyedSubscript:@"ErrorDevice"];

      v22 = [NSNumber numberWithUnsignedInt:*(v6 + 2)];
      [(NSMutableDictionary *)self->super._analyticsDict setObject:v22 forKeyedSubscript:@"ErrorCount"];

      v23 = [NSNumber numberWithUnsignedChar:v6[12]];
      [(NSMutableDictionary *)self->super._analyticsDict setObject:v23 forKeyedSubscript:@"LastReset"];

      return 0;
    }

    else
    {
      v24 = -536870212;
      CFRelease(v4);
    }
  }

  else
  {
    v24 = -536870212;
    if (os_log_type_enabled(self->super.logger, OS_LOG_TYPE_ERROR))
    {
      sub_100001B68();
    }
  }

  return v24;
}

@end