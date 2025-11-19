@interface AccessoryHelper
- (AccessoryHelper)initWithProduct:(id)a3;
- (__CFString)copyFieldCurrentValueForIndex:(int)a3;
- (__CFString)copyHeaderForIndex:(int)a3;
- (void)accessoryEndpointDetached:(id)a3 forConnection:(id)a4;
- (void)applyUpdatedAccessoryState:(int)a3;
- (void)handleAccessoryEventForEndpointUUID:(id)a3 andAttachedState:(BOOL)a4;
- (void)initializeFilteredAttachedState:(BOOL)a3;
- (void)updateFilter:(BOOL)a3;
@end

@implementation AccessoryHelper

- (AccessoryHelper)initWithProduct:(id)a3
{
  v35.receiver = self;
  v35.super_class = AccessoryHelper;
  v4 = [(AccessoryHelper *)&v35 init];
  v5 = v4;
  if (v4)
  {
    if (a3)
    {
      v4->_product = a3;
    }

    else
    {
      v6 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100056F4C(v6, v7, v8, v9, v10, v11, v12, v13);
      }
    }

    [(AccessoryHelper *)v5 setConnectedEndpoints:objc_alloc_init(NSMutableDictionary)];
    if (![(AccessoryHelper *)v5 connectedEndpoints])
    {
      v14 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100056F84(v14, v15, v16, v17, v18, v19, v20, v21);
      }
    }

    *&v5->_accessoryAttached = 0;
    v5->_filteredAttachValue = 0;
    v5->_filterCount = 0;
    [(AccessoryHelper *)v5 setAccConnectionInfo:+[ACCConnectionInfo sharedInstance]];
    if (![(AccessoryHelper *)v5 accConnectionInfo])
    {
      v22 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100056FBC(v22, v23, v24, v25, v26, v27, v28, v29);
      }
    }

    [(ACCConnectionInfo *)[(AccessoryHelper *)v5 accConnectionInfo] registerDelegate:v5];
    if (v5->_accessoryAttached)
    {
      if (byte_1000AB2F8 == 1 && (v30 = qword_1000AB718, os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT)))
      {
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "<Notice> Accessory attached at boot: skipping initial filtering requirements", v34, 2u);
        accessoryAttached = v5->_accessoryAttached;
      }

      else
      {
        accessoryAttached = 1;
      }

      [(AccessoryHelper *)v5 initializeFilteredAttachedState:accessoryAttached & 1];
    }

    if (byte_1000ABC38 == 1)
    {
      [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper registerCLTMSensorIndex:"registerCLTMSensorIndex:forSMCKey:atSMCIndex:" forSMCKey:6 atSMCIndex:@"zETM", 6];
      [+[SensorExchangeHelper sharedInstance](SensorExchangeHelper registerCLTMSensorIndex:"registerCLTMSensorIndex:forSMCKey:atSMCIndex:" forSMCKey:7 atSMCIndex:@"zETM", 7];
      LOBYTE(v32) = v5->_accessoryAttached;
      *&dword_1000AB950 = v32;
      *&dword_1000AB954 = v5->_filteredAttachValue;
    }

    [+[TGraphSampler sharedInstance](TGraphSampler addtGraphDataSource:"addtGraphDataSource:", v5];
  }

  return v5;
}

- (void)updateFilter:(BOOL)a3
{
  filteredAttachValue = self->_filteredAttachValue;
  if (a3)
  {
    [(AccessoryHelper *)self initializeFilteredAttachedState:self->_accessoryAttached];
  }

  accessoryAttached = self->_accessoryAttached;
  if (accessoryAttached == self->_previousAttachedState)
  {
    filterCount = self->_filterCount;
    if (filterCount >= 6)
    {
      if (self->_accessoryAttached)
      {
        filteredAttachValue = 100;
      }

      else
      {
        filteredAttachValue = 0;
      }
    }

    else
    {
      self->_filterCount = filterCount + 1;
      if (accessoryAttached)
      {
        v7 = 100;
      }

      else
      {
        v7 = 0;
      }

      if (filterCount == 5)
      {
        filteredAttachValue = v7;
      }
    }
  }

  else
  {
    self->_filterCount = 0;
    self->_previousAttachedState = accessoryAttached;
  }

  [(AccessoryHelper *)self applyUpdatedAccessoryState:filteredAttachValue];
}

