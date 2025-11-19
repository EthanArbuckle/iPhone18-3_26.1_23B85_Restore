@interface WCM_AriCoexCommandHandlerV2
- (WCM_AriCoexCommandHandlerV2)init;
- (void)setDefaultMiscConfig;
@end

@implementation WCM_AriCoexCommandHandlerV2

- (WCM_AriCoexCommandHandlerV2)init
{
  v4.receiver = self;
  v4.super_class = WCM_AriCoexCommandHandlerV2;
  v2 = [(WCM_AriCoexCommandHandler *)&v4 init];
  [WCM_Logging logLevel:3 message:@"Coex ARI driver: Init the WCM_AriCoexCommandHandlerV2"];
  return v2;
}

- (void)setDefaultMiscConfig
{
  [(WCM_AriCoexCommandHandlerV2 *)self setCellularMiscConfigToSubId:0 uwbInactThre_ms:100 clientSRSPowerLimit:504];

  [(WCM_AriCoexCommandHandlerV2 *)self setCellularMiscConfigToSubId:1 uwbInactThre_ms:100 clientSRSPowerLimit:504];
}

@end