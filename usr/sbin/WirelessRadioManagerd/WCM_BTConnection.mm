@interface WCM_BTConnection
- (BOOL)isEqual:(id)equal;
- (WCM_BTConnection)init;
- (WCM_BTConnection)initWithCBDevice:(id)device;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation WCM_BTConnection

- (WCM_BTConnection)init
{
  v3.receiver = self;
  v3.super_class = WCM_BTConnection;
  result = [(WCM_BTConnection *)&v3 init];
  if (result)
  {
    result->mAddress = 0;
    result->mRole = 0;
    result->mActiveSerivce = 0;
    result->mInterval = 0;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    if (self == equal)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v5 = [equal isMemberOfClass:objc_opt_class()];
      if (v5)
      {
        v6 = [-[WCM_BTConnection getAddress](self "getAddress")];
        getActiveService = [(WCM_BTConnection *)self getActiveService];
        if (getActiveService == [equal getActiveService])
        {
          v8 = v6;
        }

        else
        {
          v8 = 0;
        }

        getInterval = [(WCM_BTConnection *)self getInterval];
        if (getInterval == [equal getInterval])
        {
          v10 = v8;
        }

        else
        {
          v10 = 0;
        }

        getRole = [(WCM_BTConnection *)self getRole];
        if (getRole == [equal getRole])
        {
          LOBYTE(v5) = v10;
        }

        else
        {
          LOBYTE(v5) = 0;
        }
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = 31 * [-[WCM_BTConnection getAddress](self "getAddress")];
  v4 = 31 * (v3 + [(WCM_BTConnection *)self getActiveService]);
  v5 = 31 * (v4 + [(WCM_BTConnection *)self getInterval]);
  return v5 + [(WCM_BTConnection *)self getRole]+ 923521;
}

- (WCM_BTConnection)initWithCBDevice:(id)device
{
  v5 = [NSString alloc];
  [device btAddressData];
  self->mAddress = [v5 initWithString:CUPrintNSDataAddress()];
  if (([device connectedServices] & 0x20) != 0)
  {
    v6 = 625;
    v7 = 1;
  }

  else
  {
    if (([device connectedServices] & 0x400000) == 0)
    {
      goto LABEL_6;
    }

    v6 = 1250;
    v7 = 2;
  }

  self->mActiveSerivce = v7;
  self->mInterval = [device interval] * v6;
LABEL_6:
  if (([device deviceFlags] & 0x200000) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  self->mRole = v8;
  return [WCM_Logging logLevel:2 message:@"Init new BT connection %@", [(WCM_BTConnection *)self description]];
}

- (void)dealloc
{
  mAddress = self->mAddress;
  if (mAddress)
  {
    [WCM_Logging logLevel:1 message:@"Releasing BT Connection Addr: %@", mAddress];
  }

  v4.receiver = self;
  v4.super_class = WCM_BTConnection;
  [(WCM_BTConnection *)&v4 dealloc];
}

@end