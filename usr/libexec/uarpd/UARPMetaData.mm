@interface UARPMetaData
+ (id)metaDataTable;
+ (id)tlvFromType:(unsigned int)type length:(unsigned int)length value:(void *)value;
+ (id)tlvNameForType:(id)type;
+ (id)tlvsFromKey:(id)key value:(id)value relativeURL:(id)l;
- (UARPMetaData)init;
- (id)componentVersionWithLength:(unint64_t)length value:(void *)value;
- (id)dataFromPlistValue:(id)value;
- (id)generateTLV;
- (id)numberFromPlistValue:(id)value;
- (id)numberWithLength:(unint64_t)length value:(void *)value;
- (id)stringFromPlistValue:(id)value;
- (id)tlvValueWithComponentVersion:(id)version;
- (id)tlvValueWithString:(id)string;
- (id)tlvValueWithUInt16:(unsigned __int16)int16;
- (id)tlvValueWithUInt32:(unsigned int)int32;
- (id)tlvValueWithUInt64:(unint64_t)int64;
- (id)tlvValueWithUInt8:(unsigned __int8)int8;
@end

@implementation UARPMetaData

- (UARPMetaData)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaData;
  return [(UARPMetaData *)&v3 init];
}

- (id)generateTLV
{
  v3 = objc_alloc_init(NSMutableData);
  v9 = uarpHtonl([(UARPMetaData *)self tlvType]);
  [v3 appendBytes:&v9 length:4];
  tlvValue = [(UARPMetaData *)self tlvValue];
  v8 = uarpHtonl([tlvValue length]);
  [v3 appendBytes:&v8 length:4];
  tlvValue2 = [(UARPMetaData *)self tlvValue];
  [v3 appendData:tlvValue2];

  v6 = [NSData dataWithData:v3];

  return v6;
}

- (id)stringFromPlistValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [valueCopy copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)dataFromPlistValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [valueCopy copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)numberFromPlistValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = valueCopy;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)numberWithLength:(unint64_t)length value:(void *)value
{
  v4 = 0;
  if (length > 3)
  {
    if (length == 4)
    {
      v4 = [NSNumber numberWithUnsignedLong:uarpNtohl(*value)];
    }

    else if (length == 8)
    {
      v4 = [NSNumber numberWithUnsignedLongLong:uarpNtohll(*value)];
    }
  }

  else if (length == 1)
  {
    v4 = [NSNumber numberWithUnsignedChar:*value];
  }

  else if (length == 2)
  {
    v4 = [NSNumber numberWithUnsignedShort:uarpNtohs(*value)];
  }

  return v4;
}

