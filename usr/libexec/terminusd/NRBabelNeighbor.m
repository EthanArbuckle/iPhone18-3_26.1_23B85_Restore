@interface NRBabelNeighbor
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesAddress:(const in6_addr *)a3 babelInterface:(id)a4;
- (NRBabelNeighbor)initWithAddress:(const in6_addr *)a3 babelInterface:(id)a4;
- (NSString)description;
- (id)createIHUTLV;
- (id)createPersonalHelloTLV;
- (id)descriptionWithNextHop:(const in6_addr *)a3;
- (in6_addr)address;
- (unsigned)metric;
- (void)dealloc;
- (void)enqueueNextIHU;
- (void)enqueueNextUpdate;
- (void)handleDTLSStack:(id)a3 inboundDecryptedData:(id)a4;
- (void)handleDTLSStack:(id)a3 outboundEncryptedData:(id)a4;
- (void)handleIsReady:(id)a3;
- (void)processPendingOutgoingPackets;
- (void)resetIncomingHelloTimer:(BOOL)a3 personal:(BOOL)a4;
- (void)resetIncomingIHUTimerInterval:(unsigned __int16)a3;
- (void)sendTLVs:(id)a3;
@end

@implementation NRBabelNeighbor

- (in6_addr)address
{
  v2 = *&self->_address.__u6_addr32[2];
  v3 = *self->_address.__u6_addr8;
  *&result.__u6_addr32[2] = v2;
  *result.__u6_addr8 = v3;
  return result;
}

- (void)handleDTLSStack:(id)a3 inboundDecryptedData:(id)a4
{
  v14 = a4;
  v5 = [(NRBabelNeighbor *)self babelInterface];
  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    v6 = qword_1002290F8;
    v12 = self;
    v13 = [v14 length];
    v11 = 1867;
    v9 = "";
    v10 = "[NRBabelNeighbor handleDTLSStack:inboundDecryptedData:]";
    _NRLogWithArgs();
  }

  v7 = [(NRBabelNeighbor *)self babelInterface:v9];
  v8 = [v7 instance];
  [v8 handlePacket:objc_msgSend(v14 length:"bytes") remoteAddr:objc_msgSend(v14 localAddr:"length") babelInterface:&self->_address dtls:{objc_msgSend(v5, "localAddress"), v5, 1}];
}

- (void)handleDTLSStack:(id)a3 outboundEncryptedData:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    v8 = qword_1002290F8;
    v13 = self;
    v14 = [v7 length];
    v12 = 1855;
    v10 = "";
    v11 = "[NRBabelNeighbor handleDTLSStack:outboundEncryptedData:]";
    _NRLogWithArgs();
  }

  v15[0] = [v7 bytes];
  v15[1] = [v7 length];
  v9 = [(NRBabelNeighbor *)self babelInterface];
  [v9 sendPacket:v15 iovLen:1 toAddr:&self->_address];
}

- (void)handleIsReady:(id)a3
{
  v11 = a3;
  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    v9 = self;
    v10 = v11;
    v8 = 1847;
    v6 = "";
    v7 = "[NRBabelNeighbor handleIsReady:]";
    _NRLogWithArgs();
  }

  [(NRBabelNeighbor *)self setDtlsReady:1, v6, v7, v8, v9, v10];
  v4 = [(NRBabelNeighbor *)self babelInterface];
  v5 = [v4 instance];
  [v5 sendImmediateRouteUpdateToNeighbor:self];
}

