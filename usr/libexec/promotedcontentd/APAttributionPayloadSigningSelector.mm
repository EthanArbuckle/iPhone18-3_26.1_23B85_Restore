@interface APAttributionPayloadSigningSelector
+ (id)selectorWithAttributionConfig;
- (APAttributionPayloadSigningSelector)initWithSigningPercentageFPDIValue:(unsigned int)value;
- (int64_t)selectRandomSigningService;
@end

@implementation APAttributionPayloadSigningSelector

+ (id)selectorWithAttributionConfig
{
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Loading attribution config", &v13, 2u);
  }

  v4 = [APConfigurationMediator configurationForClass:objc_opt_class()];
  v5 = v4;
  if (v4 && ([v4 signingPercentageFPDI], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = APLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      signingPercentageFPDI = [v5 signingPercentageFPDI];
      v13 = 138412290;
      v14 = signingPercentageFPDI;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Using attribution config loaded value %@", &v13, 0xCu);
    }

    signingPercentageFPDI2 = [v5 signingPercentageFPDI];
    unsignedIntValue = [signingPercentageFPDI2 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 10000;
  }

  v11 = [[self alloc] initWithSigningPercentageFPDIValue:unsignedIntValue];

  return v11;
}

- (APAttributionPayloadSigningSelector)initWithSigningPercentageFPDIValue:(unsigned int)value
{
  v5.receiver = self;
  v5.super_class = APAttributionPayloadSigningSelector;
  result = [(APAttributionPayloadSigningSelector *)&v5 init];
  if (result)
  {
    result->_signingPercentageFPDI = value;
  }

  return result;
}

- (int64_t)selectRandomSigningService
{
  v3 = arc4random_uniform(0x2710u);
  v4 = APLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v12 = 67109120;
    LODWORD(v13) = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Signging service selector random number chosen (%u)", &v12, 8u);
  }

  signingPercentageFPDI = [(APAttributionPayloadSigningSelector *)self signingPercentageFPDI];
  v6 = APLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = @"FPDI service";
    if (v3 > signingPercentageFPDI)
    {
      v7 = @"Mescal service";
    }

    v8 = v7;
    signingPercentageFPDI2 = [(APAttributionPayloadSigningSelector *)self signingPercentageFPDI];
    v12 = 138412546;
    v13 = v8;
    v14 = 1024;
    v15 = signingPercentageFPDI2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Selected [(%@)] for signing threshold (%d)", &v12, 0x12u);
  }

  if (v3 <= signingPercentageFPDI)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  return v10;
}

@end