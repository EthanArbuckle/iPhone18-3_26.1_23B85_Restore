@interface DoAPClientService
- (DoAPClientService)initWithManager:(id)a3 peripheral:(id)a4 service:(id)a5;
- (id)uuidToString:(id)a3;
- (void)createDoAPDevice;
- (void)dealloc;
- (void)destroyDoAPDevice;
- (void)doapDeviceDidStop;
- (void)eventIndicator:(id)a3;
- (void)handleInputData:(id)a3 targetDevice:(id)a4;
- (void)notifyDidStartIfEverythingReady;
- (void)parseTLVCodecValue:(char *)a3 dataLength:(unsigned __int8)a4 codecStruct:(id *)a5;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverDescriptorsForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)selectCodec:(id)a3;
- (void)setNotificationEnabled:(id)a3;
- (void)start;
- (void)startStreaming:(id)a3;
- (void)stop;
- (void)stopStreaming:(id)a3;
- (void)writeData:(id)a3 forCharacteristic:(id)a4 withResponse:(BOOL)a5;
@end

@implementation DoAPClientService

- (DoAPClientService)initWithManager:(id)a3 peripheral:(id)a4 service:(id)a5
{
  v12.receiver = self;
  v12.super_class = DoAPClientService;
  v5 = [(ClientService *)&v12 initWithManager:a3 peripheral:a4 service:a5];
  v6 = v5;
  if (v5)
  {
    [(ClientService *)v5 setIsPrimary:1];
    [(ClientService *)v6 setPriority:3];
    v7 = objc_alloc_init(NSMutableArray);
    codecList = v6->_codecList;
    v6->_codecList = v7;

    v9 = objc_alloc_init(NSMutableArray);
    doapDevices = v6->_doapDevices;
    v6->_doapDevices = v9;

    v6->_isStartStreamingNotificationEnabled = 0;
    v6->_isStopStreamingNotificationEnabled = 0;
    v6->_isSendDataNotificationEnabled = 0;
    v6->_isEventIndicatorNotificationEnabled = 0;
  }

  return v6;
}

- (void)start
{
  v12.receiver = self;
  v12.super_class = DoAPClientService;
  [(ClientService *)&v12 start];
  v3 = [CBUUID UUIDWithString:CBUUIDSupportedCodecsCharacteristicString];
  v13[0] = v3;
  v4 = [CBUUID UUIDWithString:CBUUIDSelectedCodecCharacteristicString];
  v13[1] = v4;
  v5 = [CBUUID UUIDWithString:CBUUIDStartStreamingCharacteristicString];
  v13[2] = v5;
  v6 = [CBUUID UUIDWithString:CBUUIDStopStreamingCharacteristicString];
  v13[3] = v6;
  v7 = [CBUUID UUIDWithString:CBUUIDSendDataCharacteristicString];
  v13[4] = v7;
  v8 = [CBUUID UUIDWithString:CBUUIDEventIndicatorCharacteristicString];
  v13[5] = v8;
  v9 = [NSArray arrayWithObjects:v13 count:6];

  v10 = [(ClientService *)self peripheral];
  v11 = [(ClientService *)self service];
  [v10 discoverCharacteristics:v9 forService:v11];
}

- (void)stop
{
  [(DoAPClientService *)self destroyDoAPDevice];
  v3.receiver = self;
  v3.super_class = DoAPClientService;
  [(ClientService *)&v3 stop];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = DoAPClientService;
  [(DoAPClientService *)&v4 dealloc];
}

