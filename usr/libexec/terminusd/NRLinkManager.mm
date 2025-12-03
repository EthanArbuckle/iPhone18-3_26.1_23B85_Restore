@interface NRLinkManager
- (BOOL)endpointsAreCompatible:(id)compatible remoteEndpoint:(id)endpoint;
- (BOOL)shouldCreateLinkForNRUUID:(id)d;
- (id)initManagerWithQueue:(id)queue managerDelegate:(id)delegate;
- (void)reportEvent:(unsigned int)event details:(id)details;
@end

@implementation NRLinkManager

- (BOOL)endpointsAreCompatible:(id)compatible remoteEndpoint:(id)endpoint
{
  compatibleCopy = compatible;
  endpointCopy = endpoint;
  addressFamily = [compatibleCopy addressFamily];
  if (addressFamily != [endpointCopy addressFamily])
  {
    goto LABEL_3;
  }

  hostname = [compatibleCopy hostname];
  hostname2 = [endpointCopy hostname];
  v10 = [hostname isEqualToString:hostname2];

  if (v10)
  {
    goto LABEL_3;
  }

  address = [compatibleCopy address];
  address2 = [endpointCopy address];
  if ([compatibleCopy addressFamily] != 2)
  {
    if ([compatibleCopy addressFamily] == 30)
    {
      v15 = address[8] == 254 && (address[9] & 0xC0) == 128;
      if (address2[8] == 254)
      {
        if (v15 == ((address2[9] & 0xC0) == 128))
        {
          goto LABEL_16;
        }

        goto LABEL_3;
      }

      if (v15)
      {
        goto LABEL_3;
      }
    }

LABEL_16:
    v11 = 1;
    goto LABEL_4;
  }

  if ((*(address + 2) == -343) != (*(address2 + 2) != -343))
  {
    goto LABEL_16;
  }

LABEL_3:
  v11 = 0;
LABEL_4:

  return v11;
}

- (BOOL)shouldCreateLinkForNRUUID:(id)d
{
  dCopy = d;
  if (self)
  {
    if (self->_type)
    {
      v5 = sub_100163A30(NRDLocalDevice, dCopy);
      v6 = v5;
      if (v5)
      {
        v7 = *(v5 + 144);
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;

      if (v8)
      {
        if (v6)
        {
          v9 = v6[18];
        }

        else
        {
          v9 = 0;
        }

        v10 = v9;
        allowedLinkTypes = [v10 allowedLinkTypes];
        v12 = [NSNumber numberWithUnsignedChar:self->_type];
        LOBYTE(self) = [allowedLinkTypes containsObject:v12];
      }

      else
      {
        LOBYTE(self) = 1;
      }
    }

    else
    {
      LOBYTE(self) = 0;
    }
  }

  return self;
}

- (void)reportEvent:(unsigned int)event details:(id)details
{
  detailsCopy = details;
  copyName = [(NRLinkManager *)self copyName];
  sub_1000059A8(0, event, copyName, detailsCopy);
}

- (id)initManagerWithQueue:(id)queue managerDelegate:(id)delegate
{
  queueCopy = queue;
  delegateCopy = delegate;
  if (!queueCopy)
  {
    v13 = sub_1000E7D20();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  dispatch_assert_queue_V2(queueCopy);
  if (!delegateCopy)
  {
    v15 = sub_1000E7D20();
    v16 = _NRLogIsLevelEnabled();

    if (v16)
    {
LABEL_9:
      v17 = sub_1000E7D20();
      _NRLogWithArgs();

      selfCopy = 0;
      goto LABEL_5;
    }

LABEL_10:
    selfCopy = 0;
    goto LABEL_5;
  }

  v23.receiver = self;
  v23.super_class = NRLinkManager;
  v9 = [(NRLinkManager *)&v23 init];
  if (!v9)
  {
    v18 = sub_1000E7D20();
    v19 = _NRLogIsLevelEnabled();

    if (v19)
    {
      v20 = sub_1000E7D20();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v21 = *__error();
    v22 = _os_log_pack_fill();
    *v22 = 136446210;
    *(v22 + 4) = "[NRLinkManager initManagerWithQueue:managerDelegate:]";
    sub_1000E7D20();
    _NRLogAbortWithPack();
  }

  p_isa = &v9->super.isa;
  v9->_type = 0;
  v9->_state = 1001;
  objc_storeWeak(&v9->_managerDelegate, delegateCopy);
  objc_storeStrong(p_isa + 3, queue);
  self = p_isa;
  selfCopy = self;
LABEL_5:

  return selfCopy;
}

@end