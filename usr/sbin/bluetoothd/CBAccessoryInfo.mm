@interface CBAccessoryInfo
- (id)description;
- (void)_powerSourceUpdateWithPartID:(const char *)a3;
- (void)powerSourceRemove;
- (void)powerSourceUpdate;
@end

@implementation CBAccessoryInfo

- (id)description
{
  objc_opt_class();
  v3 = [(CBDevice *)self->_cbDevice identifier];
  v4 = NSPrintF_safe();

  return v4;
}

- (void)powerSourceUpdate
{
  if ([(CBDevice *)self->_cbDevice proximityPairingProductID]&& ([(CBDevice *)self->_cbDevice accessoryStatusFlags]& 1) != 0)
  {
    if ([(CBDevice *)self->_cbDevice batteryStateMain])
    {
      return;
    }

    [(CBAccessoryInfo *)self _powerSourceUpdateWithPartID:"Left"];
    [(CBAccessoryInfo *)self _powerSourceUpdateWithPartID:"Right"];
  }

  else
  {
    if (self->_powerSourceIDLeft)
    {
      IOPSReleasePowerSource();
      if (dword_100B50958 < 31 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
      {
        sub_100801594();
      }

      self->_powerSourceIDLeft = 0;
    }

    powerSourceDetailsLeft = self->_powerSourceDetailsLeft;
    self->_powerSourceDetailsLeft = 0;

    if (self->_powerSourceIDRight)
    {
      IOPSReleasePowerSource();
      if (dword_100B50958 < 31 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
      {
        sub_1008015FC();
      }

      self->_powerSourceIDRight = 0;
    }

    powerSourceDetailsRight = self->_powerSourceDetailsRight;
    self->_powerSourceDetailsRight = 0;
  }

  [(CBAccessoryInfo *)self _powerSourceUpdateWithPartID:"Case"];
}

- (void)powerSourceRemove
{
  if (self->_powerSourceIDLeft)
  {
    IOPSReleasePowerSource();
    if (dword_100B50958 < 31 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
    {
      sub_100801664();
    }

    self->_powerSourceIDLeft = 0;
  }

  powerSourceDetailsLeft = self->_powerSourceDetailsLeft;
  self->_powerSourceDetailsLeft = 0;

  if (self->_powerSourceIDRight)
  {
    IOPSReleasePowerSource();
    if (dword_100B50958 < 31 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
    {
      sub_1008016CC();
    }

    self->_powerSourceIDRight = 0;
  }

  powerSourceDetailsRight = self->_powerSourceDetailsRight;
  self->_powerSourceDetailsRight = 0;

  if (self->_powerSourceIDCase)
  {
    IOPSReleasePowerSource();
    if (dword_100B50958 < 31 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
    {
      sub_100801734();
    }

    self->_powerSourceIDCase = 0;
  }

  powerSourceDetailsCase = self->_powerSourceDetailsCase;
  self->_powerSourceDetailsCase = 0;
}

- (void)_powerSourceUpdateWithPartID:(const char *)a3
{
  v5 = self->_cbDevice;
  v6 = [(CBDevice *)v5 identifier];
  if (v6)
  {
    v7 = [(CBDevice *)v5 proximityPairingProductID];
    v8 = [(CBDevice *)v5 proximityPairingProductID];
    v96 = self;
    if (v8 == 8213)
    {
      v9 = 8212;
    }

    else
    {
      v9 = v7;
    }

    v10 = [(CBDevice *)v5 proximityPairingProductID];
    if (v10 == 8216)
    {
      LODWORD(v11) = 8228;
    }

    else
    {
      LODWORD(v11) = v9;
    }

    v12 = [(CBDevice *)v5 proximityPairingProductID];
    if (v12 == 8220)
    {
      LODWORD(v11) = 8219;
    }

    v13 = [(CBDevice *)v5 proximityPairingProductID];
    v11 = v13 == 8233 ? 8231 : v11;
    v14 = v13 == 8233 || v12 == 8220;
    v15 = v14 || v10 == 8216;
    if (v15 || v8 == 8213)
    {
      if (!strcmp(a3, "Left"))
      {
        [(CBDevice *)v5 batteryLevelLeft];
        v18 = v17;
        v19 = [(CBDevice *)v5 batteryStateLeft];
        v20 = 24;
        v21 = 16;
      }

      else
      {
        if (strcmp(a3, "Right"))
        {
          if (strcmp(a3, "Case"))
          {
            if (dword_100B50958 <= 90 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe();
            }

            goto LABEL_151;
          }

          [(CBDevice *)v5 batteryLevelCase];
          v18 = v40;
          v19 = [(CBDevice *)v5 batteryStateCase];
          v20 = 56;
          v21 = 48;
          v23 = "Audio Battery Case";
          if (!v19)
          {
            goto LABEL_61;
          }

          goto LABEL_33;
        }

        [(CBDevice *)v5 batteryLevelRight];
        v18 = v22;
        v19 = [(CBDevice *)v5 batteryStateRight];
        v20 = 40;
        v21 = 32;
      }

      v23 = "Headset";
      if (!v19)
      {
LABEL_61:
        if (*(&self->super.isa + v20))
        {
          v41 = v20;
          IOPSReleasePowerSource();
          if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
          {
            v89 = CUPrintErrorCode();
            LogPrintF_safe();
          }

          *(&self->super.isa + v41) = 0;
        }

        v42 = *(&self->super.isa + v21);
        *(&self->super.isa + v21) = 0;

        goto LABEL_151;
      }

LABEL_33:
      v93 = v20;
      v24 = *(&self->super.isa + v21);
      v95 = v24 == 0;
      if (!v24)
      {
        v24 = objc_alloc_init(NSMutableDictionary);
        v25 = *(&self->super.isa + v21);
        *(&self->super.isa + v21) = v24;

        v26 = [NSString stringWithUTF8String:v23];
        sub_10003F060();

        [(objc_class *)v24 setObject:v6 forKeyedSubscript:@"Accessory Identifier"];
        [(objc_class *)v24 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Is Present"];
        [(objc_class *)v24 setObject:&off_100B33420 forKeyedSubscript:@"Max Capacity"];
        v27 = [NSString stringWithUTF8String:a3];
        sub_10003F060();

        v28 = [NSNumber numberWithUnsignedInt:v11];
        sub_10003F060();

        [(objc_class *)v24 setObject:@"Bluetooth LE" forKeyedSubscript:@"Transport Type"];
        [(objc_class *)v24 setObject:@"Accessory Source" forKeyedSubscript:@"Type"];
        [(objc_class *)v24 setObject:&off_100B33438 forKeyedSubscript:@"Vendor ID"];
        v29 = [NSNumber numberWithUnsignedChar:[(CBDevice *)v5 vendorIDSource]];
        sub_10003F060();

        v30 = [(CBDevice *)v5 btAddressData];
        v31 = CUPrintNSDataAddress();
        [(objc_class *)v24 setObject:v31 forKeyedSubscript:@"Group Identifier"];
      }

      v32 = strcmp(a3, "Case");
      v33 = [(objc_class *)v24 objectForKeyedSubscript:@"Name"];
      if (v32)
      {
        v34 = [self->_primaryCBDevice name];
        goto LABEL_80;
      }

      v35 = [(CBDevice *)v5 proximityPairingProductID];
      if (!(!v14 & v36))
      {
        switch(v35)
        {
          case 800:
            goto LABEL_73;
          case 801:
            goto LABEL_72;
          case 802:
            goto LABEL_76;
          case 803:
            v37 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
            v38 = v37;
            v39 = @"apple_magic_mouse";
            goto LABEL_78;
          case 804:
            v37 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
            v38 = v37;
            v39 = @"apple_magic_trackpad";
            goto LABEL_78;
          default:
            JUMPOUT(0);
        }
      }

      switch(v35)
      {
        case 0:
          v34 = 0;
LABEL_80:
          v94 = v6;
          if (v34)
          {
            v44 = v33;
            v45 = v34;
            v46 = v45;
            if (v44 == v45)
            {
            }

            else
            {
              if (v44)
              {
                v47 = [v44 isEqual:v45];

                if (v47)
                {
                  goto LABEL_88;
                }
              }

              else
              {
              }

              sub_10003F060();
              sub_1000E0A60();
            }
          }

LABEL_88:
          if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || (v48 = _LogCategory_Initialize()) != 0))
          {
            v87 = (v18 * 100.0);
            LogPrintF_safe();
          }

          v49 = [NSNumber numberWithInt:(v18 * 100.0), v87];
          v50 = [(objc_class *)v24 objectForKeyedSubscript:@"Current Capacity"];
          v51 = v49;
          v52 = v50;
          v53 = v52;
          if (v51 == v52)
          {

            goto LABEL_100;
          }

          if ((v51 != 0) != (v52 == 0))
          {
            v54 = [v51 isEqual:v52];

            if (v54)
            {
LABEL_100:
              v55 = @"Battery Power";
              if (v19 == 1)
              {
                v55 = @"AC Power";
              }

              v56 = v55;
              v57 = [(objc_class *)v24 objectForKeyedSubscript:@"Power Source State"];
              v58 = v56;
              v59 = v57;
              v60 = v59;
              v91 = v34;
              v92 = v33;
              if (v58 == v59)
              {

                goto LABEL_109;
              }

              if (v59)
              {
                v61 = [(__CFString *)v58 isEqual:v59];

                if (v61)
                {
LABEL_109:
                  if (v19 == 1)
                  {
                    v62 = &__kCFBooleanTrue;
                  }

                  else
                  {
                    v62 = &__kCFBooleanFalse;
                  }

                  v63 = v62;
                  v64 = [(objc_class *)v24 objectForKeyedSubscript:@"Is Charging"];
                  v65 = v63;
                  v66 = v64;
                  v67 = v66;
                  if (v65 == v66)
                  {

                    goto LABEL_119;
                  }

                  if (v66)
                  {
                    v68 = [v65 isEqual:v66];

                    if (v68)
                    {
LABEL_119:
                      if ((v18 * 100.0) >= 10)
                      {
                        v69 = &__kCFBooleanFalse;
                      }

                      else
                      {
                        v69 = &__kCFBooleanTrue;
                      }

                      v70 = v69;
                      v71 = [(objc_class *)v24 objectForKeyedSubscript:@"Low Warn Level"];
                      v72 = v70;
                      v73 = v71;
                      v74 = v73;
                      if (v72 == v73)
                      {

                        v75 = v96;
                        goto LABEL_129;
                      }

                      v75 = v96;
                      if (v73)
                      {
                        v76 = [v72 isEqual:v73];

                        if (v76)
                        {
LABEL_129:
                          [(CBDevice *)v5 accessoryStatusOBCTime];
                          if ((v77 / 60.0) < 1)
                          {
LABEL_138:
                            v84 = *(&v75->super.isa + v93);
                            v85 = v95;
                            if (!v84)
                            {
                              IOPSCreatePowerSource();
                              v84 = 0;
                              *(&v75->super.isa + v93) = 0;
                              if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || (v86 = _LogCategory_Initialize(), v84 = 0, v86)))
                              {
                                v90 = CUPrintErrorCode();
                                LogPrintF_safe();

                                v85 = 1;
                                v84 = 0;
                              }

                              else
                              {
                                v85 = 1;
                              }
                            }

                            if (v84)
                            {
                              if (v85)
                              {
                                IOPSSetPowerSourceDetails();
                                if (dword_100B50958 <= 30 && (dword_100B50958 != -1 || _LogCategory_Initialize()))
                                {
                                  v88 = CUPrintErrorCode();
                                  LogPrintF_safe();
                                }
                              }
                            }

                            v6 = v94;
                            goto LABEL_151;
                          }

                          v78 = [NSNumber numberWithInt:?];
                          v79 = [(objc_class *)v24 objectForKeyedSubscript:@"Time to Full Charge"];
                          v80 = v78;
                          v81 = v79;
                          v82 = v81;
                          if (v80 == v81)
                          {
                          }

                          else
                          {
                            if ((v80 != 0) != (v81 == 0))
                            {
                              v83 = [v80 isEqual:v81];

                              if (v83)
                              {
                                goto LABEL_137;
                              }
                            }

                            else
                            {
                            }

                            [(objc_class *)v24 setObject:v80 forKeyedSubscript:@"Time to Full Charge"];
                            sub_1000E0A60();
                          }

LABEL_137:

                          goto LABEL_138;
                        }
                      }

                      else
                      {
                      }

                      [(objc_class *)v24 setObject:v72 forKeyedSubscript:@"Low Warn Level"];
                      sub_1000E0A60();
                      goto LABEL_129;
                    }
                  }

                  else
                  {
                  }

                  [(objc_class *)v24 setObject:v65 forKeyedSubscript:@"Is Charging"];
                  sub_1000E0A60();
                  goto LABEL_119;
                }
              }

              else
              {
              }

              [(objc_class *)v24 setObject:v58 forKeyedSubscript:@"Power Source State"];
              sub_1000E0A60();
              goto LABEL_109;
            }
          }

          else
          {
          }

          [(objc_class *)v24 setObject:v51 forKeyedSubscript:@"Current Capacity"];
          sub_1000E0A60();
          goto LABEL_100;
        case 0x208:
        case 0x209:
        case 0x20A:
        case 0x22C:
        case 0x22D:
        case 0x22E:
        case 0x239:
        case 0x23A:
        case 0x23B:
        case 0x255:
        case 0x256:
        case 0x257:
          v37 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v38 = v37;
          v39 = @"apple_wireless_keyboard";
          break;
        case 0x29A:
LABEL_72:
          v37 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v38 = v37;
          v39 = @"apple_magic_keyboard_touch";
          break;
        case 0x29C:
LABEL_73:
          v37 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v38 = v37;
          v39 = @"apple_magic_keyboard";
          break;
        case 0x29F:
LABEL_76:
          v37 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v38 = v37;
          v39 = @"apple_magic_keyboard_touch_keypad";
          break;
        case 0x2029:
        case 0x2018:
        case 0x201C:
        case 0x2015:
          v37 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v38 = v37;
          v39 = @"apple_airpods_case";
          break;
        default:
          v38 = [CBProductInfo productInfoWithProductID:v35];
          v43 = [v38 productName];
LABEL_79:
          v34 = v43;

          goto LABEL_80;
      }

LABEL_78:
      v43 = [v37 localizedStringForKey:v39 value:&stru_100B0F9E0 table:@"CBLocalizable"];
      goto LABEL_79;
    }
  }

LABEL_151:
}

@end