@interface NRAnalyticsDataStall
- (void)submit;
@end

@implementation NRAnalyticsDataStall

- (void)submit
{
  if (self)
  {
    if (self->_stalledNexusVOOutput)
    {
      v3 = [NSNumber numberWithBool:1];
      [(NSMutableDictionary *)self->super._eventDictionary setObject:v3 forKeyedSubscript:@"stalledNexusVOOutput"];
    }

    if (self->_stalledNexusVIOutput)
    {
      v4 = [NSNumber numberWithBool:1];
      [(NSMutableDictionary *)self->super._eventDictionary setObject:v4 forKeyedSubscript:@"stalledNexusVIOutput"];
    }

    if (self->_stalledNexusOutput)
    {
      v5 = [NSNumber numberWithBool:1];
      [(NSMutableDictionary *)self->super._eventDictionary setObject:v5 forKeyedSubscript:@"stalledNexusOutput"];
    }

    if (self->_stalledNexusBKOutput)
    {
      v6 = [NSNumber numberWithBool:1];
      [(NSMutableDictionary *)self->super._eventDictionary setObject:v6 forKeyedSubscript:@"stalledNexusBKOutput"];
    }

    if (self->_stalledLinkOutput)
    {
      v7 = [NSNumber numberWithBool:1];
      [(NSMutableDictionary *)self->super._eventDictionary setObject:v7 forKeyedSubscript:@"stalledLinkOutput"];
    }

    if (self->_stalledUrgentLinkOutput)
    {
      v8 = [NSNumber numberWithBool:1];
      [(NSMutableDictionary *)self->super._eventDictionary setObject:v8 forKeyedSubscript:@"stalledUrgentLinkOutput"];
    }

    if (self->_stalledDatagramLinkOutput)
    {
      v9 = [NSNumber numberWithBool:1];
      [(NSMutableDictionary *)self->super._eventDictionary setObject:v9 forKeyedSubscript:@"stalledDatagramLinkOutput"];
    }

    if (self->_remediatedDataStall)
    {
      v10 = [NSNumber numberWithBool:1];
      [(NSMutableDictionary *)self->super._eventDictionary setObject:v10 forKeyedSubscript:@"remediatedDataStall"];
    }
  }

  sub_1001557BC(self, @"com.apple.networkrelay.analytics.dataStall");
}

@end