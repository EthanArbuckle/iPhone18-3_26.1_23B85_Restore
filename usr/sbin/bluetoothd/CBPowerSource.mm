@interface CBPowerSource
- (CBPowerSource)initWithBTStackDevice:(void *)device identifier:(id)identifier error:(id *)error;
@end

@implementation CBPowerSource

- (CBPowerSource)initWithBTStackDevice:(void *)device identifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  if (!self)
  {
    if (error)
    {
      CBErrorF();
      *error = v29 = 0;
      goto LABEL_45;
    }

LABEL_50:
    v29 = 0;
    goto LABEL_45;
  }

  v9 = [(CBPowerSource *)self init];
  v10 = v9;
  if (!v9)
  {
    if (error)
    {
      v31 = [objc_opt_class() description];
      *error = CBErrorF();
    }

    goto LABEL_50;
  }

  [(CBPowerSource *)v9 setAccessoryID:identifierCopy];
  v11 = [[NSUUID alloc] initWithUUIDString:identifierCopy];
  if (v11)
  {
    if (qword_100B508D0 != -1)
    {
      sub_10080578C();
    }

    [(CBPowerSource *)v10 setAppearanceValue:sub_1000E30FC(off_100B508C8, v11)];
  }

  [(CBPowerSource *)v10 setDeviceType:sub_1000DEB14(device)];
  [(CBPowerSource *)v10 setAccessoryCategory:CBDeviceTypeToAccessoryCategory()];
  [(CBPowerSource *)v10 setInternalFlags:[(CBPowerSource *)v10 internalFlags]| 1];
  [(CBPowerSource *)v10 setLowWarnLevel:20];
  [(CBPowerSource *)v10 setMaxCapacity:100.0];
  sub_1000C23E0(device, __p);
  if ((SBYTE7(v33) & 0x80u) == 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  v13 = [NSString stringWithUTF8String:v12];
  [(CBPowerSource *)v10 setName:v13];

  if (SBYTE7(v33) < 0)
  {
    operator delete(__p[0]);
  }

  [(CBPowerSource *)v10 setPresent:1];
  v34 = 0;
  v35 = 0;
  if (sub_1000C2364(device, &v35 + 1, &v35, &v34 + 1, &v34))
  {
    [(CBPowerSource *)v10 setProductID:HIDWORD(v34)];
    [(CBPowerSource *)v10 setVendorID:v35];
    [(CBPowerSource *)v10 setVendorIDSource:BYTE4(v35)];
  }

  v14 = @"USB";
  if ((*(device + 1360) & 1) == 0)
  {
    v15 = sub_100540848(device);
    v14 = @"Bluetooth";
    if (v15)
    {
      v14 = @"Bluetooth LE";
    }
  }

  v16 = v14;
  [(CBPowerSource *)v10 setTransportType:v16];
  [(CBPowerSource *)v10 setType:@"Accessory Source"];
  *__p = 0u;
  v33 = 0u;
  sub_1000DEB5C(device, __p);
  if (LODWORD(__p[1]) || v33 || DWORD2(v33))
  {
    v25 = objc_alloc_init(CBPowerSource);
    [v25 setPartID:1];
    v26 = __p[1];
    if (LODWORD(__p[1]))
    {
      if (SLODWORD(__p[1]) >= 100)
      {
        v26 = 100;
      }

      [(CBPowerSource *)v10 setBatteryInfo:v26 & ~(v26 >> 31) | (BYTE4(__p[1]) << 8)];
      [(CBPowerSource *)v10 setPartID:2];
      [v25 updateWithCBPowerSource:v10];
    }

    v27 = v33;
    if (v33)
    {
      if (v33 >= 100)
      {
        v27 = 100;
      }

      [(CBPowerSource *)v10 setBatteryInfo:v27 & ~(v27 >> 31) | (BYTE4(v33) << 8)];
      [(CBPowerSource *)v10 setPartID:3];
      [v25 updateWithCBPowerSource:v10];
    }

    v28 = DWORD2(v33);
    if (DWORD2(v33))
    {
      if (SDWORD2(v33) >= 100)
      {
        v28 = 100;
      }

      [(CBPowerSource *)v10 setBatteryInfo:v28 & ~(v28 >> 31) | (BYTE12(v33) << 8)];
      [(CBPowerSource *)v10 setPartID:4];
      [v25 updateWithCBPowerSource:v10];
    }

    v24 = v25;

    [(CBPowerSource *)v24 setPartID:1];
  }

  else
  {
    v17 = __p[0];
    if (LODWORD(__p[0]))
    {
      v18 = 6;
    }

    else
    {
      v18 = 0;
    }

    v19 = BYTE4(__p[0]);
    transportType = [(CBPowerSource *)v10 transportType];
    if (transportType == @"USB" || (v21 = transportType) != 0 && (v22 = [(__CFString *)transportType isEqual:@"USB"], v21, v21, v22))
    {
      v19 = 1;
    }

    if (v17 >= 100)
    {
      v23 = 100;
    }

    else
    {
      v23 = v17;
    }

    [(CBPowerSource *)v10 setBatteryInfo:v23 & ~(v23 >> 31) | (v19 << 8)];
    [(CBPowerSource *)v10 setPartID:v18];
    v24 = v10;
  }

  v29 = v24;

LABEL_45:
  return v29;
}

@end