- (void)parseTLVCodecValue:(char *)a3 dataLength:(unsigned __int8)a4 codecStruct:(id *)a5
{
  if (!a4)
  {
    return;
  }

  v6 = a4;
  v8 = 0;
  v9 = a4;
  while (1)
  {
    v10 = a3[v8];
    v11 = v8 + 2;
    if (v10 <= 5)
    {
      if (a3[v8] <= 2u)
      {
        if (v10 == 1)
        {
          if (v6 <= v11)
          {
            if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
            {
              sub_1000775BC();
            }

            return;
          }

          v22 = v8 + 3;
          v23 = a3[(v8 + 2)];
          a5->var1 = v23;
          if (v6 <= (v8 + 3))
          {
            if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
            {
              sub_100077624();
            }

            return;
          }

          v8 += 4;
          a5->var1 = v23 | (a3[v22] << 8);
          v24 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
          {
            var1 = a5->var1;
            *buf = 67109120;
            v38 = var1;
            v14 = v24;
            v15 = "kDoAPCodecAttributeIDSampleFrequency %u";
            goto LABEL_47;
          }
        }

        else
        {
          if (v10 != 2)
          {
            goto LABEL_48;
          }

          if (v6 <= v11)
          {
            if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
            {
              sub_100077554();
            }

            return;
          }

          v8 += 3;
          a5->var2 = a3[v11];
          v18 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
          {
            var2 = a5->var2;
            *buf = 67109120;
            v38 = var2;
            v14 = v18;
            v15 = "kDoAPCodecAttributeIDChannel %u";
            goto LABEL_47;
          }
        }
      }

      else
      {
        switch(v10)
        {
          case 3u:
            if (v6 <= v11)
            {
              if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
              {
                sub_1000774EC();
              }

              return;
            }

            v8 += 3;
            a5->var3 = a3[v11];
            v28 = qword_1000DDBC8;
            if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
            {
              var3 = a5->var3;
              *buf = 67109120;
              v38 = var3;
              v14 = v28;
              v15 = "kDoAPCodecAttributeIDAllocMethod %u";
              goto LABEL_47;
            }

            break;
          case 4u:
            if ((v8 + 2) + 4 >= v9)
            {
              if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
              {
                sub_100077474();
              }

              return;
            }

            a5->var4 = *&a3[(v8 + 2)];
            v8 += 6;
            v32 = qword_1000DDBC8;
            if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
            {
              var4 = a5->var4;
              *buf = 67109120;
              v38 = var4;
              v14 = v32;
              v15 = "kDoAPCodecAttributeIDBitrate %u";
              goto LABEL_47;
            }

            break;
          case 5u:
            if (v6 <= v11)
            {
              if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
              {
                sub_10007740C();
              }

              return;
            }

            v8 += 3;
            a5->var5 = a3[v11];
            v12 = qword_1000DDBC8;
            if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
            {
              var5 = a5->var5;
              *buf = 67109120;
              v38 = var5;
              v14 = v12;
              v15 = "kDoAPCodecAttributeIDBlocks %u";
LABEL_47:
              _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, v15, buf, 8u);
              goto LABEL_51;
            }

            break;
          default:
            goto LABEL_48;
        }
      }

      goto LABEL_51;
    }

    if (a3[v8] <= 7u)
    {
      break;
    }

    switch(v10)
    {
      case 8u:
        if (v6 <= v11)
        {
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            sub_1000772D4();
          }

          return;
        }

        v8 += 3;
        a5->var8 = a3[v11];
        v30 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
        {
          var8 = a5->var8;
          *buf = 67109120;
          v38 = var8;
          v14 = v30;
          v15 = "kDoAPCodecAttributeIDMaxBitpool %u";
          goto LABEL_47;
        }

        break;
      case 9u:
        if (v6 <= v11)
        {
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            sub_10007726C();
          }

          return;
        }

        v8 += 3;
        a5->var9 = a3[v11];
        v34 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
        {
          var9 = a5->var9;
          *buf = 67109120;
          v38 = var9;
          v14 = v34;
          v15 = "kDoAPCodecAttributeIDObjectType %u";
          goto LABEL_47;
        }

        break;
      case 0xAu:
        if (v6 <= v11)
        {
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            sub_100077204();
          }

          return;
        }

        v8 += 3;
        a5->var10 = a3[v11];
        v16 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
        {
          var10 = a5->var10;
          *buf = 67109120;
          v38 = var10;
          v14 = v16;
          v15 = "kDoAPCodecAttributeIDVBR %u";
          goto LABEL_47;
        }

        break;
      default:
        goto LABEL_48;
    }

LABEL_51:
    if (v6 <= v8)
    {
      return;
    }
  }

  if (v10 != 6)
  {
    if (v10 != 7)
    {
LABEL_48:
      v36 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v38 = v10;
        _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Error wrong DoAP attributeID %u", buf, 8u);
      }

      v8 += 2;
      goto LABEL_51;
    }

    if (v6 <= v11)
    {
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_10007733C();
      }

      return;
    }

    v8 += 3;
    a5->var7 = a3[v11];
    v20 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
    {
      var7 = a5->var7;
      *buf = 67109120;
      v38 = var7;
      v14 = v20;
      v15 = "kDoAPCodecAttributeIDMinBitpool %u";
      goto LABEL_47;
    }

    goto LABEL_51;
  }

  if (v6 > v11)
  {
    v8 += 3;
    a5->var6 = a3[v11];
    v26 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
    {
      var6 = a5->var6;
      *buf = 67109120;
      v38 = var6;
      v14 = v26;
      v15 = "kDoAPCodecAttributeIDSubbands %u";
      goto LABEL_47;
    }

    goto LABEL_51;
  }

  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_1000773A4();
  }
}