- (void)sendTLVs:(id)a3
{
  v4 = a3;
  if (![v4 count])
  {
    goto LABEL_35;
  }

  v5 = [v4 count];
  v6 = v5 + 1;
  if (v5 == -1)
  {
    v32 = sub_1000CB9A8();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v34 = sub_1000CB9A8();
      _NRLogWithArgs();
    }

    v23 = _os_log_pack_size();
    v13 = &v42 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = *__error();
    v36 = _os_log_pack_fill();
    *v36 = 136446210;
    *(v36 + 4) = "[NRBabelNeighbor sendTLVs:]";
LABEL_39:
    sub_1000CB9A8();
    _NRLogAbortWithPack();
LABEL_40:
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
LABEL_20:
    v8 = v42;
    v6 = v43;
    if (_NRLogIsLevelEnabled())
    {
      if (v23[32] != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      _NRLogWithArgs();
    }

    goto LABEL_25;
  }

  v7 = malloc_type_calloc(v5 + 1, 0x10uLL, 0x5E37AA57uLL);
  if (!v7)
  {
    v37 = sub_1000CB9A8();
    v38 = _NRLogIsLevelEnabled();

    if (v38)
    {
      v39 = sub_1000CB9A8();
      _NRLogWithArgs();
    }

    v23 = _os_log_pack_size();
    v13 = &v42 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = *__error();
    v41 = _os_log_pack_fill();
    *v41 = 136446722;
    *(v41 + 4) = "[NRBabelNeighbor sendTLVs:]";
    *(v41 + 12) = 2048;
    *(v41 + 14) = v6;
    *(v41 + 22) = 2048;
    *(v41 + 24) = 16;
    goto LABEL_39;
  }

  v8 = v7;
  v58 = 554;
  *v7 = &v58;
  *(v7 + 1) = 4;
  v44 = self;
  v9 = [(NRBabelNeighbor *)self babelInterface];
  v10 = [v9 mtu];

  v45 = v4;
  v46 = objc_alloc_init(NSMutableArray);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v47 = v4;
  v11 = [v47 countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v11)
  {
    v12 = v11;
    LODWORD(v13) = 0;
    v48 = v10 - 4;
    v49 = *v55;
    v14 = v8 + 8;
    v15 = 1;
    v42 = v8;
    v43 = v6;
LABEL_6:
    v16 = 0;
    v17 = v15;
    if (v6 >= v15)
    {
      v18 = (v6 - v15);
    }

    else
    {
      v18 = 0;
    }

    v19 = &v14[16 * v15];
    while (1)
    {
      if (*v55 != v49)
      {
        objc_enumerationMutation(v47);
      }

      if (v18 == v16)
      {
        break;
      }

      v20 = *(*(&v54 + 1) + 8 * v16);
      v21 = [v20 length];
      v22 = v13 + v21;
      if ((v13 + v21) > v48)
      {
        [v46 addObject:v20];
      }

      else
      {
        *(v19 - 1) = [v20 bytes];
        *v19 = [v20 length];
        LODWORD(v13) = v22;
      }

      ++v17;
      v16 = v16 + 1;
      v19 += 16;
      if (v12 == v16)
      {
        v12 = [v47 countByEnumeratingWithState:&v54 objects:v60 count:16];
        v15 = v17;
        v8 = v42;
        v6 = v43;
        if (v12)
        {
          goto LABEL_6;
        }

        goto LABEL_25;
      }
    }

    v23 = &qword_100229000;
    if (qword_100229100 != -1)
    {
      goto LABEL_40;
    }

    goto LABEL_20;
  }

  LODWORD(v13) = 0;
LABEL_25:
  v24 = v47;

  HIWORD(v58) = bswap32(v13) >> 16;
  v25 = v44;
  [(NRBabelNeighbor *)v44 sendFullPacket:v8 iovLen:v6];
  free(v8);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v26 = v24;
  v27 = [v26 countByEnumeratingWithState:&v50 objects:v59 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v51;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v51 != v29)
        {
          objc_enumerationMutation(v26);
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v50 objects:v59 count:16];
    }

    while (v28);
  }

  v31 = v46;
  if ([v46 count])
  {
    [(NRBabelNeighbor *)v25 sendTLVs:v31];
  }

  v4 = v45;
LABEL_35:
}

