@interface WCM_BTConnection
- (BOOL)isEqual:(id)a3;
- (WCM_BTConnection)init;
- (WCM_BTConnection)initWithCBDevice:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    if (self == a3)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v5 = [a3 isMemberOfClass:objc_opt_class()];
      if (v5)
      {
        v6 = [-[WCM_BTConnection getAddress](self "getAddress")];
        v7 = [(WCM_BTConnection *)self getActiveService];
        if (v7 == [a3 getActiveService])
        {
          v8 = v6;
        }

        else
        {
          v8 = 0;
        }

        v9 = [(WCM_BTConnection *)self getInterval];
        if (v9 == [a3 getInterval])
        {
          v10 = v8;
        }

        else
        {
          v10 = 0;
        }

        v11 = [(WCM_BTConnection *)self getRole];
        if (v11 == [a3 getRole])
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

- (WCM_BTConnection)initWithCBDevice:(id)a3
{
  v5 = [NSString alloc];
  [a3 btAddressData];
  self->mAddress = [v5 initWithString:CUPrintNSDataAddress()];
  if (([a3 connectedServices] & 0x20) != 0)
  {
    v6 = 625;
    v7 = 1;
  }

  else
  {
    if (([a3 connectedServices] & 0x400000) == 0)
    {
      goto LABEL_6;
    }

    v6 = 1250;
    v7 = 2;
  }

  self->mActiveSerivce = v7;
  self->mInterval = [a3 interval] * v6;
LABEL_6:
  if (([a3 deviceFlags] & 0x200000) != 0)
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