- (void)createDoAPDevice
{
  v26 = [(DoAPClientService *)self SupportedCodecsCharacteristic];
  v3 = [v26 value];
  if (v3 && [(DoAPClientService *)self isStartStreamingNotificationEnabled]&& [(DoAPClientService *)self isStopStreamingNotificationEnabled]&& [(DoAPClientService *)self isSendDataNotificationEnabled])
  {
    v4 = [(DoAPClientService *)self isEventIndicatorNotificationEnabled];

    if (v4)
    {
      v5 = [(DoAPClientService *)self SupportedCodecsCharacteristic];
      v6 = [v5 value];
      v7 = [v6 length];

      if (v7 >= 7)
      {
        v8 = [(DoAPClientService *)self SupportedCodecsCharacteristic];
        v9 = [v8 value];
        v10 = [v9 bytes];

        v13 = *v10;
        v11 = (v10 + 1);
        v12 = v13;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
        {
          sub_10007777C();
          if (!v12)
          {
            return;
          }
        }

        else if (!v12)
        {
          return;
        }

        v14 = 0;
        v27 = 67109120;
        do
        {
          v15 = *v11;
          v16 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
          {
            *buf = v27;
            v31 = v15;
            _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "DoAP StreamID 0x%02x", buf, 8u);
          }

          v17 = *(v11 + 2);
          v18 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
          {
            *buf = v27;
            v31 = v17;
            _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "DoAPCodec list length is %u", buf, 8u);
          }

          v11 = (v11 + 3);
          if (v17)
          {
            [(DoAPClientService *)self parseTLVCodecList:v11 dataLength:v17 streamID:v15];
            v19 = [(DoAPClientService *)self codecList];
            v20 = [DoAPDevice doapDeviceWithCodecs:v19 streamID:v15];

            if (v20)
            {
              [v20 setService:self];
              v21 = [(ClientService *)self peripheral];
              [v20 setPeripheral:v21];

              v22 = [(DoAPClientService *)self doapDevices];
              [v22 addObject:v20];

              [v20 start];
            }

            else
            {
              v24 = qword_1000DDBC8;
              if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
              {
                sub_1000777F4(&v28, v29, v24);
              }
            }

            v11 = (v11 + v17);
            v25 = [(DoAPClientService *)self codecList];
            [v25 removeAllObjects];
          }

          else
          {
            v23 = qword_1000DDBC8;
            if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
            {
              *buf = v27;
              v31 = v15;
              _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "DoAP Error No codeclist for streamID%u", buf, 8u);
            }
          }

          ++v14;
        }

        while (v12 > v14);
      }
    }
  }

  else
  {
  }
}

- (void)destroyDoAPDevice
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(DoAPClientService *)self doapDevices];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) stop];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)notifyDidStartIfEverythingReady
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(DoAPClientService *)self doapDevices];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v10 + 1) + 8 * v7) state] != 2)
        {

          return;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "DoAPService didStart", v9, 2u);
  }

  [(ClientService *)self notifyDidStart];
}

