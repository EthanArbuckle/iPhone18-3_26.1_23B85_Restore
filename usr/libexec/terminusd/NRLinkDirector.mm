@interface NRLinkDirector
- (BOOL)perpetualStandaloneMeadowEnabledForNRUUID:(id)a3;
- (BOOL)preferWiFiP2PRequestUpdated;
- (BOOL)preferWiFiRequestAvailable;
- (BOOL)preferWiFiRequestUnavailable;
- (void)directToCloudRequestAvailable;
- (void)directToCloudRequestUnavailable;
- (void)linkDidReceiveData:(id)a3 data:(id)a4;
- (void)linkIsAvailable:(id)a3;
- (void)linkIsReady:(id)a3;
- (void)linkIsSuspended:(id)a3;
- (void)linkIsUnavailable:(id)a3;
- (void)localAWDLEndpointChanged:(id)a3;
@end

@implementation NRLinkDirector

- (BOOL)perpetualStandaloneMeadowEnabledForNRUUID:(id)a3
{
  v4 = a3;
  if (_NRIsAppleInternal())
  {
    if (self)
    {
      conductors = self->_conductors;
    }

    else
    {
      conductors = 0;
    }

    v6 = [(NSMutableDictionary *)conductors objectForKeyedSubscript:v4];
    if (v6)
    {
      v7 = v6[11];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (void)localAWDLEndpointChanged:(id)a3
{
  v4 = a3;
  if (self)
  {
    dispatch_assert_queue_V2(self->_queue);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    conductors = self->_conductors;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    conductors = 0;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
  }

  v6 = conductors;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    if (self)
    {
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(NSMutableDictionary *)self->_conductors objectForKeyedSubscript:*(*(&v14 + 1) + 8 * v10), v14];
          [v11 localAWDLEndpointChanged:v4];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    else
    {
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v13 = [0 objectForKeyedSubscript:{*(*(&v14 + 1) + 8 * v12), v14}];
          [v13 localAWDLEndpointChanged:v4];

          v12 = v12 + 1;
        }

        while (v8 != v12);
        v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

- (void)directToCloudRequestUnavailable
{
  if (self)
  {
    dispatch_assert_queue_V2(self->_queue);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    conductors = self->_conductors;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    conductors = 0;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
  }

  v4 = conductors;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    if (self)
    {
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [(NSMutableDictionary *)self->_conductors objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i), v12];
          [v9 directToCloudRequestUnavailable];
        }

        v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    else
    {
      do
      {
        for (j = 0; j != v6; j = j + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v11 = [0 objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * j), v12}];
          [v11 directToCloudRequestUnavailable];
        }

        v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }
}

- (void)directToCloudRequestAvailable
{
  if (self)
  {
    dispatch_assert_queue_V2(self->_queue);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    conductors = self->_conductors;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    conductors = 0;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
  }

  v4 = conductors;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    if (self)
    {
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [(NSMutableDictionary *)self->_conductors objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i), v12];
          [v9 directToCloudRequestAvailable];
        }

        v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    else
    {
      do
      {
        for (j = 0; j != v6; j = j + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v11 = [0 objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * j), v12}];
          [v11 directToCloudRequestAvailable];
        }

        v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }
}

