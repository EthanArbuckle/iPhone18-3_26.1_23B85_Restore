@interface HAPBTLETuple
+ (id)atvState2String:(unint64_t)string;
+ (id)state2String:(BTStatus *)string;
+ (void)bandwidthFromATVState:(unint64_t)state MinBandwidth:(float *)bandwidth MaxBandwidth:(float *)maxBandwidth;
- (BTStatus)state;
- (id)description;
- (void)setState:(BTStatus *)state;
@end

@implementation HAPBTLETuple

+ (void)bandwidthFromATVState:(unint64_t)state MinBandwidth:(float *)bandwidth MaxBandwidth:(float *)maxBandwidth
{
  v5 = 0;
  v6 = (state >> 1) & 2;
  if ((state & 2) != 0)
  {
    v6 = 1;
  }

  while ((qword_10023A930[v5] & state) == 0)
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
  v9 = vand_s8(vshl_u32(vdup_n_s32(state), 0xFFFFFFF9FFFFFFFALL), 0x100000001);
  while ((qword_10023A950[v8] & state) == 0)
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
  while ((qword_10023A968[v11] & state) == 0)
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
  while ((qword_10023A980[v13] & state) == 0)
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
  *bandwidth = v17;
  *maxBandwidth = v16;
}

+ (id)atvState2String:(unint64_t)string
{
  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d ("), string;
  if ([&off_100282538 count])
  {
    v5 = 0;
    do
    {
      if ((qword_10023A9E0[v5] & string) != 0)
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

+ (id)state2String:(BTStatus *)string
{
  v4 = [NSString stringWithFormat:@"%@ LE devices            : %zu \n", &stru_10027BDA0, string->lowEnergyConnections];
  v5 = [NSString stringWithFormat:@"%@ classic devices       : %zu \n", v4, string->connectedDevices];

  v6 = [NSString stringWithFormat:@"%@ leRemote              : %zu \n", v5, string->leRemote];

  v7 = [NSString stringWithFormat:@"%@ leAcc                 : %zu \n", v6, string->leAcc];

  v8 = [NSString stringWithFormat:@"%@ btKb                  : %zu \n", v7, string->btKB];

  v9 = [NSString stringWithFormat:@"%@ a2dp                  : %zu \n", v8, string->a2dp];

  v10 = [NSString stringWithFormat:@"%@ btGC                  : %zu \n", v9, string->btGC];

  v11 = [NSString stringWithFormat:@"%@ eAcc                  : %zu \n", v10, string->eAcc];

  v12 = [NSString stringWithFormat:@"%@ HK                    : %zu \n", v11, string->hk];

  v13 = [NSString stringWithFormat:@"%@ non-HID               : %zu \n", v12, string->nonHIDConnections];

  v14 = [NSString stringWithFormat:@"%@ HID                   : %zu \n", v13, string->connectedHIDDevices];

  v15 = [NSString stringWithFormat:@"%@ oneSniffAttemptDevices: %zu \n", v14, string->oneSniffAttemptDevices];

  v16 = [NSString stringWithFormat:@"%@ twoSniffAttemptDevices: %zu \n", v15, string->twoSniffAttemptDevices];

  v17 = [NSString stringWithFormat:@"%@ sco                   : %zu \n", v16, string->sco];

  v18 = [NSString stringWithFormat:@"%@ wiap                  : %zu \n", v17, string->wiap];

  v19 = [NSString stringWithFormat:@"%@ remote                : %zu \n", v18, string->remote];

  if (string->isScanning)
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  v21 = [NSString stringWithFormat:@"%@ scanning              : %@ \n", v19, v20];

  if (string->isDiscoverable)
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  v23 = [NSString stringWithFormat:@"%@ discoverable          : %@ \n", v21, v22];

  if (string->isConnectable)
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

- (void)setState:(BTStatus *)state
{
  *&self->_state.leRemote = *&state->leRemote;
  v3 = *&state->btKB;
  v4 = *&state->btGC;
  v5 = *&state->nonHIDConnections;
  *&self->_state.hk = *&state->hk;
  *&self->_state.nonHIDConnections = v5;
  *&self->_state.btKB = v3;
  *&self->_state.btGC = v4;
  v6 = *&state->oneSniffAttemptDevices;
  v7 = *&state->sco;
  v8 = *&state->remote;
  *&self->_state.isScanning = *&state->isScanning;
  *&self->_state.sco = v7;
  *&self->_state.remote = v8;
  *&self->_state.oneSniffAttemptDevices = v6;
}

@end