- (void)setNotificationEnabled:(id)a3
{
  v12 = a3;
  v4 = [CBUUID UUIDWithString:CBUUIDStartStreamingCharacteristicString];
  v5 = [v12 isEqual:v4];

  if (v5)
  {
    [(DoAPClientService *)self setIsStartStreamingNotificationEnabled:1];
  }

  else
  {
    v6 = [CBUUID UUIDWithString:CBUUIDStopStreamingCharacteristicString];
    v7 = [v12 isEqual:v6];

    if (v7)
    {
      [(DoAPClientService *)self setIsStopStreamingNotificationEnabled:1];
    }

    else
    {
      v8 = [CBUUID UUIDWithString:CBUUIDSendDataCharacteristicString];
      v9 = [v12 isEqual:v8];

      if (v9)
      {
        [(DoAPClientService *)self setIsSendDataNotificationEnabled:1];
      }

      else
      {
        v10 = [CBUUID UUIDWithString:CBUUIDEventIndicatorCharacteristicString];
        v11 = [v12 isEqual:v10];

        if (v11)
        {
          [(DoAPClientService *)self setIsEventIndicatorNotificationEnabled:1];
        }
      }
    }
  }
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = v8;
  if (a5)
  {
    goto LABEL_2;
  }

  v51 = v8;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = [a4 characteristics];
  v10 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v56;
    v53 = CBUUIDSupportedCodecsCharacteristicString;
    v52 = CBUUIDSelectedCodecCharacteristicString;
    v50 = CBUUIDStartStreamingCharacteristicString;
    v48 = CBUUIDSendDataCharacteristicString;
    v49 = CBUUIDStopStreamingCharacteristicString;
    v47 = CBUUIDEventIndicatorCharacteristicString;
    do
    {
      v14 = 0;
      do
      {
        if (*v56 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v55 + 1) + 8 * v14);
        v16 = [(DoAPClientService *)self SupportedCodecsCharacteristic];
        if (v16)
        {
        }

        else
        {
          v17 = [v15 UUID];
          v18 = [CBUUID UUIDWithString:v53];
          v19 = [v17 isEqual:v18];

          if (v19)
          {
            [(DoAPClientService *)self setSupportedCodecsCharacteristic:v15];
            v20 = [v15 value];

            if (!v20)
            {
              [v51 readValueForCharacteristic:v15];
            }

            goto LABEL_38;
          }
        }

        v21 = [(DoAPClientService *)self SelectedCodecCharacteristic];
        if (v21)
        {
        }

        else
        {
          v22 = [v15 UUID];
          v23 = [CBUUID UUIDWithString:v52];
          v24 = [v22 isEqual:v23];

          if (v24)
          {
            [(DoAPClientService *)self setSelectedCodecCharacteristic:v15];
            goto LABEL_38;
          }
        }

        v25 = [(DoAPClientService *)self StartStreamingCharacteristic];
        if (v25)
        {
        }

        else
        {
          v26 = [v15 UUID];
          v27 = [CBUUID UUIDWithString:v50];
          v28 = [v26 isEqual:v27];

          if (v28)
          {
            [(DoAPClientService *)self setStartStreamingCharacteristic:v15];
            if ((v12 & 1) == 0)
            {
              goto LABEL_21;
            }

            goto LABEL_22;
          }
        }

        v29 = [(DoAPClientService *)self StopStreamingCharacteristic];
        if (v29)
        {
        }

        else
        {
          v30 = [v15 UUID];
          v31 = [CBUUID UUIDWithString:v49];
          v32 = [v30 isEqual:v31];

          if (v32)
          {
            [(DoAPClientService *)self setStopStreamingCharacteristic:v15];
            if ((v12 & 1) == 0)
            {
              goto LABEL_21;
            }

            goto LABEL_22;
          }
        }

        v33 = [(DoAPClientService *)self SendDataCharacteristic];
        if (v33)
        {
        }

        else
        {
          v34 = [v15 UUID];
          v35 = [CBUUID UUIDWithString:v48];
          v36 = [v34 isEqual:v35];

          if (v36)
          {
            [(DoAPClientService *)self setSendDataCharacteristic:v15];
            if ((v12 & 1) == 0)
            {
              goto LABEL_21;
            }

            goto LABEL_22;
          }
        }

        v37 = [(DoAPClientService *)self EventIndicatorCharacteristic];
        if (v37)
        {
        }

        else
        {
          v38 = [v15 UUID];
          v39 = [CBUUID UUIDWithString:v47];
          v40 = [v38 isEqual:v39];

          if (v40)
          {
            [(DoAPClientService *)self setEventIndicatorCharacteristic:v15];
            if (v12)
            {
              goto LABEL_22;
            }

LABEL_21:
            [v51 discoverDescriptorsForCharacteristic:v15];
LABEL_22:
            v12 = 1;
          }
        }

LABEL_38:
        v14 = v14 + 1;
      }

      while (v11 != v14);
      v11 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
    }

    while (v11);
  }

  v41 = [(DoAPClientService *)self SupportedCodecsCharacteristic];

  if (v41)
  {
    v42 = [(DoAPClientService *)self SelectedCodecCharacteristic];

    v9 = v51;
    if (v42)
    {
      v43 = [(DoAPClientService *)self StartStreamingCharacteristic];

      if (v43)
      {
        v44 = [(DoAPClientService *)self StopStreamingCharacteristic];

        if (v44)
        {
          v45 = [(DoAPClientService *)self SendDataCharacteristic];

          if (v45)
          {
            v46 = [(DoAPClientService *)self EventIndicatorCharacteristic];

            if (!v46 && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
            {
              sub_100077834();
            }
          }

          else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            sub_100077870();
          }
        }

        else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          sub_1000778AC();
        }
      }

      else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_1000778E8();
      }
    }

    else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100077924();
    }
  }

  else
  {
    v9 = v51;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100077960();
    }
  }

