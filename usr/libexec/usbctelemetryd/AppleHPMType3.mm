@interface AppleHPMType3
- (int)getBootFlags;
@end

@implementation AppleHPMType3

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
      v7 = [NSNumber numberWithUnsignedChar:BytePtr[1] >> 3];
      [(NSMutableDictionary *)self->super._analyticsDict setObject:v7 forKeyedSubscript:@"DFUReason"];

      v8 = [NSNumber numberWithBool:v6[2] & 1];
      [(NSMutableDictionary *)self->super._analyticsDict setObject:v8 forKeyedSubscript:@"NoVINFlag"];

      v9 = [NSNumber numberWithBool:v6[2] >> 7];
      [(NSMutableDictionary *)self->super._analyticsDict setObject:v9 forKeyedSubscript:@"MainThermalShutdown"];

      v10 = [NSNumber numberWithUnsignedChar:v6[4] & 3];
      [(NSMutableDictionary *)self->super._analyticsDict setObject:v10 forKeyedSubscript:@"TrustEvaluationStatus"];

      v11 = [NSNumber numberWithUnsignedChar:(v6[4] >> 3) & 0xF];
      [(NSMutableDictionary *)self->super._analyticsDict setObject:v11 forKeyedSubscript:@"Img4DecodeError"];

      0x1F = [NSNumber numberWithUnsignedChar:v6[5] & 0x1F];
      [(NSMutableDictionary *)self->super._analyticsDict setObject:0x1F forKeyedSubscript:@"Img4PropertyErrorCode"];

      v13 = [NSNumber numberWithBool:(v6[7] >> 1) & 1];
      [(NSMutableDictionary *)self->super._analyticsDict setObject:v13 forKeyedSubscript:@"PatchPresent"];

      v14 = [NSNumber numberWithBool:(v6[7] >> 2) & 1];
      [(NSMutableDictionary *)self->super._analyticsDict setObject:v14 forKeyedSubscript:@"PatchValid"];

      v15 = [NSNumber numberWithBool:(v6[7] >> 3) & 1];
      [(NSMutableDictionary *)self->super._analyticsDict setObject:v15 forKeyedSubscript:@"ACSRAMPresent"];

      v16 = [NSNumber numberWithBool:(v6[7] >> 4) & 1];
      [(NSMutableDictionary *)self->super._analyticsDict setObject:v16 forKeyedSubscript:@"ACSRAMValid"];

      v17 = [NSNumber numberWithBool:(v6[7] >> 5) & 1];
      [(NSMutableDictionary *)self->super._analyticsDict setObject:v17 forKeyedSubscript:@"ACOTPPresent"];

      v18 = [NSNumber numberWithBool:(v6[7] >> 6) & 1];
      [(NSMutableDictionary *)self->super._analyticsDict setObject:v18 forKeyedSubscript:@"ACOTPValid"];

      CFRelease(v4);
      return 0;
    }

    else
    {
      v19 = -536870212;
      CFRelease(v4);
    }
  }

  else
  {
    v19 = -536870212;
    if (os_log_type_enabled(self->super.logger, OS_LOG_TYPE_ERROR))
    {
      sub_100001B68();
    }
  }

  return v19;
}

@end