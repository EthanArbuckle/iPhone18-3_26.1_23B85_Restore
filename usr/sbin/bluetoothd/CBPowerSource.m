@interface CBPowerSource
- (CBPowerSource)initWithBTStackDevice:(void *)a3 identifier:(id)a4 error:(id *)a5;
@end

@implementation CBPowerSource

- (CBPowerSource)initWithBTStackDevice:(void *)a3 identifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  if (!self)
  {
    if (a5)
    {
      CBErrorF();
      *a5 = v29 = 0;
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
    if (a5)
    {
      v31 = [objc_opt_class() description];
      *a5 = CBErrorF();
    }

    goto LABEL_50;
  }

  [(CBPowerSource *)v9 setAccessoryID:v8];
  v11 = [[NSUUID alloc] initWithUUIDString:v8];
  if (v11)
  {
    if (qword_100B508D0 != -1)
    {
      sub_10080578C();
    }

    [(CBPowerSource *)v10 setAppearanceValue:sub_1000E30FC(off_100B508C8, v11)];
  }

  [(CBPowerSource *)v10 setDeviceType:sub_1000DEB14(a3)];
  [(CBPowerSource *)v10 setAccessoryCategory:CBDeviceTypeToAccessoryCategory()];
  [(CBPowerSource *)v10 setInternalFlags:[(CBPowerSource *)v10 internalFlags]| 1];
  [(CBPowerSource *)v10 setLowWarnLevel:20];
  [(CBPowerSource *)v10 setMaxCapacity:100.0];
  sub_1000C23E0(a3, __p);
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
  if (sub_1000C2364(a3, &v35 + 1, &v35, &v34 + 1, &v34))
  {
    [(CBPowerSource *)v10 setProductID:HIDWORD(v34)];
    [(CBPowerSource *)v10 setVendorID:v35];
    [(CBPowerSource *)v10 setVendorIDSource:BYTE4(v35)];
  }

  v14 = @"USB";
  if ((*(a3 + 1360) & 1) == 0)
  {
    v15 = sub_100540848(a3);
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
  sub_1000DEB5C(a3, __p);
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
    v20 = [(CBPowerSource *)v10 transportType];
    if (v20 == @"USB" || (v21 = v20) != 0 && (v22 = [(__CFString *)v20 isEqual:@"USB"], v21, v21, v22))
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