LABEL_2:
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v7 = a4;
  if (!a5)
  {
    v8 = _os_feature_enabled_impl();
    v9 = [(DoAPClientService *)self SupportedCodecsCharacteristic];

    if (v8)
    {
      if (v9 != v7)
      {
        v10 = [(DoAPClientService *)self StartStreamingCharacteristic];
        if (v10 != v7)
        {
          v11 = [(DoAPClientService *)self StopStreamingCharacteristic];
          if (v11 != v7)
          {
            v12 = [(DoAPClientService *)self SendDataCharacteristic];
            v13 = v12;
            if (v12 != v7)
            {
              v14 = [(DoAPClientService *)self EventIndicatorCharacteristic];

              if (v14 != v7)
              {
                goto LABEL_2;
              }

              goto LABEL_20;
            }
          }
        }

LABEL_20:
        v20 = [v7 value];
        v21 = [DataInputStream inputStreamWithData:v20 byteOrder:1];

        v57 = 0;
        v47 = v21;
        [v21 readUint16:&v57];
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        obj = [(DoAPClientService *)self doapDevices];
        v22 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
        if (!v22)
        {
          goto LABEL_37;
        }

        v23 = v22;
        v24 = *v54;
        while (1)
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v54 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v53 + 1) + 8 * i);
            v27 = [v26 streamID];
            v28 = v57;
            v29 = [(DoAPClientService *)self StopStreamingCharacteristic];

            if (v29 != v7)
            {
              v30 = [(DoAPClientService *)self SendDataCharacteristic];

              if (v30 != v7)
              {
                v31 = self;
                v32 = [(DoAPClientService *)self EventIndicatorCharacteristic];

                if (v32 == v7 && ([v7 value], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "length"), v33, v34 >= 3))
                {
                  v35 = [v7 value];
                  v36 = [v35 bytes];

                  v37 = v36[2];
                  self = v31;
                  if (v37 != 3 && v27 != v28)
                  {
                    continue;
                  }
                }

                else
                {
                  self = v31;
                  if (v27 != v28)
                  {
                    continue;
                  }
                }
              }
            }

            if ([v26 state] >= 2)
            {
              [(DoAPClientService *)self handleInputData:v7 targetDevice:v26];
            }
          }

          v23 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
          if (!v23)
          {
LABEL_37:

            goto LABEL_2;
          }
        }
      }

LABEL_16:
      [(DoAPClientService *)self createDoAPDevice];
      goto LABEL_2;
    }

    if (v9 == v7)
    {
      goto LABEL_16;
    }

    v15 = [(DoAPClientService *)self StartStreamingCharacteristic];
    if (v15 != v7)
    {
      v16 = [(DoAPClientService *)self StopStreamingCharacteristic];
      if (v16 != v7)
      {
        v17 = [(DoAPClientService *)self SendDataCharacteristic];
        v18 = v17;
        if (v17 != v7)
        {
          v19 = [(DoAPClientService *)self EventIndicatorCharacteristic];

          if (v19 != v7)
          {
            goto LABEL_2;
          }

LABEL_41:
          v38 = [v7 value];
          v39 = [DataInputStream inputStreamWithData:v38 byteOrder:1];

          v57 = 0;
          [v39 readUint16:&v57];
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v40 = [(DoAPClientService *)self doapDevices];
          v41 = [v40 countByEnumeratingWithState:&v49 objects:v58 count:16];
          if (v41)
          {
            v42 = v41;
            v43 = *v50;
            do
            {
              for (j = 0; j != v42; j = j + 1)
              {
                if (*v50 != v43)
                {
                  objc_enumerationMutation(v40);
                }

                v45 = *(*(&v49 + 1) + 8 * j);
                v46 = [v45 streamID];
                if (v46 == v57)
                {
                  if ([v45 state] >= 2)
                  {
                    [(DoAPClientService *)self handleInputData:v7 targetDevice:v45];
                  }

                  goto LABEL_52;
                }
              }

              v42 = [v40 countByEnumeratingWithState:&v49 objects:v58 count:16];
            }

            while (v42);
          }

LABEL_52:

          goto LABEL_2;
        }
      }
    }

    goto LABEL_41;
  }

