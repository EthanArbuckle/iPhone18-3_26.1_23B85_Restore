@interface FMDBLEAudioAdvertisementParser
+ (id)airPodsConfigurationDictWithBleDevice:(id)a3;
+ (id)configurationDictWithBleDevice:(id)a3 supportedAccessoryProfile:(int64_t)a4;
+ (id)primaryBeaconForBeacons:(id)a3;
+ (id)stereoPairConfigurationDictWithBleDevice:(id)a3;
@end

@implementation FMDBLEAudioAdvertisementParser

+ (id)primaryBeaconForBeacons:(id)a3
{
  v3 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10000AAA4;
  v18 = sub_100002B1C;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10000AAA4;
  v12 = sub_100002B1C;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100194654;
  v7[3] = &unk_1002D02D0;
  v7[4] = &v8;
  v7[5] = &v14;
  [v3 enumerateObjectsUsingBlock:v7];
  v4 = v15[5];
  if (!v4)
  {
    v4 = v9[5];
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v5;
}

+ (id)configurationDictWithBleDevice:(id)a3 supportedAccessoryProfile:(int64_t)a4
{
  v6 = a3;
  if (a4 == 2)
  {
    v7 = [FMDBLEAudioAdvertisementParser stereoPairConfigurationDictWithBleDevice:v6];
  }

  else if (a4 == 1)
  {
    v7 = [FMDBLEAudioAdvertisementParser airPodsConfigurationDictWithBleDevice:v6];
  }

  else
  {
    if (a4)
    {
      goto LABEL_8;
    }

    v7 = objc_opt_new();
  }

  v4 = v7;
LABEL_8:

  return v4;
}

+ (id)airPodsConfigurationDictWithBleDevice:(id)a3
{
  v3 = a3;
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 rssi]);
  v5 = [v3 bluetoothAddress];
  v6 = [v5 fm_MACAddressString];

  v58 = v3;
  v7 = [v3 advertisementFields];
  v8 = [v7 objectForKeyedSubscript:@"cc"];
  v9 = [v7 objectForKeyedSubscript:@"aState"];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &off_1002E7BD0;
  }

  v12 = v11;

  v64 = v12;
  if ([v12 isEqualToNumber:&off_1002E7BD0])
  {
    v13 = 2;
  }

  else
  {
    v13 = [v12 isEqualToNumber:&off_1002E7BE8];
  }

  v61 = v6;
  v62 = v13;
  v60 = v4;
  v63 = [v7 objectForKeyedSubscript:@"hsStatus"];
  v14 = [v63 unsignedIntValue];
  v69 = dword_100312D94 & v14;
  v15 = dword_100312D80 & v14;
  v16 = dword_100312D84 & v14;
  v17 = dword_100312D8C & v14;
  v18 = dword_100312D88 & v14;
  v19 = dword_100312D90 & v14;
  v20 = dword_100312D98 & v14;
  v21 = sub_100002880();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110914;
    v72 = v69 != 0;
    v73 = 1024;
    v74 = v20 != 0;
    v75 = 1024;
    v76 = v15 != 0;
    v77 = 1024;
    v78 = v16 != 0;
    v79 = 1024;
    v80 = v17 != 0;
    v81 = 1024;
    v82 = v18 != 0;
    v83 = 1024;
    v84 = v19 != 0;
    v85 = 2112;
    v86 = v8;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "MainHSSTATUS L %i P %i U %i C %i OC %i E %i OE %i CC %@", buf, 0x36u);
  }

  v70 = v8;
  if (v16)
  {
    v22 = 1;
  }

  else
  {
    v22 = 2;
  }

  if (v18)
  {
    v23 = 1;
  }

  else
  {
    v23 = 2;
  }

  if (v19)
  {
    v24 = 1;
  }

  else
  {
    v24 = 2;
  }

  if (v20)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  if (v20)
  {
    v23 = v24;
  }

  v66 = v23;
  v67 = v25;
  if (v17)
  {
    v26 = 1;
  }

  else
  {
    v26 = 2;
  }

  if (v20)
  {
    v27 = v16 != 0;
  }

  else
  {
    v27 = v17 != 0;
  }

  if (v20)
  {
    v28 = v22;
  }

  else
  {
    v28 = v26;
  }

  if (v20)
  {
    v29 = v26;
  }

  else
  {
    v29 = v22;
  }

  v68 = v29;

  v30 = [v7 objectForKeyedSubscript:@"lc"];
  v31 = [v30 BOOLValue];

  v32 = v28;
  if (v31)
  {
    v33 = 2;
  }

  else
  {
    v33 = 1;
  }

  if (v27)
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  v65 = v7;
  v56 = v28;
  if (!v15)
  {
    goto LABEL_54;
  }

  v35 = v17 != 0;
  if (!v20)
  {
    v35 = v16 != 0;
  }

  v36 = v28 == 2 && v68 == 2;
  v37 = v27 && v35;
  if (v36)
  {
    v37 = 1;
  }

  if (v67 == 2 && v66 == 2 && (v37 & 1) != 0)
  {
    v38 = v34;
    v39 = v58;
    v55 = 1;
    v57 = 1;
  }

  else
  {
LABEL_54:
    v38 = v34;
    v39 = v58;
    v40 = 1;
    if (v32 == 2)
    {
      v41 = 1;
    }

    else
    {
      v41 = 2;
    }

    v57 = v41;
    if (v68 != 2)
    {
      v40 = 2;
    }

    v55 = v40;
  }

  v42 = objc_alloc_init(NSMutableDictionary);
  v43 = @"right";
  if (v69)
  {
    v43 = @"left";
  }

  v44 = v43;
  v45 = objc_alloc_init(FMDBluetoothDiscoveryAdvertisementConfiguration);
  v59 = v44;
  [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v45 setName:v44];
  [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v45 setRssi:v60];
  [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v45 setAddress:v61];
  [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v45 setColorCode:v8];
  [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v45 setAudioStateStatus:v62];
  [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v45 setLidClosedStatus:v38];
  v46 = [[FMDBLEBeaconIdentifier alloc] initWithBLEDevice:v39 other:0];
  [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v45 setBeaconIdentifier:v46];

  [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v45 setPrimary:v20 != 0];
  v47 = v39;
  [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v45 setUtpConnected:v15 != 0];
  [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v45 setInCaseStatus:v56];
  [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v45 setInEarStatus:v67];
  [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v45 setOnHeadStatus:500];
  [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v45 setAvailability:v57];
  v48 = [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v45 name];
  [v42 setObject:v45 forKeyedSubscript:v48];

  if (v15)
  {
    v49 = @"left";
    if (v69)
    {
      v49 = @"right";
    }

    v50 = v49;
    v51 = objc_alloc_init(FMDBluetoothDiscoveryAdvertisementConfiguration);
    [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v51 setName:v50];
    [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v51 setRssi:v60];
    [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v51 setAddress:v61];
    [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v51 setColorCode:v70];

    v47 = v39;
    [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v51 setAudioStateStatus:v62];
    [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v51 setLidClosedStatus:v38];
    v52 = [[FMDBLEBeaconIdentifier alloc] initWithBLEDevice:v39 other:1];
    [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v51 setBeaconIdentifier:v52];

    [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v51 setPrimary:v20 == 0];
    [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v51 setUtpConnected:1];
    [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v51 setInCaseStatus:v68];
    [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v51 setInEarStatus:v66];
    [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v51 setOnHeadStatus:500];
    [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v51 setAvailability:v55];
    v53 = [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v51 name];
    [v42 setObject:v51 forKeyedSubscript:v53];
  }

  return v42;
}

