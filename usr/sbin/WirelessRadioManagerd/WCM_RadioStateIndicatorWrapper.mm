@interface WCM_RadioStateIndicatorWrapper
- (BOOL)validateStateData:(id)a3 requiredKeys:(id)a4;
- (WCM_RadioStateIndicatorWrapper)init;
- (id).cxx_construct;
- (id)getBTState;
- (id)getThreadState;
- (id)getWifiState;
- (void)setBTState:(id)a3;
- (void)setThreadState:(id)a3;
- (void)setWifiState:(id)a3;
@end

@implementation WCM_RadioStateIndicatorWrapper

- (WCM_RadioStateIndicatorWrapper)init
{
  v3.receiver = self;
  v3.super_class = WCM_RadioStateIndicatorWrapper;
  result = [(WCM_RadioStateIndicatorWrapper *)&v3 init];
  if (result)
  {
    *(result + 4) = 128;
    *(result + 10) = 0;
    *(result + 2) = &off_100285910;
    *(result + 3) = &off_100285928;
    *(result + 4) = &off_100285940;
  }

  return result;
}

- (BOOL)validateStateData:(id)a3 requiredKeys:(id)a4
{
  if (a3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [a4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(a4);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          if (![a3 objectForKey:v9])
          {
            [WCM_Logging logLevel:1 message:@"WRSI: Missing required key: %@", v9];
          }
        }

        v6 = [a4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 1;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100074390;
    v12[3] = &unk_10023F4D8;
    v12[4] = &v13;
    [a3 enumerateKeysAndObjectsUsingBlock:v12];
    v10 = *(v14 + 24);
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"WRSI: Invalid data type: expected NSDictionary"];
    v10 = 0;
  }

  return v10 & 1;
}