LABEL_2:
}

- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = qword_1000DDBC8;
  if (v10)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      v13 = [v9 UUID];
      v14 = [(DoAPClientService *)self uuidToString:v13];
      v16 = 138412546;
      v17 = v14;
      v18 = 2112;
      v19 = v10;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "DoAP Error starting notifications on %@ characteristic: %@", &v16, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
    {
      sub_10007799C(v11, v9);
    }

    v15 = [v9 UUID];
    [(DoAPClientService *)self setNotificationEnabled:v15];

    [(DoAPClientService *)self createDoAPDevice];
  }
}

- (void)peripheral:(id)a3 didDiscoverDescriptorsForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    goto LABEL_2;
  }

  v10 = [(DoAPClientService *)self StartStreamingCharacteristic];
  if (v10 != v9)
  {
    v11 = [(DoAPClientService *)self StopStreamingCharacteristic];
    if (v11 != v9)
    {
      v12 = [(DoAPClientService *)self SendDataCharacteristic];
      v13 = v12;
      if (v12 != v9)
      {
        v14 = [(DoAPClientService *)self EventIndicatorCharacteristic];

        if (v14 != v9)
        {
          goto LABEL_2;
        }

        goto LABEL_11;
      }
    }
  }

LABEL_11:
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v15 = [v9 descriptors];
  v16 = [v15 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v35;
    while (2)
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v34 + 1) + 8 * i) UUID];
        v21 = [CBUUID UUIDWithString:CBUUIDClientCharacteristicConfigurationString];
        v22 = [v20 isEqual:v21];

        if (v22)
        {

          v24 = qword_1000DDBC8;
          v9 = v33;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
          {
            sub_100077A50(v24, v33);
          }

          v25 = [(DoAPClientService *)self StartStreamingCharacteristic];

          if (v25)
          {
            v26 = [(DoAPClientService *)self StartStreamingCharacteristic];
            [v8 setNotifyValue:1 forCharacteristic:v26];
          }

          v27 = [(DoAPClientService *)self StopStreamingCharacteristic];

          if (v27)
          {
            v28 = [(DoAPClientService *)self StopStreamingCharacteristic];
            [v8 setNotifyValue:1 forCharacteristic:v28];
          }

          v29 = [(DoAPClientService *)self SendDataCharacteristic];

          if (v29)
          {
            v30 = [(DoAPClientService *)self SendDataCharacteristic];
            [v8 setNotifyValue:1 forCharacteristic:v30];
          }

          v31 = [(DoAPClientService *)self EventIndicatorCharacteristic];

          if (v31)
          {
            v32 = [(DoAPClientService *)self EventIndicatorCharacteristic];
            [v8 setNotifyValue:1 forCharacteristic:v32];
          }

          goto LABEL_2;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v23 = qword_1000DDBC8;
  v9 = v33;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100077B04(v23, v33);
  }

LABEL_2:
}

- (void)doapDeviceDidStop
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DoAPService didStop", buf, 2u);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(DoAPClientService *)self doapDevices];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
LABEL_5:
    v8 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(v4);
      }

      if ([*(*(&v11 + 1) + 8 * v8) state] != 8)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:

    v9 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Remove all DoAP devices", buf, 2u);
    }

    v10 = [(DoAPClientService *)self codecList];
    [v10 removeAllObjects];

    v4 = [(DoAPClientService *)self doapDevices];
    [v4 removeAllObjects];
  }
}

- (void)selectCodec:(id)a3
{
  v4 = a3;
  v5 = [(DoAPClientService *)self SelectedCodecCharacteristic];
  [(DoAPClientService *)self writeData:v4 forCharacteristic:v5 withResponse:0];
}