- (unsigned)metric
{
  txcost = self->_txcost;
  v3 = -1;
  if (txcost != 0xFFFF)
  {
    if (txcost <= 0x100)
    {
      v4 = 256;
    }

    else
    {
      v4 = self->_txcost;
    }

    v5 = self->_rxcost * v4;
    if (v5 > 0xFFFEFF)
    {
      return -1;
    }

    else
    {
      return v5 >> 8;
    }
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 matchesAddress:&self->_address babelInterface:self->_babelInterface];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)descriptionWithNextHop:(const in6_addr *)a3
{
  v4 = [(NRBabelNeighbor *)self matchesAddress:?];
  v5 = [NSString alloc];
  if (v4)
  {
    IPv6AddrString = [(NRBabelNeighbor *)self description];
    v7 = [v5 initWithString:IPv6AddrString];
  }

  else
  {
    IPv6AddrString = createIPv6AddrString();
    v7 = [v5 initWithFormat:@"%@(nh %@)", self, IPv6AddrString];
  }

  v8 = v7;

  return v8;
}

- (NSString)description
{
  v3 = [NSString alloc];
  IPv6AddrString = createIPv6AddrString();
  babelInterface = self->_babelInterface;
  v6 = [(NRBabelNeighbor *)self dtlsEnabled];
  v7 = "";
  if (v6)
  {
    v7 = "_DTLS";
  }

  v8 = [v3 initWithFormat:@"%@[%@]%s", IPv6AddrString, babelInterface, v7];

  return v8;
}

- (BOOL)matchesAddress:(const in6_addr *)a3 babelInterface:(id)a4
{
  v6 = [(NRBabelInterface *)self->_babelInterface isEqual:a4];
  if (v6)
  {

    LOBYTE(v6) = [(NRBabelNeighbor *)self matchesAddress:a3];
  }

  return v6;
}

