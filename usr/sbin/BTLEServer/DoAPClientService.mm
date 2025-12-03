@interface DoAPClientService
- (DoAPClientService)initWithManager:(id)manager peripheral:(id)peripheral service:(id)service;
- (id)uuidToString:(id)string;
- (void)createDoAPDevice;
- (void)dealloc;
- (void)destroyDoAPDevice;
- (void)doapDeviceDidStop;
- (void)eventIndicator:(id)indicator;
- (void)handleInputData:(id)data targetDevice:(id)device;
- (void)notifyDidStartIfEverythingReady;
- (void)parseTLVCodecValue:(char *)value dataLength:(unsigned __int8)length codecStruct:(id *)struct;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverDescriptorsForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)selectCodec:(id)codec;
- (void)setNotificationEnabled:(id)enabled;
- (void)start;
- (void)startStreaming:(id)streaming;
- (void)stop;
- (void)stopStreaming:(id)streaming;
- (void)writeData:(id)data forCharacteristic:(id)characteristic withResponse:(BOOL)response;
@end

@implementation DoAPClientService

- (DoAPClientService)initWithManager:(id)manager peripheral:(id)peripheral service:(id)service
{
  v12.receiver = self;
  v12.super_class = DoAPClientService;
  v5 = [(ClientService *)&v12 initWithManager:manager peripheral:peripheral service:service];
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

  peripheral = [(ClientService *)self peripheral];
  service = [(ClientService *)self service];
  [peripheral discoverCharacteristics:v9 forService:service];
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

- (void)parseTLVCodecValue:(char *)value dataLength:(unsigned __int8)length codecStruct:(id *)struct
{
  if (!length)
  {
    return;
  }

  lengthCopy = length;
  v8 = 0;
  lengthCopy2 = length;
  while (1)
  {
    v10 = value[v8];
    v11 = v8 + 2;
    if (v10 <= 5)
    {
      if (value[v8] <= 2u)
      {
        if (v10 == 1)
        {
          if (lengthCopy <= v11)
          {
            if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
            {
              sub_1000775BC();
            }

            return;
          }

          v22 = v8 + 3;
          v23 = value[(v8 + 2)];
          struct->var1 = v23;
          if (lengthCopy <= (v8 + 3))
          {
            if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
            {
              sub_100077624();
            }

            return;
          }

          v8 += 4;
          struct->var1 = v23 | (value[v22] << 8);
          v24 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
          {
            var1 = struct->var1;
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

          if (lengthCopy <= v11)
          {
            if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
            {
              sub_100077554();
            }

            return;
          }

          v8 += 3;
          struct->var2 = value[v11];
          v18 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
          {
            var2 = struct->var2;
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
            if (lengthCopy <= v11)
            {
              if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
              {
                sub_1000774EC();
              }

              return;
            }

            v8 += 3;
            struct->var3 = value[v11];
            v28 = qword_1000DDBC8;
            if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
            {
              var3 = struct->var3;
              *buf = 67109120;
              v38 = var3;
              v14 = v28;
              v15 = "kDoAPCodecAttributeIDAllocMethod %u";
              goto LABEL_47;
            }

            break;
          case 4u:
            if ((v8 + 2) + 4 >= lengthCopy2)
            {
              if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
              {
                sub_100077474();
              }

              return;
            }

            struct->var4 = *&value[(v8 + 2)];
            v8 += 6;
            v32 = qword_1000DDBC8;
            if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
            {
              var4 = struct->var4;
              *buf = 67109120;
              v38 = var4;
              v14 = v32;
              v15 = "kDoAPCodecAttributeIDBitrate %u";
              goto LABEL_47;
            }

            break;
          case 5u:
            if (lengthCopy <= v11)
            {
              if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
              {
                sub_10007740C();
              }

              return;
            }

            v8 += 3;
            struct->var5 = value[v11];
            v12 = qword_1000DDBC8;
            if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
            {
              var5 = struct->var5;
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

    if (value[v8] <= 7u)
    {
      break;
    }

    switch(v10)
    {
      case 8u:
        if (lengthCopy <= v11)
        {
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            sub_1000772D4();
          }

          return;
        }

        v8 += 3;
        struct->var8 = value[v11];
        v30 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
        {
          var8 = struct->var8;
          *buf = 67109120;
          v38 = var8;
          v14 = v30;
          v15 = "kDoAPCodecAttributeIDMaxBitpool %u";
          goto LABEL_47;
        }

        break;
      case 9u:
        if (lengthCopy <= v11)
        {
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            sub_10007726C();
          }

          return;
        }

        v8 += 3;
        struct->var9 = value[v11];
        v34 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
        {
          var9 = struct->var9;
          *buf = 67109120;
          v38 = var9;
          v14 = v34;
          v15 = "kDoAPCodecAttributeIDObjectType %u";
          goto LABEL_47;
        }

        break;
      case 0xAu:
        if (lengthCopy <= v11)
        {
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
          {
            sub_100077204();
          }

          return;
        }

        v8 += 3;
        struct->var10 = value[v11];
        v16 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
        {
          var10 = struct->var10;
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
    if (lengthCopy <= v8)
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

    if (lengthCopy <= v11)
    {
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_10007733C();
      }

      return;
    }

    v8 += 3;
    struct->var7 = value[v11];
    v20 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
    {
      var7 = struct->var7;
      *buf = 67109120;
      v38 = var7;
      v14 = v20;
      v15 = "kDoAPCodecAttributeIDMinBitpool %u";
      goto LABEL_47;
    }

    goto LABEL_51;
  }

  if (lengthCopy > v11)
  {
    v8 += 3;
    struct->var6 = value[v11];
    v26 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
    {
      var6 = struct->var6;
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
  supportedCodecsCharacteristic = [(DoAPClientService *)self SupportedCodecsCharacteristic];
  value = [supportedCodecsCharacteristic value];
  if (value && [(DoAPClientService *)self isStartStreamingNotificationEnabled]&& [(DoAPClientService *)self isStopStreamingNotificationEnabled]&& [(DoAPClientService *)self isSendDataNotificationEnabled])
  {
    isEventIndicatorNotificationEnabled = [(DoAPClientService *)self isEventIndicatorNotificationEnabled];

    if (isEventIndicatorNotificationEnabled)
    {
      supportedCodecsCharacteristic2 = [(DoAPClientService *)self SupportedCodecsCharacteristic];
      value2 = [supportedCodecsCharacteristic2 value];
      v7 = [value2 length];

      if (v7 >= 7)
      {
        supportedCodecsCharacteristic3 = [(DoAPClientService *)self SupportedCodecsCharacteristic];
        value3 = [supportedCodecsCharacteristic3 value];
        bytes = [value3 bytes];

        v13 = *bytes;
        v11 = (bytes + 1);
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
            codecList = [(DoAPClientService *)self codecList];
            v20 = [DoAPDevice doapDeviceWithCodecs:codecList streamID:v15];

            if (v20)
            {
              [v20 setService:self];
              peripheral = [(ClientService *)self peripheral];
              [v20 setPeripheral:peripheral];

              doapDevices = [(DoAPClientService *)self doapDevices];
              [doapDevices addObject:v20];

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
            codecList2 = [(DoAPClientService *)self codecList];
            [codecList2 removeAllObjects];
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
  doapDevices = [(DoAPClientService *)self doapDevices];
  v3 = [doapDevices countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(doapDevices);
        }

        [*(*(&v7 + 1) + 8 * v6) stop];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [doapDevices countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  doapDevices = [(DoAPClientService *)self doapDevices];
  v4 = [doapDevices countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(doapDevices);
        }

        if ([*(*(&v10 + 1) + 8 * v7) state] != 2)
        {

          return;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [doapDevices countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)setNotificationEnabled:(id)enabled
{
  enabledCopy = enabled;
  v4 = [CBUUID UUIDWithString:CBUUIDStartStreamingCharacteristicString];
  v5 = [enabledCopy isEqual:v4];

  if (v5)
  {
    [(DoAPClientService *)self setIsStartStreamingNotificationEnabled:1];
  }

  else
  {
    v6 = [CBUUID UUIDWithString:CBUUIDStopStreamingCharacteristicString];
    v7 = [enabledCopy isEqual:v6];

    if (v7)
    {
      [(DoAPClientService *)self setIsStopStreamingNotificationEnabled:1];
    }

    else
    {
      v8 = [CBUUID UUIDWithString:CBUUIDSendDataCharacteristicString];
      v9 = [enabledCopy isEqual:v8];

      if (v9)
      {
        [(DoAPClientService *)self setIsSendDataNotificationEnabled:1];
      }

      else
      {
        v10 = [CBUUID UUIDWithString:CBUUIDEventIndicatorCharacteristicString];
        v11 = [enabledCopy isEqual:v10];

        if (v11)
        {
          [(DoAPClientService *)self setIsEventIndicatorNotificationEnabled:1];
        }
      }
    }
  }
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  v9 = peripheralCopy;
  if (error)
  {
    goto LABEL_2;
  }

  v51 = peripheralCopy;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = [service characteristics];
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
        supportedCodecsCharacteristic = [(DoAPClientService *)self SupportedCodecsCharacteristic];
        if (supportedCodecsCharacteristic)
        {
        }

        else
        {
          uUID = [v15 UUID];
          v18 = [CBUUID UUIDWithString:v53];
          v19 = [uUID isEqual:v18];

          if (v19)
          {
            [(DoAPClientService *)self setSupportedCodecsCharacteristic:v15];
            value = [v15 value];

            if (!value)
            {
              [v51 readValueForCharacteristic:v15];
            }

            goto LABEL_38;
          }
        }

        selectedCodecCharacteristic = [(DoAPClientService *)self SelectedCodecCharacteristic];
        if (selectedCodecCharacteristic)
        {
        }

        else
        {
          uUID2 = [v15 UUID];
          v23 = [CBUUID UUIDWithString:v52];
          v24 = [uUID2 isEqual:v23];

          if (v24)
          {
            [(DoAPClientService *)self setSelectedCodecCharacteristic:v15];
            goto LABEL_38;
          }
        }

        startStreamingCharacteristic = [(DoAPClientService *)self StartStreamingCharacteristic];
        if (startStreamingCharacteristic)
        {
        }

        else
        {
          uUID3 = [v15 UUID];
          v27 = [CBUUID UUIDWithString:v50];
          v28 = [uUID3 isEqual:v27];

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

        stopStreamingCharacteristic = [(DoAPClientService *)self StopStreamingCharacteristic];
        if (stopStreamingCharacteristic)
        {
        }

        else
        {
          uUID4 = [v15 UUID];
          v31 = [CBUUID UUIDWithString:v49];
          v32 = [uUID4 isEqual:v31];

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

        sendDataCharacteristic = [(DoAPClientService *)self SendDataCharacteristic];
        if (sendDataCharacteristic)
        {
        }

        else
        {
          uUID5 = [v15 UUID];
          v35 = [CBUUID UUIDWithString:v48];
          v36 = [uUID5 isEqual:v35];

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

        eventIndicatorCharacteristic = [(DoAPClientService *)self EventIndicatorCharacteristic];
        if (eventIndicatorCharacteristic)
        {
        }

        else
        {
          uUID6 = [v15 UUID];
          v39 = [CBUUID UUIDWithString:v47];
          v40 = [uUID6 isEqual:v39];

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

  supportedCodecsCharacteristic2 = [(DoAPClientService *)self SupportedCodecsCharacteristic];

  if (supportedCodecsCharacteristic2)
  {
    selectedCodecCharacteristic2 = [(DoAPClientService *)self SelectedCodecCharacteristic];

    v9 = v51;
    if (selectedCodecCharacteristic2)
    {
      startStreamingCharacteristic2 = [(DoAPClientService *)self StartStreamingCharacteristic];

      if (startStreamingCharacteristic2)
      {
        stopStreamingCharacteristic2 = [(DoAPClientService *)self StopStreamingCharacteristic];

        if (stopStreamingCharacteristic2)
        {
          sendDataCharacteristic2 = [(DoAPClientService *)self SendDataCharacteristic];

          if (sendDataCharacteristic2)
          {
            eventIndicatorCharacteristic2 = [(DoAPClientService *)self EventIndicatorCharacteristic];

            if (!eventIndicatorCharacteristic2 && os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
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

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  characteristicCopy = characteristic;
  if (!error)
  {
    v8 = _os_feature_enabled_impl();
    supportedCodecsCharacteristic = [(DoAPClientService *)self SupportedCodecsCharacteristic];

    if (v8)
    {
      if (supportedCodecsCharacteristic != characteristicCopy)
      {
        startStreamingCharacteristic = [(DoAPClientService *)self StartStreamingCharacteristic];
        if (startStreamingCharacteristic != characteristicCopy)
        {
          stopStreamingCharacteristic = [(DoAPClientService *)self StopStreamingCharacteristic];
          if (stopStreamingCharacteristic != characteristicCopy)
          {
            sendDataCharacteristic = [(DoAPClientService *)self SendDataCharacteristic];
            v13 = sendDataCharacteristic;
            if (sendDataCharacteristic != characteristicCopy)
            {
              eventIndicatorCharacteristic = [(DoAPClientService *)self EventIndicatorCharacteristic];

              if (eventIndicatorCharacteristic != characteristicCopy)
              {
                goto LABEL_2;
              }

              goto LABEL_20;
            }
          }
        }

LABEL_20:
        value = [characteristicCopy value];
        v21 = [DataInputStream inputStreamWithData:value byteOrder:1];

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
            streamID = [v26 streamID];
            v28 = v57;
            stopStreamingCharacteristic2 = [(DoAPClientService *)self StopStreamingCharacteristic];

            if (stopStreamingCharacteristic2 != characteristicCopy)
            {
              sendDataCharacteristic2 = [(DoAPClientService *)self SendDataCharacteristic];

              if (sendDataCharacteristic2 != characteristicCopy)
              {
                selfCopy = self;
                eventIndicatorCharacteristic2 = [(DoAPClientService *)self EventIndicatorCharacteristic];

                if (eventIndicatorCharacteristic2 == characteristicCopy && ([characteristicCopy value], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "length"), v33, v34 >= 3))
                {
                  value2 = [characteristicCopy value];
                  bytes = [value2 bytes];

                  v37 = bytes[2];
                  self = selfCopy;
                  if (v37 != 3 && streamID != v28)
                  {
                    continue;
                  }
                }

                else
                {
                  self = selfCopy;
                  if (streamID != v28)
                  {
                    continue;
                  }
                }
              }
            }

            if ([v26 state] >= 2)
            {
              [(DoAPClientService *)self handleInputData:characteristicCopy targetDevice:v26];
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

    if (supportedCodecsCharacteristic == characteristicCopy)
    {
      goto LABEL_16;
    }

    startStreamingCharacteristic2 = [(DoAPClientService *)self StartStreamingCharacteristic];
    if (startStreamingCharacteristic2 != characteristicCopy)
    {
      stopStreamingCharacteristic3 = [(DoAPClientService *)self StopStreamingCharacteristic];
      if (stopStreamingCharacteristic3 != characteristicCopy)
      {
        sendDataCharacteristic3 = [(DoAPClientService *)self SendDataCharacteristic];
        v18 = sendDataCharacteristic3;
        if (sendDataCharacteristic3 != characteristicCopy)
        {
          eventIndicatorCharacteristic3 = [(DoAPClientService *)self EventIndicatorCharacteristic];

          if (eventIndicatorCharacteristic3 != characteristicCopy)
          {
            goto LABEL_2;
          }

LABEL_41:
          value3 = [characteristicCopy value];
          v39 = [DataInputStream inputStreamWithData:value3 byteOrder:1];

          v57 = 0;
          [v39 readUint16:&v57];
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          doapDevices = [(DoAPClientService *)self doapDevices];
          v41 = [doapDevices countByEnumeratingWithState:&v49 objects:v58 count:16];
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
                  objc_enumerationMutation(doapDevices);
                }

                v45 = *(*(&v49 + 1) + 8 * j);
                streamID2 = [v45 streamID];
                if (streamID2 == v57)
                {
                  if ([v45 state] >= 2)
                  {
                    [(DoAPClientService *)self handleInputData:characteristicCopy targetDevice:v45];
                  }

                  goto LABEL_52;
                }
              }

              v42 = [doapDevices countByEnumeratingWithState:&v49 objects:v58 count:16];
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

- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  v11 = qword_1000DDBC8;
  if (errorCopy)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      uUID = [characteristicCopy UUID];
      v14 = [(DoAPClientService *)self uuidToString:uUID];
      v16 = 138412546;
      v17 = v14;
      v18 = 2112;
      v19 = errorCopy;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "DoAP Error starting notifications on %@ characteristic: %@", &v16, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
    {
      sub_10007799C(v11, characteristicCopy);
    }

    uUID2 = [characteristicCopy UUID];
    [(DoAPClientService *)self setNotificationEnabled:uUID2];

    [(DoAPClientService *)self createDoAPDevice];
  }
}

- (void)peripheral:(id)peripheral didDiscoverDescriptorsForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  if (error)
  {
    goto LABEL_2;
  }

  startStreamingCharacteristic = [(DoAPClientService *)self StartStreamingCharacteristic];
  if (startStreamingCharacteristic != characteristicCopy)
  {
    stopStreamingCharacteristic = [(DoAPClientService *)self StopStreamingCharacteristic];
    if (stopStreamingCharacteristic != characteristicCopy)
    {
      sendDataCharacteristic = [(DoAPClientService *)self SendDataCharacteristic];
      v13 = sendDataCharacteristic;
      if (sendDataCharacteristic != characteristicCopy)
      {
        eventIndicatorCharacteristic = [(DoAPClientService *)self EventIndicatorCharacteristic];

        if (eventIndicatorCharacteristic != characteristicCopy)
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
  descriptors = [characteristicCopy descriptors];
  v16 = [descriptors countByEnumeratingWithState:&v34 objects:v38 count:16];
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
          objc_enumerationMutation(descriptors);
        }

        uUID = [*(*(&v34 + 1) + 8 * i) UUID];
        v21 = [CBUUID UUIDWithString:CBUUIDClientCharacteristicConfigurationString];
        v22 = [uUID isEqual:v21];

        if (v22)
        {

          v24 = qword_1000DDBC8;
          characteristicCopy = v33;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
          {
            sub_100077A50(v24, v33);
          }

          startStreamingCharacteristic2 = [(DoAPClientService *)self StartStreamingCharacteristic];

          if (startStreamingCharacteristic2)
          {
            startStreamingCharacteristic3 = [(DoAPClientService *)self StartStreamingCharacteristic];
            [peripheralCopy setNotifyValue:1 forCharacteristic:startStreamingCharacteristic3];
          }

          stopStreamingCharacteristic2 = [(DoAPClientService *)self StopStreamingCharacteristic];

          if (stopStreamingCharacteristic2)
          {
            stopStreamingCharacteristic3 = [(DoAPClientService *)self StopStreamingCharacteristic];
            [peripheralCopy setNotifyValue:1 forCharacteristic:stopStreamingCharacteristic3];
          }

          sendDataCharacteristic2 = [(DoAPClientService *)self SendDataCharacteristic];

          if (sendDataCharacteristic2)
          {
            sendDataCharacteristic3 = [(DoAPClientService *)self SendDataCharacteristic];
            [peripheralCopy setNotifyValue:1 forCharacteristic:sendDataCharacteristic3];
          }

          eventIndicatorCharacteristic2 = [(DoAPClientService *)self EventIndicatorCharacteristic];

          if (eventIndicatorCharacteristic2)
          {
            eventIndicatorCharacteristic3 = [(DoAPClientService *)self EventIndicatorCharacteristic];
            [peripheralCopy setNotifyValue:1 forCharacteristic:eventIndicatorCharacteristic3];
          }

          goto LABEL_2;
        }
      }

      v17 = [descriptors countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v23 = qword_1000DDBC8;
  characteristicCopy = v33;
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
  doapDevices = [(DoAPClientService *)self doapDevices];
  v5 = [doapDevices countByEnumeratingWithState:&v11 objects:v16 count:16];
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
        objc_enumerationMutation(doapDevices);
      }

      if ([*(*(&v11 + 1) + 8 * v8) state] != 8)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [doapDevices countByEnumeratingWithState:&v11 objects:v16 count:16];
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

    codecList = [(DoAPClientService *)self codecList];
    [codecList removeAllObjects];

    doapDevices = [(DoAPClientService *)self doapDevices];
    [doapDevices removeAllObjects];
  }
}

- (void)selectCodec:(id)codec
{
  codecCopy = codec;
  selectedCodecCharacteristic = [(DoAPClientService *)self SelectedCodecCharacteristic];
  [(DoAPClientService *)self writeData:codecCopy forCharacteristic:selectedCodecCharacteristic withResponse:0];
}

- (void)startStreaming:(id)streaming
{
  streamingCopy = streaming;
  startStreamingCharacteristic = [(DoAPClientService *)self StartStreamingCharacteristic];
  [(DoAPClientService *)self writeData:streamingCopy forCharacteristic:startStreamingCharacteristic withResponse:0];
}

- (void)stopStreaming:(id)streaming
{
  streamingCopy = streaming;
  stopStreamingCharacteristic = [(DoAPClientService *)self StopStreamingCharacteristic];
  [(DoAPClientService *)self writeData:streamingCopy forCharacteristic:stopStreamingCharacteristic withResponse:0];
}

- (void)eventIndicator:(id)indicator
{
  indicatorCopy = indicator;
  eventIndicatorCharacteristic = [(DoAPClientService *)self EventIndicatorCharacteristic];
  [(DoAPClientService *)self writeData:indicatorCopy forCharacteristic:eventIndicatorCharacteristic withResponse:0];
}

- (void)writeData:(id)data forCharacteristic:(id)characteristic withResponse:(BOOL)response
{
  dataCopy = data;
  characteristicCopy = characteristic;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100077BC8();
    if (response)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (!response)
  {
LABEL_3:
    peripheral = [(ClientService *)self peripheral];
    [peripheral writeValue:dataCopy forCharacteristic:characteristicCopy type:1];
  }

LABEL_4:
}

- (void)handleInputData:(id)data targetDevice:(id)device
{
  dataCopy = data;
  deviceCopy = device;
  value = [dataCopy value];
  bytes = [value bytes];

  value2 = [dataCopy value];
  v10 = [value2 length];

  uUID = [dataCopy UUID];
  v12 = [CBUUID UUIDWithString:CBUUIDStartStreamingCharacteristicString];
  v13 = [uUID isEqual:v12];

  if (v13)
  {
    [deviceCopy handleStartStreaming];
  }

  else
  {
    uUID2 = [dataCopy UUID];
    v15 = [CBUUID UUIDWithString:CBUUIDStopStreamingCharacteristicString];
    v16 = [uUID2 isEqual:v15];

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
        [deviceCopy handleStopStreaming:bytes[2]];
      }
    }

    else
    {
      uUID3 = [dataCopy UUID];
      v18 = [CBUUID UUIDWithString:CBUUIDSendDataCharacteristicString];
      v19 = [uUID3 isEqual:v18];

      if (v19)
      {
        if (v10 > 4)
        {
          v24 = *(bytes + 3);
          if (v10 - 5 == v24)
          {
            if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
            {
              sub_100077D28(bytes);
            }

            [deviceCopy handleAudioData:bytes + 5 dataLength:v24];
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
        uUID4 = [dataCopy UUID];
        v21 = [CBUUID UUIDWithString:CBUUIDEventIndicatorCharacteristicString];
        v22 = [uUID4 isEqual:v21];

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
              v23 = (bytes + 4);
            }

            [deviceCopy handleEventIndicator:bytes[2] eventValue:v23];
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

- (id)uuidToString:(id)string
{
  stringCopy = string;
  v4 = [CBUUID UUIDWithString:CBUUIDSupportedCodecsCharacteristicString];
  v5 = [stringCopy isEqual:v4];

  if (v5)
  {
    v6 = @"SupportedCodecs";
  }

  else
  {
    v7 = [CBUUID UUIDWithString:CBUUIDSelectedCodecCharacteristicString];
    v8 = [stringCopy isEqual:v7];

    if (v8)
    {
      v6 = @"SelectedCodec";
    }

    else
    {
      v9 = [CBUUID UUIDWithString:CBUUIDStartStreamingCharacteristicString];
      v10 = [stringCopy isEqual:v9];

      if (v10)
      {
        v6 = @"StartStreaming";
      }

      else
      {
        v11 = [CBUUID UUIDWithString:CBUUIDStopStreamingCharacteristicString];
        v12 = [stringCopy isEqual:v11];

        if (v12)
        {
          v6 = @"StopStreaming";
        }

        else
        {
          v13 = [CBUUID UUIDWithString:CBUUIDSendDataCharacteristicString];
          v14 = [stringCopy isEqual:v13];

          if (v14)
          {
            v6 = @"SendData";
          }

          else
          {
            v15 = [CBUUID UUIDWithString:CBUUIDEventIndicatorCharacteristicString];
            v16 = [stringCopy isEqual:v15];

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