- (void)startStreaming:(id)a3
{
  v4 = a3;
  v5 = [(DoAPClientService *)self StartStreamingCharacteristic];
  [(DoAPClientService *)self writeData:v4 forCharacteristic:v5 withResponse:0];
}

- (void)stopStreaming:(id)a3
{
  v4 = a3;
  v5 = [(DoAPClientService *)self StopStreamingCharacteristic];
  [(DoAPClientService *)self writeData:v4 forCharacteristic:v5 withResponse:0];
}

- (void)eventIndicator:(id)a3
{
  v4 = a3;
  v5 = [(DoAPClientService *)self EventIndicatorCharacteristic];
  [(DoAPClientService *)self writeData:v4 forCharacteristic:v5 withResponse:0];
}

- (void)writeData:(id)a3 forCharacteristic:(id)a4 withResponse:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100077BC8();
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (!a5)
  {
LABEL_3:
    v10 = [(ClientService *)self peripheral];
    [v10 writeValue:v8 forCharacteristic:v9 type:1];
  }

LABEL_4:
}

- (void)handleInputData:(id)a3 targetDevice:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 value];
  v8 = [v7 bytes];

  v9 = [v5 value];
  v10 = [v9 length];

  v11 = [v5 UUID];
  v12 = [CBUUID UUIDWithString:CBUUIDStartStreamingCharacteristicString];
  v13 = [v11 isEqual:v12];

  if (v13)
  {
    [v6 handleStartStreaming];
  }

  else
  {
    v14 = [v5 UUID];
    v15 = [CBUUID UUIDWithString:CBUUIDStopStreamingCharacteristicString];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      if (v10 < 3)
      {
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          sub_100077E20();
        }
      }

      else
      {
        [v6 handleStopStreaming:v8[2]];
      }
    }

    else
    {
      v17 = [v5 UUID];
      v18 = [CBUUID UUIDWithString:CBUUIDSendDataCharacteristicString];
      v19 = [v17 isEqual:v18];

      if (v19)
      {
        if (v10 > 4)
        {
          v24 = *(v8 + 3);
          if (v10 - 5 == v24)
          {
            if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
            {
              sub_100077D28(v8);
            }

            [v6 handleAudioData:v8 + 5 dataLength:v24];
          }

          else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            sub_100077CB4();
          }
        }

        else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          sub_100077DB0();
        }
      }

      else
      {
        v20 = [v5 UUID];
        v21 = [CBUUID UUIDWithString:CBUUIDEventIndicatorCharacteristicString];
        v22 = [v20 isEqual:v21];

        if (v22)
        {
          if (v10 < 3)
          {
            if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
            {
              sub_100077C44();
            }
          }

          else
          {
            if (v10 <= 4)
            {
              v23 = 0;
            }

            else
            {
              v23 = (v8 + 4);
            }

            [v6 handleEventIndicator:v8[2] eventValue:v23];
          }
        }

        else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          sub_100077C08();
        }
      }
    }
  }
}

- (id)uuidToString:(id)a3
{
  v3 = a3;
  v4 = [CBUUID UUIDWithString:CBUUIDSupportedCodecsCharacteristicString];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v6 = @"SupportedCodecs";
  }

  else
  {
    v7 = [CBUUID UUIDWithString:CBUUIDSelectedCodecCharacteristicString];
    v8 = [v3 isEqual:v7];

    if (v8)
    {
      v6 = @"SelectedCodec";
    }

    else
    {
      v9 = [CBUUID UUIDWithString:CBUUIDStartStreamingCharacteristicString];
      v10 = [v3 isEqual:v9];

      if (v10)
      {
        v6 = @"StartStreaming";
      }

      else
      {
        v11 = [CBUUID UUIDWithString:CBUUIDStopStreamingCharacteristicString];
        v12 = [v3 isEqual:v11];

        if (v12)
        {
          v6 = @"StopStreaming";
        }

        else
        {
          v13 = [CBUUID UUIDWithString:CBUUIDSendDataCharacteristicString];
          v14 = [v3 isEqual:v13];

          if (v14)
          {
            v6 = @"SendData";
          }

          else
          {
            v15 = [CBUUID UUIDWithString:CBUUIDEventIndicatorCharacteristicString];
            v16 = [v3 isEqual:v15];

            if (v16)
            {
              v6 = @"EventIndicator";
            }

            else
            {
              v6 = @"Invalid UUID";
            }
          }
        }
      }
    }
  }

  return v6;
}

@end