- (void)initializeFilteredAttachedState:(BOOL)a3
{
  v3 = a3;
  self->_filterCount = 6;
  self->_previousAttachedState = a3;
  if (byte_1000AB2F8 == 1)
  {
    v5 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "false";
      if (v3)
      {
        v6 = "true";
      }

      v8 = 136315138;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<Notice> Initializing Attached state to %s", &v8, 0xCu);
    }
  }

  if (v3)
  {
    v7 = 100;
  }

  else
  {
    v7 = 0;
  }

  [(AccessoryHelper *)self applyUpdatedAccessoryState:v7];
}

- (void)applyUpdatedAccessoryState:(int)a3
{
  if (self->_filteredAttachValue != a3)
  {
    if (byte_1000AB2F8 == 1)
    {
      v5 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        v6[0] = 67109120;
        v6[1] = a3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<Notice> Applying alternate HS targets for attached state: %d", v6, 8u);
      }
    }

    [(CommonProduct *)self->_product applyAlternateHotSpotTargets:a3 != 0];
  }

  self->_filteredAttachValue = a3;
  *&dword_1000AB954 = (a3 / 100);
}

- (void)handleAccessoryEventForEndpointUUID:(id)a3 andAttachedState:(BOOL)a4
{
  v4 = a4;
  v7 = [(NSMutableDictionary *)[(AccessoryHelper *)self connectedEndpoints] objectForKeyedSubscript:a3];
  if (v7)
  {
    v8 = [objc_msgSend(v7 objectForKeyedSubscript:{@"AccessoryType", "charValue"}];
    v9 = v8;
    v10 = v8 - 67 > 0x3E || ((1 << (v8 - 67)) & 0x6000800460470E07) == 0;
    if (!v10 || v8 - 133 <= 0x10 && ((1 << (v8 + 123)) & 0x11801) != 0)
    {
      self->_accessoryAttached = v4;
      v11 = qword_1000AB718;
      if (!os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:
        LOBYTE(v12) = self->_accessoryAttached;
        *&dword_1000AB950 = v12;
        return;
      }

      v18[0] = 67109376;
      v18[1] = v9;
      v19 = 1024;
      v20 = v4;
      v13 = "<Notice> Got accessory event with type: %d and attached state: %d";
      v14 = v11;
      v15 = 14;
    }

    else
    {
      v17 = qword_1000AB718;
      if (!os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      LOWORD(v18[0]) = 0;
      v13 = "<Notice> Not in approved type list";
      v14 = v17;
      v15 = 2;
    }

    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, v18, v15);
    goto LABEL_9;
  }

  v16 = qword_1000AB718;
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100056FF4(a3, v16);
  }
}

- (void)accessoryEndpointDetached:(id)a3 forConnection:(id)a4
{
  v7 = qword_1000AB718;
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = a4;
    v12 = 2112;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Notice> Accessory detached: %@, %@", &v10, 0x16u);
  }

  if ([(NSMutableDictionary *)[(AccessoryHelper *)self connectedEndpoints] objectForKeyedSubscript:a3])
  {
    [(AccessoryHelper *)self handleAccessoryEventForEndpointUUID:a3 andAttachedState:0];
    if (byte_1000AB2F8 == 1)
    {
      v8 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412546;
        v11 = a4;
        v12 = 2112;
        v13 = a3;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<Notice> Removing connected endpoints dict entry: %@, %@", &v10, 0x16u);
      }
    }

    [(NSMutableDictionary *)[(AccessoryHelper *)self connectedEndpoints] setObject:0 forKeyedSubscript:a3];
  }

  else
  {
    v9 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = a3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "<Notice> Accessory properties do not exist: %@", &v10, 0xCu);
    }
  }
}

- (__CFString)copyHeaderForIndex:(int)a3
{
  v3 = @"Accessory Attached Filtered";
  if (a3 != 1)
  {
    v3 = 0;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"Accessory Attached Current";
  }
}

- (__CFString)copyFieldCurrentValueForIndex:(int)a3
{
  if (a3 == 1)
  {
    v3 = kCFAllocatorDefault;
    filteredAttachValue = self->_filteredAttachValue;
    return CFStringCreateWithFormat(v3, 0, @"%d", filteredAttachValue);
  }

  if (!a3)
  {
    v3 = kCFAllocatorDefault;
    filteredAttachValue = 100;
    if (!self->_accessoryAttached)
    {
      filteredAttachValue = 0;
    }

    return CFStringCreateWithFormat(v3, 0, @"%d", filteredAttachValue);
  }

  return 0;
}

@end