- (void)setWifiState:(id)a3
{
  if ([(WCM_RadioStateIndicatorWrapper *)self validateStateData:a3 requiredKeys:*(self + 2)])
  {
    *(self + 8) = *(self + 8) & 0xFE | [objc_msgSend(a3 objectForKeyedSubscript:{@"powered", "BOOLValue"}];
    if ([objc_msgSend(a3 objectForKeyedSubscript:{@"associated", "BOOLValue"}])
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *(self + 8) = *(self + 8) & 0xFD | v5;
    if ([objc_msgSend(a3 objectForKeyedSubscript:{@"p2p", "BOOLValue"}])
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *(self + 8) = *(self + 8) & 0xFB | v6;
    if ([objc_msgSend(a3 objectForKeyedSubscript:{@"phs", "BOOLValue"}])
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    *(self + 8) = *(self + 8) & 0xF7 | v7;
    if ([objc_msgSend(a3 objectForKeyedSubscript:{@"two_ghz", "BOOLValue"}])
    {
      v8 = 16;
    }

    else
    {
      v8 = 0;
    }

    *(self + 8) = *(self + 8) & 0xEF | v8;
    if ([objc_msgSend(a3 objectForKeyedSubscript:{@"five_ghz", "BOOLValue"}])
    {
      v9 = 32;
    }

    else
    {
      v9 = 0;
    }

    *(self + 8) = *(self + 8) & 0xDF | v9;
    if ([objc_msgSend(a3 objectForKeyedSubscript:{@"six_ghz", "BOOLValue"}])
    {
      v10 = 64;
    }

    else
    {
      v10 = 0;
    }

    *(self + 8) = *(self + 8) & 0xBF | v10;
    [WCM_Logging logLevel:2 message:@"WRSI: set WiFi state from WRM->ASH: %@", a3];
    v11 = pthread_mutex_lock(&stru_1002B7730);
    v12 = xmmword_1002B7770;
    if (!xmmword_1002B7770)
    {
      AppleSARHelper::create_default_global(&v17, v11);
      v13 = v17;
      v17 = 0uLL;
      v14 = *(&xmmword_1002B7770 + 1);
      xmmword_1002B7770 = v13;
      if (v14)
      {
        sub_100004250(v14);
        if (*(&v17 + 1))
        {
          sub_100004250(*(&v17 + 1));
        }
      }

      v12 = xmmword_1002B7770;
    }

    v15 = *(&xmmword_1002B7770 + 1);
    if (*(&xmmword_1002B7770 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_1002B7770 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&stru_1002B7730);
    LOBYTE(v17) = *(self + 8);
    v16 = sub_10007511C(v12, &v17, 0, 0, 0);
    if (v15)
    {
      sub_100004250(v15);
    }

    if ((v16 & 1) == 0)
    {
      [WCM_Logging logLevel:0 message:@"WRSI: Warning: Failed to set WiFi state ASH!\n"];
    }
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"WRSI: WiFi state data validation failed"];
  }
}

- (id)getWifiState
{
  v10 = 0x80;
  v2 = pthread_mutex_lock(&stru_1002B7730);
  v3 = xmmword_1002B7770;
  if (!xmmword_1002B7770)
  {
    AppleSARHelper::create_default_global(&v11, v2);
    v4 = v11;
    v11 = 0uLL;
    v5 = *(&xmmword_1002B7770 + 1);
    xmmword_1002B7770 = v4;
    if (v5)
    {
      sub_100004250(v5);
      if (*(&v11 + 1))
      {
        sub_100004250(*(&v11 + 1));
      }
    }

    v3 = xmmword_1002B7770;
  }

  v6 = *(&xmmword_1002B7770 + 1);
  if (*(&xmmword_1002B7770 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002B7770 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002B7730);
  v7 = sub_10007511C(v3, &v10, 3u, 0, 0);
  if (v6)
  {
    sub_100004250(v6);
  }

  if (v7)
  {
    v12[0] = @"powered";
    v13[0] = [NSNumber numberWithUnsignedChar:v10 & 1];
    v12[1] = @"associated";
    v13[1] = [NSNumber numberWithUnsignedChar:(v10 >> 1) & 1];
    v12[2] = @"p2p";
    v13[2] = [NSNumber numberWithUnsignedChar:(v10 >> 2) & 1];
    v12[3] = @"phs";
    v13[3] = [NSNumber numberWithUnsignedChar:(v10 >> 3) & 1];
    v12[4] = @"two_ghz";
    v13[4] = [NSNumber numberWithUnsignedChar:(v10 >> 4) & 1];
    v12[5] = @"five_ghz";
    v13[5] = [NSNumber numberWithUnsignedChar:(v10 >> 5) & 1];
    v12[6] = @"six_ghz";
    v13[6] = [NSNumber numberWithUnsignedChar:(v10 >> 6) & 1];
    v8 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:7];
    [WCM_Logging logLevel:2 message:@"WRSI: WiFi state from ASH: %@", v8];
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"WRSI: Warning: Failed to get WiFi state from ASH!\n"];
    return 0;
  }

  return v8;
}

- (void)setBTState:(id)a3
{
  if ([(WCM_RadioStateIndicatorWrapper *)self validateStateData:a3 requiredKeys:*(self + 3)])
  {
    *(self + 9) = *(self + 9) & 0xFE | [objc_msgSend(a3 objectForKeyedSubscript:{@"powered", "BOOLValue"}];
    if ([objc_msgSend(a3 objectForKeyedSubscript:{@"connected", "BOOLValue"}])
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *(self + 9) = *(self + 9) & 0xFD | v5;
    if ([objc_msgSend(a3 objectForKeyedSubscript:{@"le_adv_epa", "BOOLValue"}])
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *(self + 9) = *(self + 9) & 0xFB | v6;
    [WCM_Logging logLevel:2 message:@"WRSI: set BT state from WRM->ASH: %@", a3];
    v7 = pthread_mutex_lock(&stru_1002B7730);
    v8 = xmmword_1002B7770;
    if (!xmmword_1002B7770)
    {
      AppleSARHelper::create_default_global(&v13, v7);
      v9 = v13;
      v13 = 0uLL;
      v10 = *(&xmmword_1002B7770 + 1);
      xmmword_1002B7770 = v9;
      if (v10)
      {
        sub_100004250(v10);
        if (*(&v13 + 1))
        {
          sub_100004250(*(&v13 + 1));
        }
      }

      v8 = xmmword_1002B7770;
    }

    v11 = *(&xmmword_1002B7770 + 1);
    if (*(&xmmword_1002B7770 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_1002B7770 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&stru_1002B7730);
    LOBYTE(v13) = *(self + 9);
    v12 = sub_10007511C(v8, &v13, 0, 1u, 0);
    if (v11)
    {
      sub_100004250(v11);
    }

    if ((v12 & 1) == 0)
    {
      [WCM_Logging logLevel:0 message:@"WRSI: Warning: Failed to set BT state ASH!\n"];
    }
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"WRSI: BT State data Validation Failed!!"];
  }
}

- (id)getBTState
{
  v10 = 0;
  v2 = pthread_mutex_lock(&stru_1002B7730);
  v3 = xmmword_1002B7770;
  if (!xmmword_1002B7770)
  {
    AppleSARHelper::create_default_global(&v11, v2);
    v4 = v11;
    v11 = 0uLL;
    v5 = *(&xmmword_1002B7770 + 1);
    xmmword_1002B7770 = v4;
    if (v5)
    {
      sub_100004250(v5);
      if (*(&v11 + 1))
      {
        sub_100004250(*(&v11 + 1));
      }
    }

    v3 = xmmword_1002B7770;
  }

  v6 = *(&xmmword_1002B7770 + 1);
  if (*(&xmmword_1002B7770 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002B7770 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002B7730);
  v7 = sub_10007511C(v3, &v10, 3u, 1u, 0);
  if (v6)
  {
    sub_100004250(v6);
  }

  if (v7)
  {
    v12[0] = @"powered";
    v13[0] = [NSNumber numberWithUnsignedChar:v10 & 1];
    v12[1] = @"connected";
    v13[1] = [NSNumber numberWithUnsignedChar:(v10 >> 1) & 1];
    v12[2] = @"le_adv_epa";
    v13[2] = [NSNumber numberWithUnsignedChar:(v10 >> 2) & 1];
    v8 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
    [WCM_Logging logLevel:2 message:@"WRSI: Bluetooth state from ASH: %@", v8];
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"WRSI: Warning: Failed to get BT state from ASH!\n"];
    return 0;
  }

  return v8;
}

- (void)setThreadState:(id)a3
{
  if ([(WCM_RadioStateIndicatorWrapper *)self validateStateData:a3 requiredKeys:*(self + 4)])
  {
    *(self + 10) = *(self + 10) & 0xFE | [objc_msgSend(a3 objectForKeyedSubscript:{@"powered", "BOOLValue"}];
    [WCM_Logging logLevel:2 message:@"WRSI: set Thread state from WRM->ASH: %@", a3];
    v5 = pthread_mutex_lock(&stru_1002B7730);
    v6 = xmmword_1002B7770;
    if (!xmmword_1002B7770)
    {
      AppleSARHelper::create_default_global(&v11, v5);
      v7 = v11;
      v11 = 0uLL;
      v8 = *(&xmmword_1002B7770 + 1);
      xmmword_1002B7770 = v7;
      if (v8)
      {
        sub_100004250(v8);
        if (*(&v11 + 1))
        {
          sub_100004250(*(&v11 + 1));
        }
      }

      v6 = xmmword_1002B7770;
    }

    v9 = *(&xmmword_1002B7770 + 1);
    if (*(&xmmword_1002B7770 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_1002B7770 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&stru_1002B7730);
    LOBYTE(v11) = *(self + 10);
    v10 = sub_10007511C(v6, &v11, 0, 2u, 0);
    if (v9)
    {
      sub_100004250(v9);
    }

    if ((v10 & 1) == 0)
    {
      [WCM_Logging logLevel:0 message:@"WRSI: Warning: Failed to set Thread state ASH!\n"];
    }
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"WRSI: Thread State data Validation Failed!!"];
  }
}

- (id)getThreadState
{
  v10 = 0;
  v2 = pthread_mutex_lock(&stru_1002B7730);
  v3 = xmmword_1002B7770;
  if (!xmmword_1002B7770)
  {
    AppleSARHelper::create_default_global(&v11, v2);
    v4 = v11;
    v11 = 0uLL;
    v5 = *(&xmmword_1002B7770 + 1);
    xmmword_1002B7770 = v4;
    if (v5)
    {
      sub_100004250(v5);
      if (*(&v11 + 1))
      {
        sub_100004250(*(&v11 + 1));
      }
    }

    v3 = xmmword_1002B7770;
  }

  v6 = *(&xmmword_1002B7770 + 1);
  if (*(&xmmword_1002B7770 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_1002B7770 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_1002B7730);
  v7 = sub_10007511C(v3, &v10, 3u, 2u, 0);
  if (v6)
  {
    sub_100004250(v6);
  }

  if (v7)
  {
    v12 = @"powered";
    v13 = [NSNumber numberWithUnsignedChar:v10 & 1];
    v8 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [WCM_Logging logLevel:2 message:@"WRSI: Thread state from ASH: %@", v8];
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"WRSI: Warning: Failed to get Thread state from ASH!\n"];
    return 0;
  }

  return v8;
}

- (id).cxx_construct
{
  *(self + 8) = 0x80;
  *(self + 9) &= 0xF8u;
  *(self + 10) &= ~1u;
  return self;
}

@end