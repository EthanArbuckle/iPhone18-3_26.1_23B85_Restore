@interface DPCHandleStoppedDNSQuestion
@end

@implementation DPCHandleStoppedDNSQuestion

BOOL __DPCHandleStoppedDNSQuestion_block_invoke(id a1, const mdns_subscriber_s *a2)
{
  if (gDPCSubscriberRegistries)
  {
    Value = CFDictionaryGetValue(gDPCSubscriberRegistries, *(*(a2 + 8) + 96));
    if (Value)
    {
      v4 = Value;
      CountOfValue = CFBagGetCountOfValue(Value, a2);
      if (CountOfValue >= 1)
      {
        v6 = CountOfValue;
        CFBagRemoveValue(v4, a2);
        if (v6 == 1)
        {
          mdns_client_invalidate(a2);
        }
      }
    }
  }

  return 1;
}

@end