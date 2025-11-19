@interface NRLinkManager
- (BOOL)endpointsAreCompatible:(id)a3 remoteEndpoint:(id)a4;
- (BOOL)shouldCreateLinkForNRUUID:(id)a3;
- (id)initManagerWithQueue:(id)a3 managerDelegate:(id)a4;
- (void)reportEvent:(unsigned int)a3 details:(id)a4;
@end

@implementation NRLinkManager

- (BOOL)endpointsAreCompatible:(id)a3 remoteEndpoint:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 addressFamily];
  if (v7 != [v6 addressFamily])
  {
    goto LABEL_3;
  }

  v8 = [v5 hostname];
  v9 = [v6 hostname];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    goto LABEL_3;
  }

  v13 = [v5 address];
  v14 = [v6 address];
  if ([v5 addressFamily] != 2)
  {
    if ([v5 addressFamily] == 30)
    {
      v15 = v13[8] == 254 && (v13[9] & 0xC0) == 128;
      if (v14[8] == 254)
      {
        if (v15 == ((v14[9] & 0xC0) == 128))
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

  if ((*(v13 + 2) == -343) != (*(v14 + 2) != -343))
  {
    goto LABEL_16;
  }

LABEL_3:
  v11 = 0;
LABEL_4:

  return v11;
}

- (BOOL)shouldCreateLinkForNRUUID:(id)a3
{
  v4 = a3;
  if (self)
  {
    if (self->_type)
    {
      v5 = sub_100163A30(NRDLocalDevice, v4);
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
        v11 = [v10 allowedLinkTypes];
        v12 = [NSNumber numberWithUnsignedChar:self->_type];
        LOBYTE(self) = [v11 containsObject:v12];
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

- (void)reportEvent:(unsigned int)a3 details:(id)a4
{
  v6 = a4;
  v7 = [(NRLinkManager *)self copyName];
  sub_1000059A8(0, a3, v7, v6);
}

- (id)initManagerWithQueue:(id)a3 managerDelegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v13 = sub_1000E7D20();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  dispatch_assert_queue_V2(v7);
  if (!v8)
  {
    v15 = sub_1000E7D20();
    v16 = _NRLogIsLevelEnabled();

    if (v16)
    {
LABEL_9:
      v17 = sub_1000E7D20();
      _NRLogWithArgs();

      v11 = 0;
      goto LABEL_5;
    }

LABEL_10:
    v11 = 0;
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
  objc_storeWeak(&v9->_managerDelegate, v8);
  objc_storeStrong(p_isa + 3, a3);
  self = p_isa;
  v11 = self;
LABEL_5:

  return v11;
}

@end