- (BOOL)preferWiFiP2PRequestUpdated
{
  v3 = sub_100003490();
  dispatch_assert_queue_V2(v3);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  if (self)
  {
    conductors = self->_conductors;
  }

  else
  {
    conductors = 0;
  }

  v5 = conductors;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v9 = 1;
    if (self)
    {
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = [(NSMutableDictionary *)self->_conductors objectForKeyedSubscript:*(*(&v17 + 1) + 8 * i), v17];
          v12 = [v11 preferWiFiP2PRequestUpdated];

          v9 &= v12;
        }

        v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    else
    {
      do
      {
        for (j = 0; j != v7; j = j + 1)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v15 = [0 objectForKeyedSubscript:{*(*(&v17 + 1) + 8 * j), v17}];
          v16 = [v15 preferWiFiP2PRequestUpdated];

          v9 &= v16;
        }

        v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)preferWiFiRequestUnavailable
{
  v3 = sub_100003490();
  dispatch_assert_queue_V2(v3);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  if (self)
  {
    conductors = self->_conductors;
  }

  else
  {
    conductors = 0;
  }

  v5 = conductors;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v9 = 1;
    if (self)
    {
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = [(NSMutableDictionary *)self->_conductors objectForKeyedSubscript:*(*(&v17 + 1) + 8 * i), v17];
          v12 = [v11 preferWiFiRequestUnavailable];

          v9 &= v12;
        }

        v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    else
    {
      do
      {
        for (j = 0; j != v7; j = j + 1)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v15 = [0 objectForKeyedSubscript:{*(*(&v17 + 1) + 8 * j), v17}];
          v16 = [v15 preferWiFiRequestUnavailable];

          v9 &= v16;
        }

        v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)preferWiFiRequestAvailable
{
  v3 = sub_100003490();
  dispatch_assert_queue_V2(v3);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  if (self)
  {
    conductors = self->_conductors;
  }

  else
  {
    conductors = 0;
  }

  v5 = conductors;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v9 = 1;
    if (self)
    {
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = [(NSMutableDictionary *)self->_conductors objectForKeyedSubscript:*(*(&v17 + 1) + 8 * i), v17];
          v12 = [v11 preferWiFiRequestAvailable];

          v9 &= v12;
        }

        v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    else
    {
      do
      {
        for (j = 0; j != v7; j = j + 1)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v15 = [0 objectForKeyedSubscript:{*(*(&v17 + 1) + 8 * j), v17}];
          v16 = [v15 preferWiFiRequestAvailable];

          v9 &= v16;
        }

        v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)linkDidReceiveData:(id)a3 data:(id)a4
{
  v23 = a3;
  v6 = a4;
  v7 = sub_100003490();
  dispatch_assert_queue_V2(v7);

  if (v23)
  {
    if (v6)
    {
      if (self)
      {
        conductors = self->_conductors;
      }

      else
      {
        conductors = 0;
      }

      v9 = conductors;
      v10 = [v23 nrUUID];
      v11 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:v10];

      if (v11)
      {
        [v11 linkDidReceiveData:v23 data:v6];
      }

      else
      {
        v12 = [v23 nrUUID];
        v22 = [v12 UUIDString];
        sub_1000B926C(self, 1014, @"linkDidReceiveData %@ %@", v13, v14, v15, v16, v17, v23);

        v11 = 0;
      }

      goto LABEL_8;
    }

    v20 = sub_1000B9544();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
LABEL_15:
      v11 = sub_1000B9544();
      _NRLogWithArgs();
LABEL_8:
    }
  }

  else
  {
    v18 = sub_1000B9544();
    v19 = _NRLogIsLevelEnabled();

    if (v19)
    {
      goto LABEL_15;
    }
  }
}

- (void)linkIsUnavailable:(id)a3
{
  v18 = a3;
  v4 = sub_100003490();
  dispatch_assert_queue_V2(v4);

  if (v18)
  {
    if (self)
    {
      conductors = self->_conductors;
    }

    else
    {
      conductors = 0;
    }

    v6 = conductors;
    v7 = [v18 nrUUID];
    v8 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:v7];

    if (v8)
    {
      [v8 linkIsUnavailable:v18];
      sub_1000B98D8(self);
    }

    else
    {
      v9 = [v18 nrUUID];
      v17 = [v9 UUIDString];
      sub_1000B926C(self, 1014, @"linkUnavailable %@ %@", v10, v11, v12, v13, v14, v18);

      v8 = 0;
    }

    goto LABEL_7;
  }

  v15 = sub_1000B9544();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v8 = sub_1000B9544();
    _NRLogWithArgs();
LABEL_7:
  }
}

- (void)linkIsSuspended:(id)a3
{
  v18 = a3;
  v4 = sub_100003490();
  dispatch_assert_queue_V2(v4);

  if (v18)
  {
    if (self)
    {
      conductors = self->_conductors;
    }

    else
    {
      conductors = 0;
    }

    v6 = conductors;
    v7 = [v18 nrUUID];
    v8 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:v7];

    if (v8)
    {
      [v8 linkIsSuspended:v18];
      sub_1000B98D8(self);
    }

    else
    {
      v9 = [v18 nrUUID];
      v17 = [v9 UUIDString];
      sub_1000B926C(self, 1014, @"linkSuspended %@ %@", v10, v11, v12, v13, v14, v18);

      v8 = 0;
    }

    goto LABEL_7;
  }

  v15 = sub_1000B9544();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v8 = sub_1000B9544();
    _NRLogWithArgs();
LABEL_7:
  }
}

- (void)linkIsReady:(id)a3
{
  v18 = a3;
  v4 = sub_100003490();
  dispatch_assert_queue_V2(v4);

  if (v18)
  {
    if (self)
    {
      conductors = self->_conductors;
    }

    else
    {
      conductors = 0;
    }

    v6 = conductors;
    v7 = [v18 nrUUID];
    v8 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:v7];

    if (v8)
    {
      [v8 linkIsReady:v18];
      sub_1000B98D8(self);
    }

    else
    {
      v9 = [v18 nrUUID];
      v17 = [v9 UUIDString];
      sub_1000B926C(self, 1014, @"linkReady %@ %@", v10, v11, v12, v13, v14, v18);

      v8 = 0;
    }

    goto LABEL_7;
  }

  v15 = sub_1000B9544();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v8 = sub_1000B9544();
    _NRLogWithArgs();
LABEL_7:
  }
}

- (void)linkIsAvailable:(id)a3
{
  v18 = a3;
  v4 = sub_100003490();
  dispatch_assert_queue_V2(v4);

  if (v18)
  {
    if (self)
    {
      conductors = self->_conductors;
    }

    else
    {
      conductors = 0;
    }

    v6 = conductors;
    v7 = [v18 nrUUID];
    v8 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:v7];

    if (v8)
    {
      [v8 linkIsAvailable:v18];
    }

    else
    {
      v9 = [v18 nrUUID];
      v17 = [v9 UUIDString];
      sub_1000B926C(self, 1014, @"linkAvailable %@ %@", v10, v11, v12, v13, v14, v18);

      v8 = 0;
    }

    goto LABEL_7;
  }

  v15 = sub_1000B9544();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v8 = sub_1000B9544();
    _NRLogWithArgs();
LABEL_7:
  }
}

@end