- (NRBabelNeighbor)initWithAddress:(const in6_addr *)a3 babelInterface:(id)a4
{
  v4 = a4;
  v7 = a4;
  v8 = [v7 instance];
  if (v8)
  {
    v56.receiver = self;
    v56.super_class = NRBabelNeighbor;
    v9 = [(NRBabelNeighbor *)&v56 init];
    if (v9)
    {
      self = v9;
      v9->_address = *a3;
      objc_storeStrong(&v9->_babelInterface, v4);
      if (![v7 dtlsEnabled])
      {
LABEL_17:
        self->_outgoingPersonalHelloSeqno = arc4random_uniform(0x10000u);
        self->_incomingPublicHelloHistory = 0xFFFFLL;
        self->_incomingPersonalHelloHistory = 0xFFFFLL;
        *&self->_outgoingIHUInterval = -4059036496;
        v20 = [v8 queue];
        v21 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v20);
        incomingPublicHelloTimer = self->_incomingPublicHelloTimer;
        self->_incomingPublicHelloTimer = v21;

        v23 = [v8 queue];
        v24 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v23);
        incomingPersonalHelloTimer = self->_incomingPersonalHelloTimer;
        self->_incomingPersonalHelloTimer = v24;

        v26 = [v8 queue];
        v27 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v26);
        incomingIHUTimer = self->_incomingIHUTimer;
        self->_incomingIHUTimer = v27;

        v29 = [v8 queue];
        v30 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v29);
        pendingOutgoingTimer = self->_pendingOutgoingTimer;
        self->_pendingOutgoingTimer = v30;

        v32 = objc_alloc_init(NSMutableArray);
        pendingOutgoingPackets = self->_pendingOutgoingPackets;
        self->_pendingOutgoingPackets = v32;

        v34 = objc_alloc_init(NRBabelPendingOutgoingTLVs);
        [(NRBabelPendingOutgoingTLVs *)v34 setRepresentsIHU:1];
        [(NRBabelPendingOutgoingTLVs *)v34 setRepresentsUpdate:1];
        [(NSMutableArray *)self->_pendingOutgoingPackets addObject:v34];
        [(NRBabelNeighbor *)self processPendingOutgoingPackets];
        objc_initWeak(&location, self);
        v35 = self->_pendingOutgoingTimer;
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_1000D0438;
        handler[3] = &unk_1001FC730;
        objc_copyWeak(&v54, &location);
        dispatch_source_set_event_handler(v35, handler);
        dispatch_activate(self->_pendingOutgoingTimer);
        v36 = self->_incomingPublicHelloTimer;
        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = sub_1000D047C;
        v51[3] = &unk_1001FC730;
        objc_copyWeak(&v52, &location);
        dispatch_source_set_event_handler(v36, v51);
        dispatch_activate(self->_incomingPublicHelloTimer);
        v37 = self->_incomingPersonalHelloTimer;
        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v49[2] = sub_1000D04C8;
        v49[3] = &unk_1001FC730;
        objc_copyWeak(&v50, &location);
        dispatch_source_set_event_handler(v37, v49);
        dispatch_activate(self->_incomingPersonalHelloTimer);
        v38 = self->_incomingIHUTimer;
        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_1000D0514;
        v47[3] = &unk_1001FC730;
        objc_copyWeak(&v48, &location);
        dispatch_source_set_event_handler(v38, v47);
        dispatch_activate(self->_incomingIHUTimer);
        self = self;
        objc_destroyWeak(&v48);
        objc_destroyWeak(&v50);
        objc_destroyWeak(&v52);
        objc_destroyWeak(&v54);
        objc_destroyWeak(&location);

        v14 = self;
        goto LABEL_18;
      }

      [(NRBabelNeighbor *)self setDtlsEnabled:1];
      v4 = [(NRBabelNeighbor *)self babelInterface];
      v10 = [v4 localAddress];
      v11 = bswap64(*a3->__u6_addr8);
      v12 = bswap64(*v10);
      if (v11 == v12 && (v11 = bswap64(*&a3->__u6_addr32[2]), v12 = bswap64(v10[1]), v11 == v12))
      {
        v13 = 0;
      }

      else if (v11 < v12)
      {
        v13 = -1;
      }

      else
      {
        v13 = 1;
      }

      v15 = v13 > 0;
      v16 = [NRDDTLSStack alloc];
      v17 = [v8 queue];
      v18 = sub_100158C54(&v16->super.isa, v17, v15, self);
      [(NRBabelNeighbor *)self setDtlsStack:v18];

      a3 = &qword_100229000;
      if (qword_100229100 == -1)
      {
LABEL_12:
        if (_NRLogIsLevelEnabled())
        {
          if (*a3[16].__u6_addr8 != -1)
          {
            dispatch_once(&qword_100229100, &stru_1001FB6C8);
          }

          v19 = qword_1002290F8;
          v45 = [(NRBabelNeighbor *)self dtlsStack];
          _NRLogWithArgs();
        }

        goto LABEL_17;
      }
    }

    else
    {
      v40 = sub_1000CB9A8();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v42 = sub_1000CB9A8();
        _NRLogWithArgs();
      }

      v7 = _os_log_pack_size();
      v8 = &v47[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v43 = *__error();
      v44 = _os_log_pack_fill();
      *v44 = 136446210;
      *(v44 + 4) = "[NRBabelNeighbor initWithAddress:babelInterface:]";
      sub_1000CB9A8();
      _NRLogAbortWithPack();
    }

    dispatch_once(&qword_100229100, &stru_1001FB6C8);
    goto LABEL_12;
  }

  v14 = 0;
LABEL_18:

  return v14;
}

