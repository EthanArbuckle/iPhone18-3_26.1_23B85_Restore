@interface HAPBTLETuple
+ (id)atvState2String:(unint64_t)a3;
+ (id)state2String:(BTStatus *)a3;
+ (void)bandwidthFromATVState:(unint64_t)a3 MinBandwidth:(float *)a4 MaxBandwidth:(float *)a5;
- (BTStatus)state;
- (id)description;
- (void)setState:(BTStatus *)a3;
@end

@implementation HAPBTLETuple

+ (void)bandwidthFromATVState:(unint64_t)a3 MinBandwidth:(float *)a4 MaxBandwidth:(float *)a5
{
  v5 = 0;
  v6 = (a3 >> 1) & 2;
  if ((a3 & 2) != 0)
  {
    v6 = 1;
  }

  while ((qword_10023A930[v5] & a3) == 0)
  {
    if (++v5 == 4)
    {
      v7 = 0;
      goto LABEL_7;
    }
  }

  v7 = v5 + 1;
LABEL_7:
  v8 = 0;
  v9 = vand_s8(vshl_u32(vdup_n_s32(a3), 0xFFFFFFF9FFFFFFFALL), 0x100000001);
  while ((qword_10023A950[v8] & a3) == 0)
  {
    if (++v8 == 3)
    {
      v10 = 0;
      goto LABEL_12;
    }
  }

  v10 = v8 + 1;
LABEL_12:
  v11 = 0;
  while ((qword_10023A968[v11] & a3) == 0)
  {
    if (++v11 == 3)
    {
      v12 = 0;
      goto LABEL_17;
    }
  }

  v12 = v11 + 1;
LABEL_17:
  v13 = 0;
  while ((qword_10023A980[v13] & a3) == 0)
  {
    if (++v13 == 3)
    {
      v14 = 0;
      goto LABEL_22;
    }
  }

  v14 = v13 + 1;
LABEL_22:
  v15 = 0;
  v19[0] = v6;
  v19[1] = v10;
  v16 = 0.0;
  v20 = v9;
  v21 = v7;
  v22 = v12;
  v17 = 0.0;
  v23 = v14;
  do
  {
    v18 = v19[v15];
    v16 = fminf(v16 + (*&dword_10023A9A8[v15] * v18), 100.0);
    v17 = fminf(v17 + (*&dword_10023A9C4[v15++] * v18), 100.0);
  }

  while (v15 != 7);
  *a4 = v17;
  *a5 = v16;
}

+ (id)atvState2String:(unint64_t)a3
{
  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d ("), a3;
  if ([&off_100282538 count])
  {
    v5 = 0;
    do
    {
      if ((qword_10023A9E0[v5] & a3) != 0)
      {
        v6 = [&off_100282538 objectAtIndexedSubscript:v5];
        v7 = [NSString stringWithFormat:@"%@|%@", v4, v6];

        v4 = v7;
      }

      ++v5;
    }

    while ([&off_100282538 count] > v5);
  }

  v8 = [NSString stringWithFormat:@"%@"], v4);

  return v8;
}

+ (id)state2String:(BTStatus *)a3
{
  v4 = [NSString stringWithFormat:@"%@ LE devices            : %zu \n", &stru_10027BDA0, a3->lowEnergyConnections];
  v5 = [NSString stringWithFormat:@"%@ classic devices       : %zu \n", v4, a3->connectedDevices];

  v6 = [NSString stringWithFormat:@"%@ leRemote              : %zu \n", v5, a3->leRemote];

  v7 = [NSString stringWithFormat:@"%@ leAcc                 : %zu \n", v6, a3->leAcc];

  v8 = [NSString stringWithFormat:@"%@ btKb                  : %zu \n", v7, a3->btKB];

  v9 = [NSString stringWithFormat:@"%@ a2dp                  : %zu \n", v8, a3->a2dp];

  v10 = [NSString stringWithFormat:@"%@ btGC                  : %zu \n", v9, a3->btGC];

  v11 = [NSString stringWithFormat:@"%@ eAcc                  : %zu \n", v10, a3->eAcc];

  v12 = [NSString stringWithFormat:@"%@ HK                    : %zu \n", v11, a3->hk];

  v13 = [NSString stringWithFormat:@"%@ non-HID               : %zu \n", v12, a3->nonHIDConnections];

  v14 = [NSString stringWithFormat:@"%@ HID                   : %zu \n", v13, a3->connectedHIDDevices];

  v15 = [NSString stringWithFormat:@"%@ oneSniffAttemptDevices: %zu \n", v14, a3->oneSniffAttemptDevices];

  v16 = [NSString stringWithFormat:@"%@ twoSniffAttemptDevices: %zu \n", v15, a3->twoSniffAttemptDevices];

  v17 = [NSString stringWithFormat:@"%@ sco                   : %zu \n", v16, a3->sco];

  v18 = [NSString stringWithFormat:@"%@ wiap                  : %zu \n", v17, a3->wiap];

  v19 = [NSString stringWithFormat:@"%@ remote                : %zu \n", v18, a3->remote];

  if (a3->isScanning)
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  v21 = [NSString stringWithFormat:@"%@ scanning              : %@ \n", v19, v20];

  if (a3->isDiscoverable)
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  v23 = [NSString stringWithFormat:@"%@ discoverable          : %@ \n", v21, v22];

  if (a3->isConnectable)
  {
    v24 = @"YES";
  }

  else
  {
    v24 = @"NO";
  }

  v25 = [NSString stringWithFormat:@"%@ connectable           : %@ \n", v23, v24];

  return v25;
}

- (id)description
{
  if ([(HAPBTLETuple *)self atvState])
  {
    [HAPBTLETuple atvState2String:self->_atvState];
  }

  else
  {
    [HAPBTLETuple state2String:&self->_state];
  }
  v3 = ;

  return v3;
}

- (BTStatus)state
{
  v3 = *&self[1].leAcc;
  *&retstr->sco = *&self->isScanning;
  *&retstr->remote = v3;
  *&retstr->isScanning = self[1].a2dp;
  v4 = *&self->oneSniffAttemptDevices;
  *&retstr->btGC = *&self->nonHIDConnections;
  *&retstr->hk = v4;
  v5 = *&self->remote;
  *&retstr->nonHIDConnections = *&self->sco;
  *&retstr->oneSniffAttemptDevices = v5;
  v6 = *&self->hk;
  *&retstr->leRemote = *&self->btGC;
  *&retstr->btKB = v6;
  return self;
}

- (void)setState:(BTStatus *)a3
{
  *&self->_state.leRemote = *&a3->leRemote;
  v3 = *&a3->btKB;
  v4 = *&a3->btGC;
  v5 = *&a3->nonHIDConnections;
  *&self->_state.hk = *&a3->hk;
  *&self->_state.nonHIDConnections = v5;
  *&self->_state.btKB = v3;
  *&self->_state.btGC = v4;
  v6 = *&a3->oneSniffAttemptDevices;
  v7 = *&a3->sco;
  v8 = *&a3->remote;
  *&self->_state.isScanning = *&a3->isScanning;
  *&self->_state.sco = v7;
  *&self->_state.remote = v8;
  *&self->_state.oneSniffAttemptDevices = v6;
}

@end