- (id)componentVersionWithLength:(unint64_t)length value:(void *)value
{
  if (length == 16)
  {
    v6 = [UARPComponentVersion alloc];
    v7 = uarpNtohl(*value);
    v8 = uarpNtohl(*(value + 1));
    v9 = uarpNtohl(*(value + 2));
    v10 = [(UARPComponentVersion *)v6 initWithMajorVersion:v7 minorVersion:v8 releaseVersion:v9 buildVersion:uarpNtohl(*(value + 3))];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)tlvValueWithUInt8:(unsigned __int8)int8
{
  int8Copy = int8;
  v3 = [[NSData alloc] initWithBytes:&int8Copy length:1];

  return v3;
}

- (id)tlvValueWithUInt16:(unsigned __int16)int16
{
  v5 = uarpHtons(int16);
  v3 = [[NSData alloc] initWithBytes:&v5 length:2];

  return v3;
}

- (id)tlvValueWithUInt32:(unsigned int)int32
{
  v5 = uarpHtonl(int32);
  v3 = [[NSData alloc] initWithBytes:&v5 length:4];

  return v3;
}

- (id)tlvValueWithUInt64:(unint64_t)int64
{
  v5 = uarpHtonll(int64);
  v3 = [[NSData alloc] initWithBytes:&v5 length:8];

  return v3;
}

- (id)tlvValueWithString:(id)string
{
  stringCopy = string;
  uTF8String = [stringCopy UTF8String];
  v5 = [stringCopy length];

  return [NSData dataWithBytes:uTF8String length:v5];
}

- (id)tlvValueWithComponentVersion:(id)version
{
  versionCopy = version;
  LODWORD(v7) = uarpHtonl([versionCopy majorVersion]);
  HIDWORD(v7) = uarpHtonl([versionCopy minorVersion]);
  v8 = uarpHtonl([versionCopy releaseVersion]);
  buildVersion = [versionCopy buildVersion];

  v9 = uarpHtonl(buildVersion);
  v5 = [[NSData alloc] initWithBytes:&v7 length:16];

  return v5;
}

+ (id)tlvFromType:(unsigned int)type length:(unsigned int)length value:(void *)value
{
  v5 = 0;
  if (type > -1003827195)
  {
    if (type > -252806657)
    {
      if (type <= 12)
      {
        if (type > 3)
        {
          if (type > 8)
          {
            switch(type)
            {
              case 9u:
                v6 = off_1000B8650;
                break;
              case 0xAu:
                v6 = off_1000B8658;
                break;
              case 0xBu:
                v6 = off_1000B8640;
                break;
              default:
                goto LABEL_155;
            }
          }

          else
          {
            switch(type)
            {
              case 4u:
                v6 = off_1000B8660;
                break;
              case 5u:
                v6 = off_1000B8638;
                break;
              case 6u:
                v6 = off_1000B8680;
                break;
              default:
                goto LABEL_155;
            }
          }
        }

        else if (type > 0)
        {
          if (type == 1)
          {
            v6 = off_1000B8668;
          }

          else if (type == 2)
          {
            v6 = off_1000B8670;
          }

          else
          {
            v6 = off_1000B8678;
          }
        }

        else
        {
          switch(type)
          {
            case 0xF0EE7A00:
              v6 = off_1000B8500;
              break;
            case 0xF0EE7A01:
              v6 = off_1000B84F8;
              break;
            case 0xF0EE7A03:
              v6 = off_1000B8508;
              break;
            default:
              goto LABEL_155;
          }
        }
      }

      else if (type <= 1619725826)
      {
        if (type > 1619725823)
        {
          if (type == 1619725824)
          {
            v6 = off_1000B85D8;
          }

          else if (type == 1619725825)
          {
            v6 = off_1000B85C0;
          }

          else
          {
            v6 = off_1000B85B8;
          }
        }

        else
        {
          switch(type)
          {
            case 0xDu:
              v6 = off_1000B8648;
              break;
            case 0x20158200u:
              v6 = off_1000B8688;
              break;
            case 0x20158201u:
              v6 = off_1000B8690;
              break;
            default:
              goto LABEL_155;
          }
        }
      }

      else if (type <= 1619725829)
      {
        if (type == 1619725827)
        {
          v6 = off_1000B85C8;
        }

        else if (type == 1619725828)
        {
          v6 = off_1000B85A0;
        }

        else
        {
          v6 = off_1000B85D0;
        }
      }

      else if (type > 1619725831)
      {
        if (type == 1619725832)
        {
          v6 = off_1000B85A8;
        }

        else
        {
          if (type != 1619725833)
          {
            goto LABEL_155;
          }

          v6 = off_1000B8590;
        }
      }

      else if (type == 1619725830)
      {
        v6 = off_1000B8598;
      }

      else
      {
        v6 = off_1000B85B0;
      }
    }

    else if (type <= -1003827189)
    {
      if (type > -1003827192)
      {
        if (type == -1003827191)
        {
          v6 = off_1000B8630;
        }

        else if (type == -1003827190)
        {
          v6 = off_1000B85F0;
        }

        else
        {
          v6 = off_1000B85E8;
        }
      }

      else if (type == -1003827194)
      {
        v6 = off_1000B8608;
      }

      else if (type == -1003827193)
      {
        v6 = off_1000B8610;
      }

      else
      {
        v6 = off_1000B8620;
      }
    }

    else
    {
      switch(type)
      {
        case 0xCCD28102:
          v6 = off_1000B8538;
          goto LABEL_154;
        case 0xCCD28103:
        case 0xCCD28108:
        case 0xCCD28109:
        case 0xCCD2810A:
        case 0xCCD2810D:
        case 0xCCD2810E:
        case 0xCCD2810F:
        case 0xCCD28110:
        case 0xCCD28114:
        case 0xCCD28115:
        case 0xCCD28116:
        case 0xCCD2811A:
          goto LABEL_155;
        case 0xCCD28104:
          v6 = off_1000B8580;
          goto LABEL_154;
        case 0xCCD28105:
          v6 = off_1000B8540;
          goto LABEL_154;
        case 0xCCD28106:
          v6 = off_1000B8570;
          goto LABEL_154;
        case 0xCCD28107:
          v6 = off_1000B8550;
          goto LABEL_154;
        case 0xCCD2810B:
          v6 = off_1000B8510;
          goto LABEL_154;
        case 0xCCD2810C:
          v6 = off_1000B8698;
          goto LABEL_154;
        case 0xCCD28111:
          v6 = off_1000B8548;
          goto LABEL_154;
        case 0xCCD28112:
          v6 = off_1000B8558;
          goto LABEL_154;
        case 0xCCD28113:
          v6 = off_1000B8518;
          goto LABEL_154;
        case 0xCCD28117:
          v6 = off_1000B8530;
          goto LABEL_154;
        case 0xCCD28118:
          v6 = off_1000B8528;
          goto LABEL_154;
        case 0xCCD28119:
          v6 = off_1000B8578;
          goto LABEL_154;
        case 0xCCD2811B:
          v6 = off_1000B8568;
          goto LABEL_154;
        case 0xCCD2811C:
          v6 = off_1000B8520;
          goto LABEL_154;
        case 0xCCD2811D:
          v6 = off_1000B8560;
          goto LABEL_154;
        case 0xCCD2811E:
          v6 = off_1000B8588;
          goto LABEL_154;
        default:
          if (type == -1003827188)
          {
            v6 = off_1000B85E0;
          }

          else
          {
            if (type != -1003827187)
            {
              goto LABEL_155;
            }

            v6 = off_1000B8618;
          }

          break;
      }
    }

    goto LABEL_154;
  }

  if (type > -1128766721)
  {
    if (type <= -1128766714)
    {
      if (type > -1128766716)
      {
        if (type == -1128766715)
        {
          v6 = off_1000B84F0;
        }

        else
        {
          v6 = off_1000B84C0;
        }
      }

      else if (type == -1128766720)
      {
        v6 = off_1000B84D8;
      }

      else
      {
        if (type != -1128766717)
        {
          goto LABEL_155;
        }

        v6 = off_1000B84D0;
      }
    }

    else if (type <= -1128766712)
    {
      if (type == -1128766713)
      {
        v6 = off_1000B84E0;
      }

      else
      {
        v6 = off_1000B84C8;
      }
    }

    else
    {
      switch(type)
      {
        case 0xBCB86309:
          v6 = off_1000B84E8;
          break;
        case 0xC42AD000:
          v6 = off_1000B85F8;
          break;
        case 0xC42AD005:
          v6 = off_1000B8600;
          break;
        default:
          goto LABEL_155;
      }
    }

LABEL_154:
    v5 = [objc_alloc(*v6) initWithLength:length value:value];
    goto LABEL_155;
  }

  switch(type)
  {
    case 0x88B29100:
      v6 = off_1000B8790;
      goto LABEL_154;
    case 0x88B29101:
      v6 = off_1000B8768;
      goto LABEL_154;
    case 0x88B29102:
      v6 = off_1000B87B8;
      goto LABEL_154;
    case 0x88B29103:
      v6 = off_1000B8740;
      goto LABEL_154;
    case 0x88B29104:
      v6 = off_1000B86A0;
      goto LABEL_154;
    case 0x88B29105:
      v6 = off_1000B86B0;
      goto LABEL_154;
    case 0x88B29106:
      v6 = off_1000B86C0;
      goto LABEL_154;
    case 0x88B29107:
      v6 = off_1000B8750;
      goto LABEL_154;
    case 0x88B29108:
      v6 = off_1000B8758;
      goto LABEL_154;
    case 0x88B29109:
      v6 = off_1000B8798;
      goto LABEL_154;
    case 0x88B2910A:
      v6 = off_1000B87A0;
      goto LABEL_154;
    case 0x88B2910B:
      v6 = off_1000B8778;
      goto LABEL_154;
    case 0x88B2910C:
      v6 = off_1000B86A8;
      goto LABEL_154;
    case 0x88B2910D:
      v6 = off_1000B86D8;
      goto LABEL_154;
    case 0x88B2910E:
      v6 = off_1000B87C0;
      goto LABEL_154;
    case 0x88B2910F:
      v6 = off_1000B86B8;
      goto LABEL_154;
    case 0x88B29111:
      v6 = off_1000B8718;
      goto LABEL_154;
    case 0x88B29112:
      v6 = off_1000B8710;
      goto LABEL_154;
    case 0x88B29113:
      v6 = off_1000B86E8;
      goto LABEL_154;
    case 0x88B29114:
      v6 = off_1000B8708;
      goto LABEL_154;
    case 0x88B29115:
      v6 = off_1000B8700;
      goto LABEL_154;
    case 0x88B29116:
      v6 = off_1000B86F8;
      goto LABEL_154;
    case 0x88B29117:
      v6 = off_1000B8720;
      goto LABEL_154;
    case 0x88B29118:
      v6 = off_1000B87A8;
      goto LABEL_154;
    case 0x88B29121:
      v6 = off_1000B8770;
      goto LABEL_154;
    case 0x88B29122:
      v6 = off_1000B87B0;
      goto LABEL_154;
    case 0x88B29125:
      v6 = off_1000B8730;
      goto LABEL_154;
    case 0x88B29126:
      v6 = off_1000B87C8;
      goto LABEL_154;
    case 0x88B29128:
      v6 = off_1000B8628;
      goto LABEL_154;
    case 0x88B29129:
      v6 = &off_1000B87E0;
      goto LABEL_154;
    case 0x88B29130:
      v6 = off_1000B87D8;
      goto LABEL_154;
    case 0x88B29131:
      v6 = off_1000B8728;
      goto LABEL_154;
    case 0x88B29132:
      v6 = off_1000B8780;
      goto LABEL_154;
    case 0x88B29133:
      v6 = off_1000B8738;
      goto LABEL_154;
    case 0x88B29134:
      v6 = off_1000B8748;
      goto LABEL_154;
    case 0x88B29135:
      v6 = off_1000B86C8;
      goto LABEL_154;
    case 0x88B29136:
      v6 = off_1000B86F0;
      goto LABEL_154;
    case 0x88B29137:
      v6 = off_1000B8760;
      goto LABEL_154;
    case 0x88B29138:
      v6 = off_1000B8788;
      goto LABEL_154;
    case 0x88B29139:
      v6 = off_1000B86E0;
      goto LABEL_154;
    case 0x88B2913A:
      v6 = off_1000B87D0;
      goto LABEL_154;
    case 0x88B2913B:
      v6 = off_1000B86D0;
      goto LABEL_154;
    default:
      break;
  }

LABEL_155:

  return v5;
}

+ (id)tlvsFromKey:(id)key value:(id)value relativeURL:(id)l
{
  keyCopy = key;
  valueCopy = value;
  lCopy = l;
  v10 = +[UARPMetaData metaDataTable];
  v11 = [v10 objectForKeyedSubscript:keyCopy];
  if (!v11)
  {
    v16 = 0;
    goto LABEL_171;
  }

  v12 = objc_opt_new();
  unsignedLongValue = [v11 unsignedLongValue];
  v14 = &AMAuthInstallApCreatePersonalizedResponse_ptr;
  if (unsignedLongValue > 3166200575)
  {
    if (unsignedLongValue <= 3436347649)
    {
      if (unsignedLongValue <= 3291140100)
      {
        if (unsignedLongValue > 3166200582)
        {
          if (unsignedLongValue <= 3166200584)
          {
            if (unsignedLongValue == 3166200583)
            {
              v15 = UARPMetaDataComposePropertyListPayload;
            }

            else
            {
              v15 = UARPMetaDataComposeFTABPayload;
            }

            goto LABEL_167;
          }

          if (unsignedLongValue == 3166200585)
          {
            v15 = UARPMetaDataComposeSimpleBVERStringFile;
            goto LABEL_167;
          }

          if (unsignedLongValue == 3291140096)
          {
            v15 = UARPMetaDataHostMinimumBatteryLevel;
            goto LABEL_167;
          }

          goto LABEL_170;
        }

        if (unsignedLongValue > 3166200580)
        {
          if (unsignedLongValue == 3166200581)
          {
            v15 = UARPMetaDataComposeVersionStringFile;
          }

          else
          {
            v15 = UARPMetaDataComposeBVERStringFile;
          }

          goto LABEL_167;
        }

        if (unsignedLongValue == 3166200576)
        {
          v15 = UARPMetaDataComposePayloadHashAlgorithm;
          goto LABEL_167;
        }

        if (unsignedLongValue != 3166200579)
        {
          goto LABEL_170;
        }

        v15 = UARPMetaDataComposeMetaDataHashAlgorithm;
      }

      else
      {
        if (unsignedLongValue <= 3291140104)
        {
          if (unsignedLongValue > 3291140102)
          {
            if (unsignedLongValue == 3291140103)
            {
              v15 = UARPMetaDataHostMinimumVersion_tvOS;
            }

            else
            {
              v15 = UARPMetaDataHostMinimumVersion_watchOS;
            }
          }

          else if (unsignedLongValue == 3291140101)
          {
            v15 = UARPMetaDataHostMinimumVersion_iOS;
          }

          else
          {
            v15 = UARPMetaDataHostMinimumVersion_macOS;
          }

          goto LABEL_167;
        }

        if (unsignedLongValue <= 3291140106)
        {
          if (unsignedLongValue != 3291140105)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = valueCopy;
              v26 = keyCopy;
              v17 = valueCopy;
              v27 = 0u;
              v28 = 0u;
              v29 = 0u;
              v30 = 0u;
              v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v28;
                do
                {
                  for (i = 0; i != v19; i = i + 1)
                  {
                    if (*v28 != v20)
                    {
                      objc_enumerationMutation(v17);
                    }

                    v22 = [[UARPMetaDataHostExcludedHwVersion alloc] initWithPropertyListValue:*(*(&v27 + 1) + 8 * i) relativeURL:lCopy];
                    if (v22)
                    {
                      [v12 addObject:v22];
                    }
                  }

                  v19 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
                }

                while (v19);
              }

              keyCopy = v26;
              v14 = &AMAuthInstallApCreatePersonalizedResponse_ptr;
            }

            goto LABEL_170;
          }

          v15 = UARPMetaDataHostTriggerBatteryLevel;
          goto LABEL_167;
        }

        if (unsignedLongValue == 3291140107)
        {
          v15 = UARPMetaDataHostDeploymentRulePercentage;
          goto LABEL_167;
        }

        if (unsignedLongValue == 3291140108)
        {
          v15 = UARPMetaDataHostDeploymentRuleCountry;
          goto LABEL_167;
        }

        if (unsignedLongValue != 3291140109)
        {
          goto LABEL_170;
        }

        v15 = UARPMetaDataHostMinimumVersion_visionOS;
      }
    }

    else
    {
      if (unsignedLongValue <= 4042160639)
      {
        switch(unsignedLongValue)
        {
          case 3436347650:
            v15 = UARPMetaDataDeviceMinimumRequiredVersion;
            goto LABEL_167;
          case 3436347652:
            v15 = UARPMetaDataDeviceUrgentUpdate;
            goto LABEL_167;
          case 3436347653:
            v15 = UARPMetaDataDevicePayloadCertificate;
            goto LABEL_167;
          case 3436347654:
            v15 = UARPMetaDataDevicePayloadSignature;
            goto LABEL_167;
          case 3436347655:
            v15 = UARPMetaDataDevicePayloadHash;
            goto LABEL_167;
          case 3436347659:
            v15 = UARPMetaDataDeviceCompressPayloadChunkSize;
            goto LABEL_167;
          case 3436347660:
            v15 = UARPMetaDataPayloadCompressionAlgorithm;
            goto LABEL_167;
          case 3436347665:
            v15 = UARPMetaDataDevicePayloadExpandFilename;
            goto LABEL_167;
          case 3436347666:
            v15 = UARPMetaDataDevicePayloadHashAlgorithm;
            goto LABEL_167;
          case 3436347667:
            v15 = UARPMetaDataDeviceCompressedHeaders;
            goto LABEL_167;
          case 3436347671:
            v15 = UARPMetaDataDeviceMetaDataHashAlgorithm;
            goto LABEL_167;
          case 3436347672:
            v15 = UARPMetaDataDeviceMetaDataHash;
            goto LABEL_167;
          case 3436347673:
            v15 = UARPMetaDataDeviceUncompressedPayloadLength;
            goto LABEL_167;
          case 3436347675:
            v15 = UARPMetaDataDevicePayloadOrderedIndex;
            goto LABEL_167;
          case 3436347676:
            v15 = UARPMetaDataDeviceFlashSectionLength;
            goto LABEL_167;
          case 3436347677:
            v15 = UARPMetaDataDevicePayloadIdentifier;
            goto LABEL_167;
          case 3436347678:
            v15 = UARPMetaDataDeviceVendorVersionStringFile;
            goto LABEL_167;
          default:
            goto LABEL_170;
        }

        goto LABEL_170;
      }

      if (unsignedLongValue == 4042160640)
      {
        v15 = UARPMetaDataCrashAnalyticsCoreName;
        goto LABEL_167;
      }

      if (unsignedLongValue == 4042160641)
      {
        v15 = UARPMetaDataCrashAnalyticsAppleModelNumber;
        goto LABEL_167;
      }

      if (unsignedLongValue != 4042160643)
      {
        goto LABEL_170;
      }

      v15 = UARPMetaDataCrashAnalyticsTestMode;
    }

    goto LABEL_167;
  }

  if (unsignedLongValue > 1619725831)
  {
    switch(unsignedLongValue)
    {
      case 2293403904:
        v15 = UARPMetaDataPersonalizationRequired;
        goto LABEL_167;
      case 2293403905:
        v15 = UARPMetaDataPersonalizationPayloadTag;
        goto LABEL_167;
      case 2293403906:
        v15 = UARPMetaDataPersonalizationSuperBinaryAssetID;
        goto LABEL_167;
      case 2293403907:
        v15 = UARPMetaDataPersonalizationManifestPrefix;
        goto LABEL_167;
      case 2293403908:
        v15 = UARPMetaDataPersonalizationBoardID;
        goto LABEL_167;
      case 2293403909:
        v15 = UARPMetaDataPersonalizationChipID;
        goto LABEL_167;
      case 2293403910:
        v15 = UARPMetaDataPersonalizationECID;
        goto LABEL_167;
      case 2293403911:
        v15 = UARPMetaDataPersonalizationNonce;
        goto LABEL_167;
      case 2293403912:
        v15 = UARPMetaDataPersonalizationNonceHash;
        goto LABEL_167;
      case 2293403913:
        v15 = UARPMetaDataPersonalizationSecurityDomain;
        goto LABEL_167;
      case 2293403914:
        v15 = UARPMetaDataPersonalizationSecurityMode;
        goto LABEL_167;
      case 2293403915:
        v15 = UARPMetaDataPersonalizationProductionMode;
        goto LABEL_167;
      case 2293403916:
        v15 = UARPMetaDataPersonalizationChipEpoch;
        goto LABEL_167;
      case 2293403917:
        v15 = UARPMetaDataPersonalizationEnableMixMatch;
        goto LABEL_167;
      case 2293403918:
        v15 = UARPMetaDataPersonalizationSuperBinaryPayloadIndex;
        goto LABEL_167;
      case 2293403919:
        v15 = UARPMetaDataPersonalizationChipRevision;
        goto LABEL_167;
      case 2293403920:
      case 2293403929:
      case 2293403930:
      case 2293403931:
      case 2293403932:
      case 2293403933:
      case 2293403934:
      case 2293403935:
      case 2293403936:
      case 2293403939:
      case 2293403940:
      case 2293403943:
      case 2293403946:
      case 2293403947:
      case 2293403948:
      case 2293403949:
      case 2293403950:
      case 2293403951:
        goto LABEL_170;
      case 2293403921:
        v15 = UARPMetaDataPersonalizationFTABSubfileTag;
        goto LABEL_167;
      case 2293403922:
        v15 = UARPMetaDataPersonalizationFTABSubfileLongname;
        goto LABEL_167;
      case 2293403923:
        v15 = UARPMetaDataPersonalizationFTABSubfileDigest;
        goto LABEL_167;
      case 2293403924:
        v15 = UARPMetaDataPersonalizationFTABSubfileHashAlgorithm;
        goto LABEL_167;
      case 2293403925:
        v15 = UARPMetaDataPersonalizationFTABSubfileESEC;
        goto LABEL_167;
      case 2293403926:
        v15 = UARPMetaDataPersonalizationFTABSubfileEPRO;
        goto LABEL_167;
      case 2293403927:
        v15 = UARPMetaDataPersonalizationFTABSubfileTrusted;
        goto LABEL_167;
      case 2293403928:
        v15 = UARPMetaDataPersonalizationSoCLiveNonce;
        goto LABEL_167;
      case 2293403937:
        v15 = UARPMetaDataPersonalizationPrefixNeedsLogicalUnitNumber;
        goto LABEL_167;
      case 2293403938:
        v15 = UARPMetaDataPersonalizationSuffixNeedsLogicalUnitNumber;
        goto LABEL_167;
      case 2293403941:
        v15 = UARPMetaDataPersonalizationLogicalUnitNumber;
        goto LABEL_167;
      case 2293403942:
        v15 = UARPMetaDataPersonalizationTicketNeedsLogicalUnitNumber;
        goto LABEL_167;
      case 2293403944:
        v15 = UARPMetaDataHostPersonalizationRequired;
        goto LABEL_167;
      case 2293403945:
        v15 = UARPMetaDataRequiredPersonalizationOption;
        goto LABEL_167;
      case 2293403952:
        v15 = UARPMetaDataPersonalizedManifest;
        goto LABEL_167;
      case 2293403953:
        v15 = UARPMetaDataPersonalizationLife;
        goto LABEL_167;
      case 2293403954:
        v15 = UARPMetaDataPersonalizationProvisioning;
        goto LABEL_167;
      case 2293403955:
        v15 = UARPMetaDataPersonalizationManifestEpoch;
        goto LABEL_167;
      case 2293403956:
        v15 = UARPMetaDataPersonalizationManifestSuffix;
        goto LABEL_167;
      case 2293403957:
        v15 = UARPMetaDataPersonalizationECIDData;
        goto LABEL_167;
      case 2293403958:
        v15 = UARPMetaDataPersonalizationFTABSubfileDigestFilename;
        goto LABEL_167;
      case 2293403959:
        v15 = UARPMetaDataPersonalizationNonceSeed;
        goto LABEL_167;
      case 2293403960:
        v15 = UARPMetaDataPersonalizationRealHdcpKeyPresent;
        goto LABEL_167;
      case 2293403961:
        v15 = UARPMetaDataPersonalizationFTABGeneration;
        goto LABEL_167;
      case 2293403962:
        v15 = UARPMetaDataPersonalizationUIDMode;
        goto LABEL_167;
      case 2293403963:
        v15 = UARPMetaDataPersonalizationEnableFutureFWVersion;
        goto LABEL_167;
      default:
        if (unsignedLongValue == 1619725832)
        {
          v15 = UARPMetaDataHeySiriModelEngineType;
        }

        else
        {
          if (unsignedLongValue != 1619725833)
          {
            goto LABEL_170;
          }

          v15 = UARPMetaDataHeySiriModelActiveModel;
        }

        break;
    }

    goto LABEL_167;
  }

  if (unsignedLongValue > 538280447)
  {
    if (unsignedLongValue > 1619725826)
    {
      if (unsignedLongValue <= 1619725828)
      {
        if (unsignedLongValue == 1619725827)
        {
          v15 = UARPMetaDataHeySiriModelRole;
        }

        else
        {
          v15 = UARPMetaDataHeySiriModelDigest;
        }
      }

      else if (unsignedLongValue == 1619725829)
      {
        v15 = UARPMetaDataHeySiriModelSignature;
      }

      else if (unsignedLongValue == 1619725830)
      {
        v15 = UARPMetaDataHeySiriModelCertificate;
      }

      else
      {
        v15 = UARPMetaDataHeySiriModelEngineVersion;
      }

      goto LABEL_167;
    }

    if (unsignedLongValue > 1619725823)
    {
      if (unsignedLongValue == 1619725824)
      {
        v15 = UARPMetaDataHeySiriModelType;
      }

      else if (unsignedLongValue == 1619725825)
      {
        v15 = UARPMetaDataHeySiriModelLocale;
      }

      else
      {
        v15 = UARPMetaDataHeySiriModelHash;
      }

      goto LABEL_167;
    }

    if (unsignedLongValue == 538280448)
    {
      v15 = UARPMetaDataMappedAnalyticsAppleModelNumber;
      goto LABEL_167;
    }

    if (unsignedLongValue == 538280449)
    {
      v15 = UARPMetaDataMappedAnalyticsEventID;
      goto LABEL_167;
    }

    goto LABEL_170;
  }

  if (unsignedLongValue > 5)
  {
    if (unsignedLongValue <= 9)
    {
      if (unsignedLongValue == 6)
      {
        v15 = UARPMetaDataInformationStagedFirmwareVersion;
        goto LABEL_167;
      }

      if (unsignedLongValue == 9)
      {
        v15 = UARPMetaDataInformationFriendlyName;
        goto LABEL_167;
      }

      goto LABEL_170;
    }

    if (unsignedLongValue == 10)
    {
      v15 = UARPMetaDataInformationHardwareFusing;
      goto LABEL_167;
    }

    if (unsignedLongValue == 11)
    {
      v15 = UARPMetaDataInformationAppleModelNumber;
      goto LABEL_167;
    }

    if (unsignedLongValue != 13)
    {
      goto LABEL_170;
    }

    v15 = UARPMetaDataInformationAssetIdentifier;
LABEL_167:
    v23 = [[v15 alloc] initWithPropertyListValue:valueCopy relativeURL:lCopy];
    if (v23)
    {
      [v12 addObject:v23];
    }

    goto LABEL_170;
  }

  if (unsignedLongValue > 2)
  {
    if (unsignedLongValue == 3)
    {
      v15 = UARPMetaDataInformationSerialNumber;
    }

    else if (unsignedLongValue == 4)
    {
      v15 = UARPMetaDataInformationHardwareVersion;
    }

    else
    {
      v15 = UARPMetaDataInformationActiveFirmwareVersion;
    }

    goto LABEL_167;
  }

  if (unsignedLongValue == 1)
  {
    v15 = UARPMetaDataInformationManufacturerName;
    goto LABEL_167;
  }

  if (unsignedLongValue == 2)
  {
    v15 = UARPMetaDataInformationModelName;
    goto LABEL_167;
  }

LABEL_170:
  v16 = [v14[285] arrayWithArray:{v12, v25, v26}];

LABEL_171:

  return v16;
}

+ (id)metaDataTable
{
  if (qword_1000D48B0 != -1)
  {
    sub_1000829D8();
  }

  v3 = qword_1000D48A8;

  return [NSDictionary dictionaryWithDictionary:v3];
}

+ (id)tlvNameForType:(id)type
{
  typeCopy = type;
  v4 = +[UARPMetaData metaDataTable];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100057438;
  v15 = sub_100057448;
  v16 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100057450;
  v8[3] = &unk_1000B9610;
  v5 = typeCopy;
  v9 = v5;
  v10 = &v11;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

@end