+ (id)stereoPairConfigurationDictWithBleDevice:(id)a3
{
  v3 = a3;
  v66 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 rssi]);
  v4 = [v3 bluetoothAddress];
  v65 = [v4 fm_MACAddressString];

  v5 = [v3 advertisementFields];
  v6 = [v5 objectForKeyedSubscript:@"cc"];
  v7 = [v5 objectForKeyedSubscript:@"cc"];
  v8 = [v5 objectForKeyedSubscript:@"ccR"];
  v9 = [v5 objectForKeyedSubscript:@"ccC"];
  v10 = [v5 objectForKeyedSubscript:@"hbT"];
  v11 = objc_opt_new();
  v64 = v7;
  v12 = [v7 stringValue];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &stru_1002DCE08;
  }

  [v11 setColorCodeLeft:v14];

  v63 = v8;
  v15 = [v8 stringValue];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = &stru_1002DCE08;
  }

  [v11 setColorCodeRight:v17];

  v62 = v9;
  v18 = [v9 stringValue];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = &stru_1002DCE08;
  }

  [v11 setColorCodeCase:v20];

  v61 = v10;
  v21 = [v10 stringValue];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = &stru_1002DCE08;
  }

  [v11 setHeadbandType:v23];

  v24 = [v5 objectForKeyedSubscript:@"aState"];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = &off_1002E7BD0;
  }

  v27 = v26;

  if ([v27 isEqualToNumber:&off_1002E7BD0])
  {
    v28 = 2;
  }

  else
  {
    v28 = [v27 isEqualToNumber:&off_1002E7BE8];
  }

  v54 = v28;
  v29 = [v5 objectForKeyedSubscript:@"hsStatus"];
  v59 = v29;
  if (v29)
  {
    v30 = [v29 unsignedIntValue];
    v31 = (dword_100312D84 & v30) != 0;
    v32 = 1;
    if ((dword_100312D84 & v30) != 0)
    {
      v32 = 2;
    }

    v56 = v32;
    v33 = (dword_100312D88 & v30) != 0;
    v34 = (dword_100312D9C & v30) != 0;
  }

  else
  {
    v34 = 0;
    v33 = 0;
    v31 = 0;
    v56 = 0;
  }

  v35 = sub_100002880();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    *v68 = v31;
    *&v68[4] = 1024;
    *&v68[6] = v33;
    v69 = 0x400000000000400;
    *v70 = v34;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "StereoPair MainHSSTATUS Case %i Ear %i Neck %i TableTop %i", buf, 0x1Au);
  }

  v55 = v31;
  v57 = v34;
  v58 = v33;
  v60 = v27;

  v36 = sub_100002880();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = [v6 stringValue];
    v38 = v37;
    v39 = v6;
    if (v37)
    {
      v40 = v37;
    }

    else
    {
      v40 = &stru_1002DCE08;
    }

    v41 = [v11 colorCodeLeft];
    v42 = [v11 colorCodeRight];
    [v11 colorCodeCase];
    v43 = v53 = v3;
    v44 = [v11 headbandType];
    *buf = 138413314;
    *v68 = v40;
    v6 = v39;
    *&v68[8] = 2112;
    v69 = v41;
    *v70 = 2112;
    *&v70[2] = v42;
    v71 = 2112;
    v72 = v43;
    v73 = 2112;
    v74 = v44;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "StereoPair StyleDescriptor ColorCode %@ ColorLeft %@ ColorRight %@ ColorCase %@ HeadbandType %@", buf, 0x34u);

    v3 = v53;
  }

  v45 = objc_alloc_init(NSMutableDictionary);
  v46 = objc_alloc_init(FMDBluetoothDiscoveryAdvertisementConfiguration);
  [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v46 setName:@"monaural"];
  [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v46 setRssi:v66];
  [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v46 setAddress:v65];
  [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v46 setColorCode:v6];
  [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v46 setAudioStateStatus:v54];
  [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v46 setLidClosedStatus:0];
  v47 = [[FMDBLEBeaconIdentifier alloc] initWithBLEDevice:v3 other:0];
  [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v46 setBeaconIdentifier:v47];

  [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v46 setPrimary:1];
  [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v46 setUtpConnected:0];
  if (v55)
  {
    v48 = 1;
  }

  else
  {
    v48 = 2;
  }

  [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v46 setInCaseStatus:v48];
  [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v46 setInEarStatus:500];
  [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v46 setAvailability:v56];
  [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v46 setStyleDescriptor:v11];
  v49 = 2;
  if (v57)
  {
    v49 = 4;
  }

  if (v58)
  {
    v49 = 1;
  }

  if (v59)
  {
    v50 = v49;
  }

  else
  {
    v50 = 0;
  }

  [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v46 setOnHeadStatus:v50];
  v51 = [(FMDBluetoothDiscoveryAdvertisementConfiguration *)v46 name];
  [v45 setObject:v46 forKeyedSubscript:v51];

  return v45;
}

@end