- (void)resetIncomingIHUTimerInterval:(unsigned __int16)a3
{
  incomingIHUTimer = self->_incomingIHUTimer;
  v4 = dispatch_time(0x8000000000000000, 35000000 * a3);

  dispatch_source_set_timer(incomingIHUTimer, v4, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
}

- (void)resetIncomingHelloTimer:(BOOL)a3 personal:(BOOL)a4
{
  v4 = a3;
  v5 = 22;
  if (a4)
  {
    v5 = 26;
  }

  v6 = 80;
  if (a4)
  {
    v6 = 56;
  }

  v7 = *(&self->super.isa + v5);
  source = *(&self->super.isa + v6);
  v8 = 12500000 * v7;
  if (v7 <= 0x64)
  {
    v8 = 17500000 * v7;
  }

  if (v4)
  {
    v9 = v8;
  }

  else
  {
    v9 = 10000000 * v7;
  }

  v10 = dispatch_time(0x8000000000000000, v9);
  dispatch_source_set_timer(source, v10, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
}

- (void)dealloc
{
  incomingPublicHelloTimer = self->_incomingPublicHelloTimer;
  if (incomingPublicHelloTimer)
  {
    dispatch_source_cancel(incomingPublicHelloTimer);
    v4 = self->_incomingPublicHelloTimer;
    self->_incomingPublicHelloTimer = 0;
  }

  incomingPersonalHelloTimer = self->_incomingPersonalHelloTimer;
  if (incomingPersonalHelloTimer)
  {
    dispatch_source_cancel(incomingPersonalHelloTimer);
    v6 = self->_incomingPersonalHelloTimer;
    self->_incomingPersonalHelloTimer = 0;
  }

  incomingIHUTimer = self->_incomingIHUTimer;
  if (incomingIHUTimer)
  {
    dispatch_source_cancel(incomingIHUTimer);
    v8 = self->_incomingIHUTimer;
    self->_incomingIHUTimer = 0;
  }

  pendingOutgoingTimer = self->_pendingOutgoingTimer;
  if (pendingOutgoingTimer)
  {
    dispatch_source_cancel(pendingOutgoingTimer);
    v10 = self->_pendingOutgoingTimer;
    self->_pendingOutgoingTimer = 0;
  }

  v11.receiver = self;
  v11.super_class = NRBabelNeighbor;
  [(NRBabelNeighbor *)&v11 dealloc];
}

- (void)processPendingOutgoingPackets
{
  v3 = [(NRBabelNeighbor *)self babelInterface];
  v4 = [v3 instance];

  if (!v4)
  {
    goto LABEL_107;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v6 = v5;
  v7 = objc_alloc_init(NSMutableArray);
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v98 = self;
  v8 = self->_pendingOutgoingPackets;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v115 objects:v124 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v116;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v116 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v115 + 1) + 8 * i);
        [v13 minTime];
        if (v14 <= v6)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v115 objects:v124 count:16];
    }

    while (v10);
  }

  v15 = &qword_100229000;
  if (![v7 count])
  {
    v28 = v98;
    if ([(NSMutableArray *)v98->_pendingOutgoingPackets count])
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        pendingOutgoingPackets = v98->_pendingOutgoingPackets;
        v30 = qword_1002290F8;
        v90 = *&v98;
        v91 = COERCE_DOUBLE([(NSMutableArray *)pendingOutgoingPackets count]);
        v89 = 1429;
        v86 = "";
        v87 = "[NRBabelNeighbor processPendingOutgoingPackets]";
        _NRLogWithArgs();
      }

      v95 = v7;
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v31 = v98->_pendingOutgoingPackets;
      v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v107 objects:v122 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v108;
        do
        {
          for (j = 0; j != v33; j = j + 1)
          {
            if (*v108 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v43 = *(*(&v107 + 1) + 8 * j);
            if (qword_100229100 != -1)
            {
              dispatch_once(&qword_100229100, &stru_1001FB6C8);
            }

            v44 = v15[31];
            if (_NRLogIsLevelEnabled())
            {
              if (qword_100229100 != -1)
              {
                dispatch_once(&qword_100229100, &stru_1001FB6C8);
              }

              v36 = v15[31];
              [v43 minTime];
              v38 = v37 - v6;
              [v43 maxTime];
              v40 = v39 - v6;
              v41 = v15;
              [v43 minTime];
              v42 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
              [v43 maxTime];
              [NSDate dateWithTimeIntervalSinceReferenceDate:?];
              v93 = v92 = v42;
              v90 = v38;
              v91 = v40;
              v89 = 1433;
              v86 = "";
              v87 = "[NRBabelNeighbor processPendingOutgoingPackets]";
              _NRLogWithArgs();

              v15 = v41;
            }
          }

          v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v107 objects:v122 count:16];
        }

        while (v33);
      }

      v7 = v95;
      v28 = v98;
    }

    else
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        v89 = 1436;
        v90 = *&v98;
        v86 = "";
        v87 = "[NRBabelNeighbor processPendingOutgoingPackets]";
        _NRLogWithArgs();
      }
    }

    goto LABEL_71;
  }

  v96 = v4;
  v97 = objc_alloc_init(NSMutableArray);
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v94 = v7;
  v16 = v7;
  v17 = [v16 countByEnumeratingWithState:&v111 objects:v123 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = 0;
    v21 = *v112;
    do
    {
      for (k = 0; k != v18; k = k + 1)
      {
        if (*v112 != v21)
        {
          objc_enumerationMutation(v16);
        }

        v23 = *(*(&v111 + 1) + 8 * k);
        v24 = [v23 representsIHU];
        v25 = [v23 representsUpdate];
        v26 = [v23 tlvs];

        if (v26)
        {
          v27 = [v23 tlvs];
          [v97 addObjectsFromArray:v27];
        }

        v20 |= v24;
        v19 |= v25;
        [(NSMutableArray *)v98->_pendingOutgoingPackets removeObject:v23];
      }

      v18 = [v16 countByEnumeratingWithState:&v111 objects:v123 count:16];
    }

    while (v18);
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

  v7 = v94;
  v4 = v96;
  v15 = &qword_100229000;
  v28 = v98;
  if (!_NRLogIsLevelEnabled())
  {
    if ((v20 & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_62:
    v49 = [(NRBabelNeighbor *)v28 createIHUTLV:v86];
    [v97 addObject:v49];

    v50 = [(NRBabelNeighbor *)v28 createPersonalHelloTLV];
    [v97 addObject:v50];

    if ((v19 & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

  if (v20)
  {
    v46 = "IHU+";
  }

  else
  {
    v46 = "";
  }

  if (v19)
  {
    v47 = "Update+";
  }

  else
  {
    v47 = "";
  }

  v48 = qword_1002290F8;
  v92 = [v97 count];
  v93 = v98;
  v90 = *&v46;
  v91 = *&v47;
  v28 = v98;
  v87 = "[NRBabelNeighbor processPendingOutgoingPackets]";
  v89 = 1410;
  v86 = "";
  _NRLogWithArgs();

  if (v20)
  {
    goto LABEL_62;
  }

LABEL_46:
  if (v19)
  {
LABEL_47:
    v45 = [v96 createUpdateTLVsWithInterval:{v28->_outgoingUpdateInterval, v86, v87}];
    [v97 addObjectsFromArray:v45];
  }

LABEL_48:
  [(NRBabelNeighbor *)v28 sendTLVs:v97, v86, v87];
  if (v20)
  {
    [(NRBabelNeighbor *)v28 enqueueNextIHU];
  }

  if (v19)
  {
    [(NRBabelNeighbor *)v28 enqueueNextUpdate];
  }

LABEL_71:
  if ([(NSMutableArray *)v28->_pendingOutgoingPackets count:v86])
  {
    v51 = [(NSMutableArray *)v28->_pendingOutgoingPackets objectAtIndexedSubscript:0];
    [v51 maxTime];
    v53 = v52;

    v54 = [(NSMutableArray *)v28->_pendingOutgoingPackets objectAtIndexedSubscript:0];
    [v54 minTime];
    v56 = v55;

    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v57 = v28->_pendingOutgoingPackets;
    v58 = [(NSMutableArray *)v57 countByEnumeratingWithState:&v103 objects:v121 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = *v104;
      do
      {
        for (m = 0; m != v59; m = m + 1)
        {
          if (*v104 != v60)
          {
            objc_enumerationMutation(v57);
          }

          v62 = *(*(&v103 + 1) + 8 * m);
          [v62 maxTime];
          if (v63 < v53)
          {
            [v62 maxTime];
            v53 = v64;
            [v62 minTime];
            v56 = v65;
          }
        }

        v59 = [(NSMutableArray *)v57 countByEnumeratingWithState:&v103 objects:v121 count:16];
      }

      while (v59);
    }

    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v66 = v98->_pendingOutgoingPackets;
    v67 = [(NSMutableArray *)v66 countByEnumeratingWithState:&v99 objects:v120 count:16];
    if (v67)
    {
      v68 = v67;
      v69 = *v100;
      do
      {
        for (n = 0; n != v68; n = n + 1)
        {
          if (*v100 != v69)
          {
            objc_enumerationMutation(v66);
          }

          v71 = *(*(&v99 + 1) + 8 * n);
          [v71 minTime];
          if (v56 < v72)
          {
            [v71 minTime];
            if (v73 < v53)
            {
              [v71 minTime];
              v56 = v74;
            }
          }
        }

        v68 = [(NSMutableArray *)v66 countByEnumeratingWithState:&v99 objects:v120 count:16];
      }

      while (v68);
    }

    v75 = v98->_pendingOutgoingTimer;
    if (v56 >= v53)
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      v76 = v15[31];
      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229100 != -1)
        {
          dispatch_once(&qword_100229100, &stru_1001FB6C8);
        }

        v77 = v15[31];
        v78 = [NSDate dateWithTimeIntervalSinceReferenceDate:v56];
        v88 = [NSDate dateWithTimeIntervalSinceReferenceDate:v53];
        _NRLogWithArgs();
      }

      v53 = v56 + 0.001;
    }

    v79 = (v53 - v56) * 2.32830644e-10 * arc4random();
    v80 = v79 + v56;
    when.tv_sec = vcvtmd_s64_f64(v80) + 978307200;
    when.tv_nsec = ((v80 - floor(v80)) * 1000000000.0);
    v81 = dispatch_walltime(&when, 0);
    v82 = (fmin(v79, v53 - v80) * 1000000000.0);
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    v83 = v15[31];
    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      v84 = v15[31];
      v85 = [NSDate dateWithTimeIntervalSinceReferenceDate:v80];
      +[NSDate timeIntervalSinceReferenceDate];
      _NRLogWithArgs();
    }

    dispatch_source_set_timer(v75, v81, 0xFFFFFFFFFFFFFFFFLL, v82);
  }

LABEL_107:
}

- (id)createPersonalHelloTLV
{
  v2 = self->_outgoingPersonalHelloSeqno + 1;
  self->_outgoingPersonalHelloSeqno = v2;
  v3 = bswap32(self->_outgoingIHUInterval);
  v6 = 8390148;
  v7 = bswap32(v2) >> 16;
  v8 = HIWORD(v3);
  v4 = [[NSData alloc] initWithBytes:&v6 length:8];

  return v4;
}

- (id)createIHUTLV
{
  v2 = bswap32(self->_rxcost);
  v3 = bswap32(self->_outgoingIHUInterval);
  v6 = 1541;
  v7 = HIWORD(v2);
  v8 = HIWORD(v3);
  v4 = [[NSData alloc] initWithBytes:&v6 length:8];

  return v4;
}

- (void)enqueueNextUpdate
{
  v3 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_pendingOutgoingPackets;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 representsUpdate])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_pendingOutgoingPackets removeObjectsInArray:v3];
  v10 = [[NRBabelPendingOutgoingTLVs alloc] initWithInterval:self->_outgoingUpdateInterval];
  [(NRBabelPendingOutgoingTLVs *)v10 setRepresentsUpdate:1];
  [(NSMutableArray *)self->_pendingOutgoingPackets addObject:v10];
}

- (void)enqueueNextIHU
{
  v3 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_pendingOutgoingPackets;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 representsIHU])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_pendingOutgoingPackets removeObjectsInArray:v3];
  v10 = [[NRBabelPendingOutgoingTLVs alloc] initWithInterval:self->_outgoingIHUInterval];
  [(NRBabelPendingOutgoingTLVs *)v10 setRepresentsIHU:1];
  [(NSMutableArray *)self->_pendingOutgoingPackets addObject:v10];
}

@end