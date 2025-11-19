void sub_1000DCED0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 createMigrationReporterWithPairingID:v4];
  [v6 migrationWillBeginOnCompanionForPairingID:*(a1 + 40) withDeviceHistory:v5];
}

void sub_1000DD0D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [NRCoreAnalyticsReporter reportMigrationWithDeviceHistory:v4 andError:v3];
  [*(a1 + 40) finishMigrationMetricWithDeviceHistory:v4 success:objc_msgSend(*(a1 + 48) error:{"didFail") ^ 1, *(a1 + 32)}];
}

void sub_1000DD458(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 activeDeviceID];
  (*(v2 + 16))(v2, v3);
}

void sub_1000DD61C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v5 objectForKeyedSubscript:v12];
        if ([v13 migratable] && (objc_msgSend(v13, "isAltAccount") & 1) == 0)
        {
          if (!v9)
          {
            v9 = +[NSMutableArray array];
          }

          [v9 addObject:v12];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v14 = [*(a1 + 32) queue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000DD810;
  v17[3] = &unk_100175688;
  v15 = *(a1 + 40);
  v18 = v9;
  v19 = v15;
  v16 = v9;
  dispatch_async(v14, v17);
}

void sub_1000DDBB0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v7 = [v6 isAltAccount];
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 pairingID];
      v12 = [v11 UUIDString];
      *buf = 138543618;
      v45 = v12;
      v46 = 1024;
      v47 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Checking if device with pairing ID %{public}@ (alternate account: %{BOOL}d) can be staged for transfer", buf, 0x12u);
    }
  }

  v13 = *(a1 + 56);
  if (v13 == 2)
  {
    v14 = v7;
  }

  else
  {
    v14 = 0;
  }

  if (v14 == 1)
  {
    v15 = [v6 objectForKeyedSubscript:_NRDevicePropertyMigrationIDSCloudIdentifier];
    v16 = [v15 value];

    if (v16)
    {
      v17 = [v5 objectForKeyedSubscript:v16];
    }

    else
    {
      v17 = 0;
    }

    v23 = *(a1 + 40);
    v24 = *(v23 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000DDFF4;
    block[3] = &unk_100176730;
    block[4] = v23;
    v41 = v6;
    v42 = v17;
    v43 = *(a1 + 48);
    v25 = v17;
    dispatch_async(v24, block);

    goto LABEL_26;
  }

  if (v13 == 1)
  {
    v18 = [v6 objectForKeyedSubscript:NRDevicePropertySerialNumber];
    v16 = [v18 value];

    v19 = [v5 objectForKeyedSubscript:v16];
    v20 = [v6 objectForKeyedSubscript:_NRDevicePropertyMigrationIDSCloudIdentifier];
    v21 = [v20 value];

    if (v21)
    {
      v22 = [v5 objectForKeyedSubscript:v21];
    }

    else
    {
      v22 = 0;
    }

    if ([v6 isAltAccount])
    {
      v26 = [v6 objectForKeyedSubscript:_NRDevicePropertyAltAccountIdentifier];
      v27 = [v26 value];

      if (v27)
      {
        v28 = [v5 objectForKeyedSubscript:v27];
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }

    v29 = *(a1 + 40);
    v30 = *(v29 + 8);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000DE004;
    v34[3] = &unk_1001784A8;
    v34[4] = v29;
    v35 = v6;
    v36 = v22;
    v37 = v28;
    v38 = v19;
    v39 = *(a1 + 48);
    v31 = v19;
    v32 = v28;
    v33 = v22;
    dispatch_async(v30, v34);

    goto LABEL_26;
  }

  if (*(a1 + 48))
  {
    v16 = [NSError errorWithDomain:@"com.apple.nanoregistry.pairingerror" code:45 userInfo:0];
    (*(*(a1 + 48) + 16))();
LABEL_26:
  }
}

uint64_t sub_1000DE018(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sentBlock called", v6, 2u);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_1000DE228(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NRPBWatchTransferStagingRequest alloc] initWithData:v3];

  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  else
  {
    v5 = nr_daemon_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100104E3C(v7);
      }
    }
  }
}

void sub_1000DE454(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 dictionaryRepresentation];
  [v2 addObject:v3];
}

uint64_t sub_1000DE4AC(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v115 = a3;
  v5 = objc_alloc_init(NSMutableSet);
  v141 = v4;
  [v4 allPairingIDs];
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  obj = v151 = 0u;
  v6 = [obj countByEnumeratingWithState:&v148 objects:v157 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v149;
    v9 = NRDevicePropertyAdvertisedName;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v149 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [v4 objectForKeyedSubscript:*(*(&v148 + 1) + 8 * i)];
        v12 = [v11 objectForKeyedSubscript:v9];
        v13 = [v12 value];

        if (v13)
        {
          [v5 addObject:v13];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v148 objects:v157 count:16];
    }

    while (v7);
  }

  v133 = objc_alloc_init(NSMutableDictionary);
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v14 = *(a1 + 32);
  v15 = [v14 countByEnumeratingWithState:&v144 objects:v156 count:16];
  if (v15)
  {
    v16 = v15;
    v128 = NRDevicePropertyAdvertisedName;
    v129 = NRDevicePropertyPairingID;
    v17 = *v145;
    v127 = NRDevicePropertyIsActive;
    v126 = NRDevicePropertyIsArchived;
    v125 = NRDevicePropertyIsStagedForTransfer;
    v124 = NRDevicePropertyTransferType;
    v123 = _NRDevicePropertyBluetoothIdentifier;
    v122 = _NRDevicePropertyNetworkRelayIdentifier;
    v121 = NRDevicePropertyLastInactiveDate;
    v120 = _NRDevicePropertyPairingStatusBluetoothPaired;
    v114 = _NRDevicePropertyMigrationIDSCloudIdentifier;
    v113 = NRDevicePropertyIsAltAccount;
    v112 = _NRDevicePropertyAltAccountIdentifier;
    v119 = NRDevicePropertyWatchBuddyStage;
    v118 = _NRDevicePropertyCapabilities;
    v116 = NRDevicePropertyLocalPairingDataStorePath;
    v117 = NRDevicePropertyName;
    v130 = *v145;
    v131 = v14;
    do
    {
      v18 = 0;
      v134 = v16;
      do
      {
        if (*v145 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v144 + 1) + 8 * v18);
        v20 = sub_100102604(v19);
        v21 = [v5 containsObject:v20];

        if (!v21)
        {
          v137 = sub_1001025DC(v19);
          v24 = +[NSUUID UUID];
          v26 = objc_opt_new();
          v27 = [[NRMutableDeviceProperty alloc] initWithValue:v24];
          [v26 setObject:v27 forKeyedSubscript:v129];

          v28 = [NRMutableDeviceProperty alloc];
          v29 = sub_100102604(v19);
          v30 = [v28 initWithValue:v29];
          [v26 setObject:v30 forKeyedSubscript:v128];

          v31 = nr_daemon_log();
          LODWORD(v29) = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);

          if (v29)
          {
            v32 = nr_daemon_log();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v33 = sub_100102604(v19);
              v34 = [v24 UUIDString];
              *buf = 138412546;
              v153 = v33;
              v154 = 2112;
              v155 = v34;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Generated new pairing ID for staged Watch %@ as %@", buf, 0x16u);
            }
          }

          v35 = [NRMutableDeviceProperty alloc];
          v36 = [NSNumber numberWithInt:0];
          v37 = [v35 initWithValue:v36];
          [v26 setObject:v37 forKeyedSubscript:v127];

          v38 = [NRMutableDeviceProperty alloc];
          v39 = [NSNumber numberWithInt:1];
          v40 = [v38 initWithValue:v39];
          [v26 setObject:v40 forKeyedSubscript:v126];

          v41 = [NRMutableDeviceProperty alloc];
          v42 = [NSNumber numberWithInt:1];
          v43 = [v41 initWithValue:v42];
          [v26 setObject:v43 forKeyedSubscript:v125];

          v44 = [NRMutableDeviceProperty alloc];
          v45 = [NSNumber numberWithInt:sub_1001025DC(v19)];
          v46 = [v44 initWithValue:v45];
          [v26 setObject:v46 forKeyedSubscript:v124];

          v47 = [NRMutableDeviceProperty alloc];
          v48 = +[NSUUID UUID];
          v49 = [v47 initWithValue:v48];
          [v26 setObject:v49 forKeyedSubscript:v123];

          v50 = [NRMutableDeviceProperty alloc];
          v51 = [NSUUID alloc];
          v52 = sub_100102618(v19);
          v53 = [v51 initWithUUIDString:v52];
          v54 = [v50 initWithValue:v53];
          [v26 setObject:v54 forKeyedSubscript:v122];

          v55 = [NRMutableDeviceProperty alloc];
          v56 = +[NSDate now];
          v57 = [v55 initWithValue:v56];
          [v26 setObject:v57 forKeyedSubscript:v121];

          v58 = [NRMutableDeviceProperty alloc];
          v59 = [NSNumber numberWithInt:1];
          v60 = [v58 initWithValue:v59];
          [v26 setObject:v60 forKeyedSubscript:v120];

          if (sub_10010250C(v19))
          {
            v61 = sub_100102654(v19);
            goto LABEL_33;
          }

          v62 = nr_daemon_log();
          v63 = os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);

          if (v63)
          {
            v64 = nr_daemon_log();
            v65 = v137;
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Staging request does not have BuddyStage set, assuming all completed.", buf, 2u);
            }

            v61 = 15;
          }

          else
          {
            v61 = 15;
LABEL_33:
            v65 = v137;
          }

          if (v65 != 2)
          {
            if (v65 == 1)
            {
              v66 = nr_daemon_log();
              v67 = os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT);

              if (v67)
              {
                v68 = nr_daemon_log();
                if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Setting properties for a staged device:- regular transfer", buf, 2u);
                }
              }

              v69 = sub_10010262C(v19);
              v70 = [v115 storeSecureProperty:v69];
              v71 = [[NRMutableDeviceProperty alloc] initWithValue:v70];
              [v26 setObject:v71 forKeyedSubscript:v114];

              if (sub_10010254C(v19) && sub_100102668(v19))
              {
                v138 = v70;
                v72 = nr_daemon_log();
                v73 = os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT);

                if (v73)
                {
                  v74 = nr_daemon_log();
                  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Adding properties for a staged device:- regular transfer of a family Watch", buf, 2u);
                  }
                }

                v75 = [NRMutableDeviceProperty alloc];
                v76 = [NSNumber numberWithInt:1];
                v77 = [v75 initWithValue:v76];
                [v26 setObject:v77 forKeyedSubscript:v113];

                v70 = v138;
                if (sub_1001024C8(v19))
                {
                  v135 = sub_100102640(v19);
                  v78 = [v115 storeSecureProperty:v135];
                  v79 = [[NRMutableDeviceProperty alloc] initWithValue:v78];
                  [v26 setObject:v79 forKeyedSubscript:v112];

                  v70 = v138;
                }
              }

              goto LABEL_59;
            }

            v87 = nr_daemon_log();
            v88 = os_log_type_enabled(v87, OS_LOG_TYPE_ERROR);

            if (v88)
            {
              v69 = nr_daemon_log();
              if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                LODWORD(v153) = v137;
                _os_log_error_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "Unable to set properties for unrecognized transfer type: %u", buf, 8u);
              }

LABEL_59:
            }

LABEL_60:
            v89 = [NRMutableDeviceProperty alloc];
            v90 = [NSNumber numberWithUnsignedInt:v61];
            v91 = [v89 initWithValue:v90];
            [v26 setObject:v91 forKeyedSubscript:v119];

            v92 = [[NSUUID alloc] initWithUUIDString:@"6B4C8BB6-D411-406E-BD9B-9CA0F2296C96"];
            v136 = [[NSUUID alloc] initWithUUIDString:@"8240CA17-6F5D-4C8F-85C4-F4A705A0C20F"];
            v139 = v92;
            v93 = [[NSSet alloc] initWithObjects:{v92, v136, 0}];
            v94 = [[NRMutableDeviceProperty alloc] initWithValue:v93];
            [v26 setObject:v94 forKeyedSubscript:v118];

            v95 = sub_100104AB4(*(a1 + 40), v24);
            if (v95)
            {
              v96 = [[NRMutableDeviceProperty alloc] initWithValue:v95];
              [v26 setObject:v96 forKeyedSubscript:v116];
            }

            v97 = [NRMutableDeviceProperty alloc];
            v98 = sub_100102604(v19);
            v99 = [v97 initWithValue:v98];
            [v26 setObject:v99 forKeyedSubscript:v117];

            v100 = objc_opt_new();
            [v100 setObject:v26 forKeyedSubscript:v24];
            v101 = objc_opt_new();
            v102 = [NRMutableDevice diffFrom:v101 to:v26];
            v103 = [[NRDeviceDiffType alloc] initWithDiff:v102 andChangeType:0];
            [v133 setObject:v103 forKeyedSubscript:v24];

            v17 = v130;
            v14 = v131;
            v16 = v134;
            goto LABEL_19;
          }

          v80 = sub_1001024C8(v19);
          v81 = nr_daemon_log();
          v82 = v81;
          if (v80)
          {
            v83 = os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT);

            if (v83)
            {
              v84 = nr_daemon_log();
              if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "Setting properties for a staged device:- graduation transfer", buf, 2u);
              }
            }

            v69 = sub_100102640(v19);
            v85 = [v115 storeSecureProperty:v69];
            v86 = [[NRMutableDeviceProperty alloc] initWithValue:v85];
            [v26 setObject:v86 forKeyedSubscript:v114];
          }

          else
          {
            v104 = os_log_type_enabled(v81, OS_LOG_TYPE_ERROR);

            if (!v104)
            {
              v61 = 15;
              goto LABEL_60;
            }

            v69 = nr_daemon_log();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
            {
              sub_100104E80(&v142, v143, v69);
            }
          }

          v61 = 15;
          goto LABEL_59;
        }

        v22 = nr_daemon_log();
        v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

        if (!v23)
        {
          goto LABEL_20;
        }

        v24 = nr_daemon_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = sub_100102604(v19);
          *buf = 138412290;
          v153 = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Staged Watch %@ was already in the registry, ignored", buf, 0xCu);
        }

LABEL_19:

LABEL_20:
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v105 = [v14 countByEnumeratingWithState:&v144 objects:v156 count:16];
      v16 = v105;
    }

    while (v105);
  }

  v106 = [[NRDeviceCollectionDiff alloc] initWithDeviceCollectionDiffDeviceDiffs:v133];
  v107 = nr_daemon_log();
  v108 = os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT);

  if (v108)
  {
    v109 = nr_daemon_log();
    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v153 = v106;
      _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "RestoringDiff = %@", buf, 0xCu);
    }
  }

  v110 = [v141 applyDiff:v106];

  return 0;
}

void sub_1000DF350(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v7 = [v6 objectForKeyedSubscript:NRDevicePropertySerialNumber];
  v8 = [v7 value];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 securePropertyForID:v8], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v11 = nr_daemon_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v13 = nr_daemon_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v6 pairingID];
        v15 = [v14 UUIDString];
        v20 = 138543619;
        v21 = v15;
        v22 = 2113;
        v23 = v10;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Unstaging device with pairing ID %{public}@ (serial %{private}@)", &v20, 0x16u);
      }
    }

    [EPKeychain removeWatchTransferDataForWatchWithIdentifier:v10];
  }

  else
  {
    v16 = nr_daemon_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

    if (v17)
    {
      v18 = nr_daemon_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100104EC0(v6, v18);
      }
    }

    v10 = 0;
  }

  v19 = *(a1 + 40);
  if (v19)
  {
    (*(v19 + 16))(v19, 0);
  }
}

BOOL sub_1000DF5B8(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

void sub_1000DF5E8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_DEFAULT, a4, a5, 0xCu);
}

BOOL sub_1000DF604(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t sub_1000DF61C(uint64_t a1)
{
  AssertionID = 0;
  v14[0] = @"AssertName";
  v2 = [NSString stringWithUTF8String:a1];
  v15[0] = v2;
  v15[1] = @"com.apple.NanoRegistry.timer";
  v14[1] = @"PlugInBundleID";
  v14[2] = @"AssertType";
  v14[3] = @"AssertLevel";
  v15[2] = @"PreventUserIdleSystemSleep";
  v15[3] = &off_1001877F8;
  v3 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];

  v4 = IOPMAssertionCreateWithProperties(v3, &AssertionID);
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *v13 = a1;
        *&v13[8] = 1024;
        *&v13[10] = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to take power assertion for (%s) with error: (%d)", buf, 0x12u);
      }
    }

    AssertionID = 0;
  }

  else if (v6)
  {
    v8 = nr_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *v13 = AssertionID;
      *&v13[4] = 2080;
      *&v13[6] = a1;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Taking power assertion (%u) for (%s)", buf, 0x12u);
    }
  }

  v9 = AssertionID;

  return v9;
}

void sub_1000DF814(IOPMAssertionID a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = a1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Releasing power assertion: (%u)", v5, 8u);
    }
  }

  if (a1)
  {
    IOPMAssertionRelease(a1);
  }
}

void sub_1000DFA88(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NRSystemVersionRequest];
  v2 = qword_1001B3B38;
  qword_1001B3B38 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000DFCF8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

void sub_1000E009C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

void sub_1000E00F0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

uint64_t sub_1000E01E4(__CFReadStream *a1, __CFWriteStream *a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x4000uLL, 0x9FB12F54uLL);
  v7 = ccaes_ctr_crypt_mode();
  v8 = (*v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin();
  v11 = &v19 - v10;
  (*(v9 + 24))(v9, &v19 - v10, 32, a3, &unk_1001268D8);
  v12 = CFReadStreamRead(a1, v6, 0x4000);
  if (v12 < 1)
  {
LABEL_8:
    v17 = 0;
    if (!v6)
    {
      return v17;
    }
  }

  else
  {
    v13 = v12;
LABEL_3:
    (*(v7 + 40))(v11, v13, v6, v6);
    v14 = v6;
    while (1)
    {
      v15 = CFWriteStreamWrite(a2, v14, v13);
      if (!v15)
      {
        break;
      }

      v14 += v15;
      v16 = v13 <= v15;
      v13 -= v15;
      if (v16)
      {
        v13 = CFReadStreamRead(a1, v6, 0x4000);
        if (v13 > 0)
        {
          goto LABEL_3;
        }

        goto LABEL_8;
      }
    }

    v17 = 4294967260;
    if (!v6)
    {
      return v17;
    }
  }

  free(v6);
  return v17;
}

id sub_1000E0708(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 72))
  {
    v3 = [*(v1 + 56) newUnlockAssertionWithDelegate:?];
    v4 = *(a1 + 32);
    v5 = *(v4 + 72);
    *(v4 + 72) = v3;

    v1 = *(a1 + 32);
  }

  return [v1 update];
}

id sub_1000E27AC(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "EPUnlockAssertionManager: MobileKeyBagLockStatusNotification received", v6, 2u);
    }
  }

  return [*(a1 + 32) update];
}

uint64_t sub_1000E48E4(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v34 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v34 & 0x7F) << v25;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v11 = v26++ >= 9;
            if (v11)
            {
              v31 = 0;
              goto LABEL_50;
            }
          }

          if ([a2 hasError])
          {
            v31 = 0;
          }

          else
          {
            v31 = v27;
          }

LABEL_50:
          *(a1 + 16) = v31;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_32:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_51;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v35 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v35 & 0x7F) << v16;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              LOBYTE(v22) = 0;
              goto LABEL_46;
            }
          }

          v22 = (v18 != 0) & ~[a2 hasError];
LABEL_46:
          *(a1 + 32) = v22;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadData();
          v15 = 24;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_32;
          }

          v14 = PBReaderReadData();
          v15 = 8;
        }

        v24 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_51:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_1000E5280()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1001B3B48;
  v7 = qword_1001B3B48;
  if (!qword_1001B3B48)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000E57DC;
    v3[3] = &unk_100175880;
    v3[4] = &v4;
    sub_1000E57DC(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1000E5348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000E5360(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = nr_daemon_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100105ADC(a1, v4);
      }
    }

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(v8 + 8);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000E54CC;
    v13[3] = &unk_1001799A8;
    v13[4] = v8;
    v14 = *(a1 + 48);
    [v10 createBackupForPairingID:v9 completionHandler:v13];
    v11 = v14;
  }

  else
  {
    v11 = [*(a1 + 48) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E5630;
    block[3] = &unk_100175660;
    block[4] = *(a1 + 32);
    dispatch_async(v11, block);
  }
}

void sub_1000E54CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = nr_daemon_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v9 = nr_daemon_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100105B90(a1, v6);
      }
    }
  }

  v10 = [*(a1 + 40) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E55DC;
  block[3] = &unk_100175660;
  block[4] = *(a1 + 32);
  dispatch_async(v10, block);
}

void sub_1000E55DC(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

void sub_1000E5630(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

void sub_1000E5710(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

Class sub_1000E57DC(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1001B3B50)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000E5920;
    v4[4] = &unk_1001756A8;
    v4[5] = v4;
    v5 = off_1001799F0;
    v6 = 0;
    qword_1001B3B50 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1001B3B50)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("NBManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100105C44();
  }

  qword_1001B3B48 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000E5920(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1001B3B50 = result;
  return result;
}

void sub_1000E5BC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cloud migration sent", v8, 2u);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

void sub_1000E5C7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cloud migration response %@", buf, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v3)
  {
    if (v7)
    {
      v8 = [NRPBMigrationResponse alloc];
      v9 = [v3 protobuf];
      v10 = [v9 data];
      v11 = [(NRPBMigrationResponse *)v8 initWithData:v10];

      v12 = *(a1 + 32);
      v13 = sub_100106084(v11);
      (*(v12 + 16))(v12, 0, v13);
LABEL_10:
    }
  }

  else if (v7)
  {
    v15 = NSLocalizedDescriptionKey;
    v16 = @"IDS response failure";
    v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v14 = [NSError errorWithDomain:@"com.apple.nanoregistry.NRRemoteObjectCloud" code:1 userInfo:v11];
    (*(v7 + 16))(v7, v14, 0);

    goto LABEL_10;
  }
}

void sub_1000E5F8C(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = sub_100100A9C(a1[6]);
  [v1 remoteObject:v2 receivedMigratedAwayWithAdvertisedName:v3];
}

void sub_1000E6138(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = sub_100102E28(*(a1 + 48));
  v4 = [NRTermsEvent eventWithProtobuf:v6];
  v5 = [*(a1 + 56) idsBTUUID];
  [v2 remoteObject:v3 receivedAddTermsEvent:v4 fromIDSBTUUID:v5 responseBlock:&stru_100179A10];
}

void sub_1000E61E0(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = nr_daemon_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = nr_daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 138412290;
        v7 = v2;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Got Error trying to add event: %@", &v6, 0xCu);
      }
    }
  }
}

void sub_1000E6408(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[NRPairingCompatibilityVersionInfo systemVersions];
  [v2 sendSystemVersionsResponseWithSystemVersions:v3 forRequest:*(a1 + 40)];
}

void sub_1000E67CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cloud terms sent", v8, 2u);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

void sub_1000E6A50(id a1, NSError *a2)
{
  v2 = a2;
  v3 = nr_daemon_log();
  v4 = v3;
  if (v2)
  {
    v5 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v5)
    {
      v6 = nr_daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100105C6C(v2, v6);
      }

LABEL_8:
    }
  }

  else
  {
    v7 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v6 = nr_daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cloud SystemVersion message sent", v8, 2u);
      }

      goto LABEL_8;
    }
  }
}

void sub_1000E6C64(id a1, NSError *a2)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cloud SystemVersion response sent", v5, 2u);
    }
  }
}

void sub_1000E6E30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cloud SystemVersion Request sent", v8, 2u);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

void sub_1000E6EE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    if (v4)
    {
      v5 = [NRPBSystemVersionResponse alloc];
      v6 = [v3 protobuf];
      v7 = [v6 data];
      v8 = [(NRPBSystemVersionResponse *)v5 initWithData:v7];

      (*(*(a1 + 32) + 16))();
    }
  }

  else if (v4)
  {
    v11 = NSLocalizedDescriptionKey;
    v12 = @"IDS response failure";
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v10 = [NSError errorWithDomain:@"com.apple.nanoregistry.NRRemoteObjectCloud" code:1 userInfo:v9];
    (*(v4 + 16))(v4, v10, 0);
  }
}

void sub_1000E7278(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v13 = 60;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionTearDownTinkerHealthSyncZones: Timeout of %d triggered", buf, 8u);
    }
  }

  dispatch_source_cancel(*(*(a1 + 32) + 8));
  v5 = [*(a1 + 40) errors];
  v10 = NSLocalizedDescriptionKey;
  v11 = @"Tearning down HealthKit sync zones timed out";
  v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7 = [NSError errorWithDomain:@"com.apple.nanoregistry.saga.EPSagaTransactionUnpairHealthKitSyncError" code:0 userInfo:v6];
  [v5 addObject:v7];

  v8 = *(a1 + 32);
  if ((v8[16] & 1) == 0)
  {
    v9 = [v8 delegate];
    [v9 transactionDidComplete:*(a1 + 32)];

    *(*(a1 + 32) + 16) = 1;
  }
}

void sub_1000E7414(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionTearDownTinkerHealthSyncZones: tearDownHealthSharing finished with error: %@", &v12, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  if (*(v8 + 8))
  {
    dispatch_source_cancel(*(v8 + 8));
    v9 = *(a1 + 32);
    v10 = *(v9 + 8);
    *(v9 + 8) = 0;

    v8 = *(a1 + 32);
  }

  if ((*(v8 + 16) & 1) == 0)
  {
    v11 = [v8 delegate];
    [v11 transactionDidComplete:*(a1 + 32)];

    *(*(a1 + 32) + 16) = 1;
  }
}

void sub_1000E79A0(id a1, BOOL a2)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[NRPairingDaemon(PairingSessionID) sendPairingIdToActiveDevice:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Sent pairing session id to active device.", &v5, 0xCu);
    }
  }
}

void sub_1000E7B9C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

void sub_1000E7C7C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

void sub_1000E7DC8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

void sub_1000E7FD0(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E8084;
  block[3] = &unk_100177C58;
  v10 = a2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  dispatch_async(v4, block);
}

void sub_1000E8084(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    v2 = [*(a1 + 32) errors];
    v6 = NSLocalizedDescriptionKey;
    v7 = @"Message send failed";
    v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    v4 = [NSError errorWithDomain:@"com.apple.nanoregistry.saga.EPSagaTransactionNotifyCompanionOfCompletionErrorDomain" code:0 userInfo:v3];
    [v2 addObject:v4];

    [*(a1 + 32) persist];
  }

  v5 = [*(a1 + 40) delegate];
  [v5 transactionDidComplete:*(a1 + 40)];
}

void sub_1000E8220(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

id sub_1000E82B4()
{
  if (qword_1001B3B60 != -1)
  {
    sub_100105CE4();
  }

  v1 = qword_1001B3B58;

  return v1;
}

void sub_1000E82F8(id a1)
{
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v1 = [NSArray arrayWithObjects:&v4 count:7];
  v2 = [NSSet setWithArray:v1, v4, v5, v6, v7, v8, v9];
  v3 = qword_1001B3B58;
  qword_1001B3B58 = v2;
}

void sub_1000E9264(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) UUIDString];
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling IDSLocalPairingForgetPairedDevice %@", buf, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v6 = [*(a1 + 40) queue];
  IDSLocalPairingForgetPairedDevice();
}

void sub_1000E93DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nr_daemon_log();
  v5 = v4;
  if (v3)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100105CF8(a1, v3, v7);
      }

LABEL_8:
    }
  }

  else
  {
    v8 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [*(a1 + 32) UUIDString];
        *buf = 138412290;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "IDSLocalPairingForgetPairedDevice %@ completed", buf, 0xCu);
      }

      goto LABEL_8;
    }
  }

  v10 = [*(a1 + 40) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E9574;
  block[3] = &unk_100175660;
  block[4] = *(a1 + 48);
  dispatch_async(v10, block);
}

void sub_1000E9574(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

void sub_1000E9A60(uint64_t a1)
{
  v2 = [*(a1 + 32) globalTimer];
  [v2 invalidate];

  v3 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"timeout:" selector:0 userInfo:0 repeats:*(a1 + 40)];
  [*(a1 + 32) setGlobalTimer:v3];
}

__CFString *sub_1000E9C28()
{
  v0 = CFPreferencesCopyAppValue(@"IDSAdvertiseMigrationName", @"com.apple.identityservicesd");
  if (!v0)
  {
    v0 = @"migration";
  }

  return v0;
}

id sub_1000E9F54(uint64_t a1)
{
  v2 = [*(a1 + 32) globalTimer];
  [v2 invalidate];

  [*(a1 + 32) setGlobalTimer:0];
  v3 = [*(a1 + 32) pairingTimer];
  [v3 invalidate];

  v4 = *(a1 + 32);

  return [v4 setPairingTimer:0];
}

void sub_1000EA0B0(uint64_t a1)
{
  *(*(a1 + 32) + 15) = 0;
  *(*(a1 + 32) + 14) = 0;
  *(*(a1 + 32) + 13) = 1;
  v2 = [*(*(a1 + 32) + 40) serviceFromClass:objc_opt_class()];
  [v2 addConnectivityObserver:*(a1 + 32)];
  v4 = [*(*(a1 + 32) + 40) serviceFromClass:objc_opt_class()];

  [v4 addConnectivityObserver:*(a1 + 32)];
  [*(a1 + 32) checkIfIDSPaired];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))();
  }
}

id sub_1000EA4A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[8])
  {
    return [v1 _networkRelayMigrationPairing];
  }

  else
  {
    return [v1 _directBluetoothMigrationPairing];
  }
}

uint64_t sub_1000EAD24(uint64_t result)
{
  if (!*(*(result + 32) + 128))
  {
    v2 = result;
    v3 = [NSTimer scheduledTimerWithTimeInterval:"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:" target:31.0 selector:? userInfo:? repeats:?];
    v4 = *(v2 + 32);
    v5 = *(v4 + 128);
    *(v4 + 128) = v3;

    return _objc_release_x1(v3, v5);
  }

  return result;
}

void sub_1000EB210(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) routingSlipEntry];
    v5 = [v4 errors];
    [v5 addObject:v3];

    v6 = [*(a1 + 32) routingSlipEntry];
    [v6 persist];

    v7 = nr_daemon_log();
    LODWORD(v5) = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v5)
    {
      v8 = nr_daemon_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100105DAC();
      }
    }

    v9 = [*(a1 + 32) routingSlipEntry];
    v10 = [v9 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000EB3B8;
    block[3] = &unk_100175660;
    block[4] = *(a1 + 32);
    dispatch_async(v10, block);
  }

  else
  {
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 32);
    v14 = *(v13 + 10);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000EB40C;
    v15[3] = &unk_100175A10;
    v15[4] = v13;
    [v11 migrationPairWithCandidateWithBluetoothIdentifier:v12 isAltAccountPairing:v14 completion:v15];
  }
}

void sub_1000EB3B8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

void sub_1000EB40C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 9);
    v6 = 136315650;
    v7 = "[EPSagaTransactionPairing _requestMigrationAndPairWithCandidateWithNetworkRelayIdentifier:]_block_invoke_2";
    v8 = 1024;
    v9 = v5;
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s iAmACompanionDevice %{BOOL}d, %{public}@", &v6, 0x1Cu);
  }
}

id sub_1000EBB64(uint64_t a1)
{
  v2 = [*(a1 + 32) routingSlipEntry];
  v3 = [v2 operands];
  [v3 removeObjectForKey:@"newlyPairedNetworkRelayID"];

  v4 = *(a1 + 32);

  return [v4 setState:0];
}

void sub_1000EC2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000EC2F8(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingTimer];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

void sub_1000EC7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000EC81C(uint64_t a1)
{
  v2 = [*(a1 + 32) globalTimer];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

void sub_1000ECF74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1000ECF98(uint64_t a1)
{
  v2 = [*(a1 + 32) globalTimer];
  [v2 invalidate];

  v3 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"timeout:" selector:0 userInfo:0 repeats:60.0];
  [*(a1 + 32) setGlobalTimer:v3];
}

void sub_1000ED02C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) state] == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (v3)
    {
      v5 = sub_1000034AC();
      v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

      if (v6)
      {
        v7 = sub_1000034AC();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_100105F24();
        }
      }

      [WeakRetained failWithError:v3];
    }

    else
    {
      v8 = sub_100105958(*(a1 + 48));
      [*(a1 + 40) setOobKey:v8];

      v9 = [*(a1 + 40) device];
      [v9 setEnableOOBPairing:1];

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000ED1CC;
      block[3] = &unk_100175660;
      v10 = WeakRetained;
      v14 = v10;
      dispatch_sync(&_dispatch_main_q, block);
      [v10 update];
      v11 = [*(a1 + 40) device];
      v12 = [v11 newPairerWithDelegate:*(a1 + 32)];

      [*(a1 + 40) setPairer:v12];
    }
  }
}

void sub_1000ED1CC(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingTimer];
  [v2 invalidate];

  v3 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"migrationBTPairingTimeout:" selector:0 userInfo:0 repeats:31.0];
  [*(a1 + 32) setPairingTimer:v3];
}

void sub_1000ED9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000ED9F8(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingTimer];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

void sub_1000EE7D4(uint64_t a1)
{
  [*(a1 + 32) _clearOOBKey];
  if (*(a1 + 40))
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 24);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000EE8A4;
    v7[3] = &unk_100175660;
    v7[4] = v2;
    v4 = [TimerFactory timerWithIdentifier:@"com.apple.nanoregistry.saga.service.oobstashexpiration" delay:1 gracePeriod:v3 waking:v7 handlerQueue:300.0 handlerBlock:0.0];
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;

    objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
  }
}

uint64_t sub_1000EEA68(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000F0060(void *a1, void *a2)
{
  v5 = a2;
  v3 = [v5 ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = a1[8];
    *(*(a1[7] + 8) + 24) = 1;
    [v5 pairingAgent:*(a1[4] + 112) peerDidRequestPairing:a1[5] type:v4 passkey:a1[6]];
  }
}

void sub_1000F00F0(uint64_t a1)
{
  v2 = sub_1000A98C0();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = sub_1000A98C0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Missed BT timer fired, resetting stashed variables", v6, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained resetStashVariables];
}

uint64_t sub_1000F03D4(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1000F0A38(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = sub_1000FFE70(*(a1 + 56));
  v6 = [*(a1 + 64) idsBTUUID];
  [v2 remoteObject:v3 receivedPropertyChanges:v4 isAllProperties:v5 fromIDSBTUUID:v6];
}

void sub_1000F0D20(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = [v3 idsBTUUID];
  [v1 remoteObject:v2 receivedPropertyRequestWithRequestIdentifier:v3 fromIDSBTUUID:v4];
}

uint64_t sub_1000F0F1C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0);
  }

  return result;
}

uint64_t sub_1000F0F3C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void sub_1000F1958(id a1)
{
  v4 = objc_alloc_init(NSDateComponents);
  [v4 setDay:1];
  [v4 setMonth:9];
  [v4 setYear:2014];
  v1 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v2 = [v1 dateFromComponents:v4];
  v3 = qword_1001B3B68;
  qword_1001B3B68 = v2;
}

void sub_1000F25C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

uint64_t sub_1000F25E0(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))(result, 0);
    }
  }

  return result;
}

uint64_t sub_1000F2600(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v15 = v3;
    v5 = [NRPBPropertyResponse alloc];
    v6 = [v15 protobuf];
    v7 = [v6 data];
    v8 = [(NRPBPropertyResponse *)v5 initWithData:v7];

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v10 = sub_100102054(v8);
    v11 = [WeakRetained _unpackProperties:v10];

    v12 = *(a1 + 32);
    if (v12)
    {
      (*(v12 + 16))(v12, v11);
    }
  }

  else
  {
    v13 = *(a1 + 32);
    if (!v13)
    {
      goto LABEL_8;
    }

    v15 = 0;
    v13 = (*(v13 + 16))(v13, 0);
  }

  v4 = v15;
LABEL_8:

  return _objc_release_x1(v13, v4);
}

uint64_t sub_1000F285C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0);
  }

  return result;
}

uint64_t sub_1000F2A4C(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_1000F2A64(uint64_t a1, void *a2)
{
  v13 = a2;
  if (v13)
  {
    v3 = [NRPBAddTermsEventResponse alloc];
    v4 = [v13 protobuf];
    v5 = [v4 data];
    v6 = [(NRPBAddTermsEventResponse *)v3 initWithData:v5];

    v7 = sub_100101E00(v6);

    if (v7)
    {
      v8 = sub_100101E00(v6);
      v9 = sub_100103CC4(v8);
      v10 = sub_100101E00(v6);
      v11 = [NSError errorWithDomain:v9 code:sub_100103CB0(v10) userInfo:0];

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      (*(*(a1 + 32) + 16))(*(a1 + 32), 0);
    }
  }

  else
  {
    v12 = *(a1 + 32);
    v6 = [NSError errorWithDomain:@"com.apple.nanoregistry.remoteobject" code:0 userInfo:0];
    (*(v12 + 16))(v12, v6);
  }
}

uint64_t sub_1000F2D54(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_1000F2D74(uint64_t a1, void *a2)
{
  v15 = a2;
  if (v15)
  {
    v3 = [NRPBCheckTermsEventResponse alloc];
    v4 = [v15 protobuf];
    v5 = [v4 data];
    v6 = [(NRPBCheckTermsEventResponse *)v3 initWithData:v5];

    v7 = sub_100101984(v6);

    if (v7)
    {
      v8 = sub_100101984(v6);
      v9 = sub_100103CC4(v8);
      v10 = sub_100101984(v6);
      v11 = [NSError errorWithDomain:v9 code:sub_100103CB0(v10) userInfo:0];

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v13 = *(a1 + 32);
      v14 = sub_100101964(v6);
      (*(v13 + 16))(v13, v14, 0);
    }
  }

  else
  {
    v12 = *(a1 + 32);
    v6 = [NSError errorWithDomain:@"com.apple.nanoregistry.remoteobject" code:0 userInfo:0];
    (*(v12 + 16))(v12, 0, v6);
  }
}

void sub_1000F3064(uint64_t a1)
{
  v2 = sub_100102E28(*(a1 + 32));
  v3 = [NRTermsEvent eventWithProtobuf:v2];

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = [*(a1 + 56) idsBTUUID];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000F315C;
  v8[3] = &unk_100177960;
  v7 = *(a1 + 56);
  v8[4] = *(a1 + 48);
  v9 = v7;
  [v4 remoteObject:v5 receivedAddTermsEvent:v3 fromIDSBTUUID:v6 responseBlock:v8];
}

void sub_1000F315C(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = objc_opt_new();
  if (v10)
  {
    v4 = objc_opt_new();
    sub_100101DE8(v3, v4);

    v5 = [v10 domain];
    v6 = sub_100101E00(v3);
    sub_100103C98(v6, v5);

    v7 = [v10 code];
    v8 = sub_100101E00(v3);
    sub_100103C70(v8, v7);
  }

  v9 = [NSString stringWithFormat:@"addTermsEvent response: (%@)", v3];
  [*(a1 + 32) sendResponse:v3 type:7 withRequest:*(a1 + 40) withTimeout:&off_1001878C8 withDescription:v9 onlyOneFor:0 priority:300 didSend:0];
}

void sub_1000F33D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = sub_1000FDF2C(*(a1 + 48));
  v5 = [NRTermsEvent eventWithProtobuf:v4];
  v6 = [*(a1 + 56) idsBTUUID];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F34D4;
  v7[3] = &unk_100178190;
  v7[4] = *(a1 + 40);
  v8 = *(a1 + 56);
  [v2 remoteObject:v3 receivedCheckTermsEvent:v5 fromIDSBTUUID:v6 responseBlock:v7];
}

void sub_1000F34D4(uint64_t a1, char a2, void *a3)
{
  v12 = a3;
  v5 = objc_opt_new();
  sub_100101924(v5, a2);
  if (v12)
  {
    v6 = objc_opt_new();
    sub_10010194C(v5, v6);

    v7 = [v12 domain];
    v8 = sub_100101984(v5);
    sub_100103C98(v8, v7);

    v9 = [v12 code];
    v10 = sub_100101984(v5);
    sub_100103C70(v10, v9);
  }

  v11 = [NSString stringWithFormat:@"checkTermsEvent response: (%@)", v5];
  [*(a1 + 32) sendResponse:v5 type:8 withRequest:*(a1 + 40) withTimeout:&off_1001878C8 withDescription:v11 onlyOneFor:0 priority:300 didSend:0];
}

uint64_t sub_1000F37C0(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v36 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v36 & 0x7F) << v5;
        if ((v36 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 != 4)
        {
          if (v13 != 3)
          {
LABEL_34:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_57;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            v37 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v37 & 0x7F) << v16;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_49;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_49:
          v32 = 24;
          goto LABEL_54;
        }

        v30 = PBReaderReadData();
        v31 = *(a1 + 16);
        *(a1 + 16) = v30;
      }

      else
      {
        if (v13 == 1)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          while (1)
          {
            v38 = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v38 & 0x7F) << v24;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_53;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v26;
          }

LABEL_53:
          v32 = 28;
LABEL_54:
          *(a1 + v32) = v22;
          goto LABEL_57;
        }

        if (v13 != 2)
        {
          goto LABEL_34;
        }

        v35 = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v33 = [a2 data];
          [v33 getBytes:&v35 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v35;
      }

LABEL_57:
      v34 = [a2 position];
    }

    while (v34 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1000F4608(uint64_t a1)
{
  if (a1)
  {
    v2 = nr_daemon_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

    if (v3)
    {
      v4 = nr_daemon_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "NRKeychainSyncStatusManager: Registering for Keychain Sync status change notification.", buf, 2u);
      }
    }

    objc_initWeak(buf, a1);
    v5 = OTTrustStatusChangeNotification;
    v6 = *(a1 + 32);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1001065B4;
    handler[3] = &unk_100179790;
    objc_copyWeak(&v8, buf);
    notify_register_dispatch(v5, (a1 + 40), v6, handler);
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

void sub_1000F4730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000F474C(uint64_t a1)
{
  *(*(a1 + 32) + 56) = 1;
  v1 = *(a1 + 32);
  v2 = v1[3];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F47E4;
  block[3] = &unk_100175660;
  v4 = v1;
  dispatch_async(v2, block);
}

void sub_1000F47E4(uint64_t a1)
{
  sub_100106144(*(a1 + 32));
  v2 = *(a1 + 32);
  v3 = v2[4];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F487C;
  block[3] = &unk_100175660;
  v5 = v2;
  dispatch_sync(v3, block);
}

void sub_1000F4A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000F4A58(uint64_t a1)
{
  if (*(*(a1 + 32) + 64))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v1 = *(*(a1 + 32) + 64);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000F4B18;
    v3[3] = &unk_100175660;
    v4 = *(a1 + 40);
    v2 = objc_retainBlock(v3);
    [v1 addObject:v2];
  }
}

uint64_t sub_1000F4B98(uint64_t result)
{
  *(*(result + 32) + 56) = 0;
  v1 = *(result + 32);
  if (*(v1 + 57) == 1)
  {
    *(v1 + 57) = 0;
    return sub_1001063DC(*(result + 32));
  }

  return result;
}

void sub_1000F4BC0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 59) != 1 || *(v2 + 58) != *(a1 + 40))
  {
    *(v2 + 59) = 1;
    v3 = *(a1 + 40);
    *(*(a1 + 32) + 58) = v3;
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F4D68;
    block[3] = &unk_100176198;
    block[4] = v4;
    v19 = v3;
    dispatch_async(v5, block);
    v2 = *(a1 + 32);
  }

  v6 = *(v2 + 64);
  v7 = *(a1 + 32);
  v8 = *(v7 + 64);
  *(v7 + 64) = 0;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        (*(*(*(&v14 + 1) + 8 * v13) + 16))(*(*(&v14 + 1) + 8 * v13));
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v11);
  }
}

void sub_1000F54F4(uint64_t a1, int a2, void *a3)
{
  v27 = a3;
  if (a2)
  {
    v5 = _NRIsAutomated() ^ 1;
  }

  else
  {
    v5 = 0;
  }

  [*(*(a1 + 32) + 8) setPostFailsafeObliteration:v5];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v7 = [WeakRetained objectForKeyedSubscript:@"extensiblePairingPairingType"];

  v8 = objc_loadWeakRetained((*(a1 + 32) + 48));
  v9 = [v8 objectForKeyedSubscript:@"extensiblePairingShouldFilePairingReport"];

  v10 = [v9 BOOLValue];
  v11 = [*(a1 + 32) unpairHelper];
  [v11 setShouldFilePairingReport:v10];

  v12 = objc_loadWeakRetained((*(a1 + 32) + 48));
  v13 = [v12 objectForKeyedSubscript:@"isAltAccountGizmo"];

  [*(*(a1 + 32) + 8) setIsTinkerPairing:{objc_msgSend(v13, "BOOLValue")}];
  if ([@"extensiblePairingTypeDiscoverAndPairWithName" isEqual:v7])
  {
    v14 = objc_loadWeakRetained((*(a1 + 32) + 80));
    v15 = [v14 serviceFromClass:objc_opt_class()];

    v16 = *(a1 + 32);
    v17 = *(v16 + 8);
    v18 = *(v16 + 32);
    v19 = [v15 key];
    [v17 discoverAndPairWithAdvertisedName:v18 andOOBKey:v19];

    v20 = objc_loadWeakRetained((*(a1 + 32) + 80));
    [v20 removeService:v15];

LABEL_8:
    goto LABEL_9;
  }

  if ([@"extensiblePairingTypeDiscoverAndPairWithDeviceID" isEqual:v7])
  {
    v21 = objc_loadWeakRetained((*(a1 + 32) + 48));
    v15 = [v21 objectForKeyedSubscript:@"extensiblePairingDeviceID"];

    [*(*(a1 + 32) + 8) discoverAndPairWithAdvertisedName:*(*(a1 + 32) + 32) andDeviceID:v15];
    goto LABEL_8;
  }

  if ([@"extensiblePairingTypeAdvertiseAndOOBPair" isEqual:v7])
  {
    v22 = *(a1 + 32);
    v23 = *(v22 + 8);
    v24 = *(v22 + 32);
    v25 = 3;
  }

  else
  {
    if (![@"extensiblePairingTypeAdvertiseAndPasscodePair" isEqual:v7])
    {
      goto LABEL_9;
    }

    v26 = *(a1 + 32);
    v23 = *(v26 + 8);
    v24 = *(v26 + 32);
    v25 = 4;
  }

  [v23 advertiseAndPairWithAdvertisedName:v24 andPairingMode:v25 withGetStartedBlock:0];
LABEL_9:
}

void sub_1000F58A8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = _NRIsAutomated() ^ 1;
  }

  else
  {
    v6 = 0;
  }

  [*(*(a1 + 32) + 16) setPostFailsafeObliteration:v6];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v8 = [WeakRetained objectForKeyedSubscript:@"extensiblePairingPairingType"];

  v9 = objc_loadWeakRetained((*(a1 + 32) + 48));
  v10 = [v9 objectForKeyedSubscript:@"extensiblePairingShouldFilePairingReport"];

  v11 = [v10 BOOLValue];
  v12 = [*(a1 + 32) unpairHelper];
  [v12 setShouldFilePairingReport:v11];

  v13 = objc_loadWeakRetained((*(a1 + 32) + 48));
  v14 = [v13 objectForKeyedSubscript:@"isAltAccountGizmo"];

  [*(*(a1 + 32) + 16) setIsTinkerPairing:{objc_msgSend(v14, "BOOLValue")}];
  v15 = objc_loadWeakRetained((*(a1 + 32) + 48));
  v16 = [v15 objectForKeyedSubscript:@"extensiblePairingDeviceID"];

  if ([v8 isEqual:@"extensiblePairingTypeDiscoverAndPairWithName"])
  {
    v17 = nr_daemon_log();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v19 = nr_daemon_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Discover and pair with name via NetworkRelay PreShared Key", buf, 2u);
      }
    }

    v20 = objc_loadWeakRetained((*(a1 + 32) + 80));
    v21 = [v20 serviceFromClass:objc_opt_class()];

    v22 = *(a1 + 32);
    v23 = *(v22 + 16);
    v24 = *(v22 + 32);
    v25 = [v21 key];
    [v23 discoverAndPairWithAdvertisedName:v24 deviceID:v16 oobKey:v25];
  }

  else if ([v8 isEqual:@"extensiblePairingTypeDiscoverAndPairWithDeviceID"])
  {
    v26 = nr_daemon_log();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

    if (v27)
    {
      v28 = nr_daemon_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Discover and pair with device ID via NetworkRelay PIN", v29, 2u);
      }
    }

    [*(*(a1 + 32) + 16) discoverAndPairWithAdvertisedName:*(*(a1 + 32) + 32) deviceID:v16];
  }
}

uint64_t sub_1000F62B4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 _getSetIsActiveDiffWithIsActive:1 withPairingID:v4 collection:v5];
  v7 = [v5 applyDiff:v6];

  [*(a1 + 32) _cleanUpDiscoveredDevicesWithCollection:v5];
  v8 = +[NRQueue registryDaemonQueue];
  [v8 dispatchAsync:*(a1 + 48)];

  return 0;
}

void sub_1000F65D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) registry];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000F66EC;
  v14[3] = &unk_100179DF0;
  v15 = v4;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v18 = *(a1 + 64);
  v13 = *(a1 + 32);
  v9 = v8;
  *&v10 = v13;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v16 = v11;
  v17 = v10;
  v12 = v4;
  [v5 grabRegistryWithWriteBlockAsync:v14];
}

uint64_t sub_1000F66EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) productType];
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 chipID]);
  }

  else
  {
    v6 = 0;
  }

  v7 = [NRDevicePropertyDiffType alloc];
  v8 = [[NRDevicePropertyDiff alloc] initWithValue:*(a1 + 40)];
  v9 = [v7 initWithDiff:v8 andChangeType:1];

  v10 = [NRDevicePropertyDiffType alloc];
  v11 = v10;
  if (v4)
  {
    v12 = [[NRDevicePropertyDiff alloc] initWithValue:v4];
    v13 = [v11 initWithDiff:v12 andChangeType:1];
  }

  else
  {
    v13 = [v10 initWithDiff:0 andChangeType:2];
  }

  v14 = [NRDevicePropertyDiffType alloc];
  v15 = v14;
  v59 = v6;
  if (v6)
  {
    v16 = [[NRDevicePropertyDiff alloc] initWithValue:v6];
    v17 = [v15 initWithDiff:v16 andChangeType:1];
  }

  else
  {
    v17 = [v14 initWithDiff:0 andChangeType:2];
  }

  v18 = [NRDevicePropertyDiffType alloc];
  v19 = [[NRDevicePropertyDiff alloc] initWithValue:*(a1 + 48)];
  v20 = [v18 initWithDiff:v19 andChangeType:1];

  v72[0] = NRDevicePropertyAdvertisedName;
  v72[1] = NRDevicePropertyProductType;
  v57 = v13;
  v58 = v9;
  v73[0] = v9;
  v73[1] = v13;
  v72[2] = NRDevicePropertyChipID;
  v72[3] = NRDevicePropertyPairingID;
  v55 = v20;
  v56 = v17;
  v73[2] = v17;
  v73[3] = v20;
  v21 = [NSDictionary dictionaryWithObjects:v73 forKeys:v72 count:4];
  v22 = [NSMutableDictionary dictionaryWithDictionary:v21];

  if (([*(*(a1 + 56) + 24) networkRelayPairing] & 1) != 0 || (+[NRSystemProperties sharedInstance](NRSystemProperties, "sharedInstance"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "isVirtualDevice"), v23, v24))
  {
    v25 = nr_daemon_log();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

    if (v26)
    {
      v27 = nr_daemon_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 72);
        *buf = 138412546;
        v69 = _NRDevicePropertyDiscoveryMechanism;
        v70 = 2048;
        v71 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "NetworkRelay pairing is enabled on the phone, adding property diffs -- %@: %lu", buf, 0x16u);
      }
    }

    v29 = [NRDevicePropertyDiffType alloc];
    v30 = [NRDevicePropertyDiff alloc];
    v31 = [NSNumber numberWithUnsignedInteger:*(a1 + 72)];
    v32 = [v30 initWithValue:v31];
    v33 = [v29 initWithDiff:v32 andChangeType:1];

    [v22 setObject:v33 forKeyedSubscript:_NRDevicePropertyDiscoveryMechanism];
  }

  v34 = [*(a1 + 56) _diffsForSettingDeviceIsActive:1 withPairingID:*(a1 + 48) collection:v3];
  v35 = [v34 mutableCopy];

  if (v35)
  {
    v53 = v4;
    v54 = v3;
    v36 = [v35 objectForKeyedSubscript:*(a1 + 48)];
    v37 = [v36 diff];

    v38 = +[NSMutableDictionary dictionary];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v39 = v37;
    v40 = [v39 countByEnumeratingWithState:&v63 objects:v67 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v64;
      do
      {
        for (i = 0; i != v41; i = i + 1)
        {
          if (*v64 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v63 + 1) + 8 * i);
          v45 = [v39 objectForKeyedSubscript:v44];
          [v38 setObject:v45 forKeyedSubscript:v44];
        }

        v41 = [v39 countByEnumeratingWithState:&v63 objects:v67 count:16];
      }

      while (v41);
    }

    [v38 addEntriesFromDictionary:v22];
    v46 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v38];

    v47 = [[NRDeviceDiffType alloc] initWithDiff:v46 andChangeType:1];
    [v35 setObject:v47 forKeyedSubscript:*(a1 + 48)];

    v4 = v53;
    v3 = v54;
  }

  else
  {
    v35 = +[NSMutableDictionary dictionary];
    v46 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v22];
    v38 = [[NRDeviceDiffType alloc] initWithDiff:v46 andChangeType:1];
    [v35 setObject:v38 forKeyedSubscript:*(a1 + 48)];
  }

  v48 = [[NRDeviceCollectionDiff alloc] initWithDeviceCollectionDiffDeviceDiffs:v35];
  v49 = [v3 applyDiff:v48];
  v50 = +[NRQueue registryDaemonQueue];
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_1000F6D5C;
  v60[3] = &unk_100178098;
  v51 = *(a1 + 64);
  v60[4] = *(a1 + 56);
  v62 = v51;
  v61 = *(a1 + 48);
  [v50 dispatchAsync:v60];

  return 0;
}

uint64_t sub_1000F6D5C(void *a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Adding EPSagaOperandExtensiblePairingStartedKey to operands", v10, 2u);
    }
  }

  v5 = [[EPSagaOperandNumber alloc] initWithNumber:&__kCFBooleanTrue];
  WeakRetained = objc_loadWeakRetained((a1[4] + 48));
  v7 = [WeakRetained operands];
  [v7 setObject:v5 forKeyedSubscript:@"pairingStarted"];

  v8 = objc_loadWeakRetained((a1[4] + 48));
  [v8 persist];

  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[5]);
  }

  return result;
}

uint64_t sub_1000F712C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v71 = a3;
  v6 = [[NSMutableDictionary alloc] initWithCapacity:5];
  v7 = *(a1 + 32);
  v8 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v9 = NRDevicePropertyAdvertisedName;
  v10 = [v8 objectForKeyedSubscript:NRDevicePropertyAdvertisedName];
  v11 = [v10 value];
  LOBYTE(v7) = [v7 isEqual:v11];

  if ((v7 & 1) == 0)
  {
    v12 = [NRDevicePropertyDiffType alloc];
    v13 = [[NRDevicePropertyDiff alloc] initWithValue:*(a1 + 32)];
    v14 = [v12 initWithDiff:v13 andChangeType:1];

    [v6 setObject:v14 forKeyedSubscript:v9];
  }

  v15 = *(a1 + 48);
  v16 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v17 = _NRDevicePropertyBluetoothIdentifier;
  v18 = [v16 objectForKeyedSubscript:_NRDevicePropertyBluetoothIdentifier];
  v19 = [v18 value];
  LOBYTE(v15) = [v15 isEqual:v19];

  if ((v15 & 1) == 0)
  {
    v20 = [NRDevicePropertyDiffType alloc];
    v21 = [[NRDevicePropertyDiff alloc] initWithValue:*(a1 + 48)];
    v22 = [v20 initWithDiff:v21 andChangeType:1];

    [v6 setObject:v22 forKeyedSubscript:v17];
  }

  v23 = *(a1 + 40);
  v24 = [v5 objectForKeyedSubscript:v23];
  v25 = NRDevicePropertyPairingID;
  v26 = [v24 objectForKeyedSubscript:NRDevicePropertyPairingID];
  v27 = [v26 value];
  LOBYTE(v23) = [v23 isEqual:v27];

  if ((v23 & 1) == 0)
  {
    v28 = [NRDevicePropertyDiffType alloc];
    v29 = [[NRDevicePropertyDiff alloc] initWithValue:*(a1 + 40)];
    v30 = [v28 initWithDiff:v29 andChangeType:1];

    [v6 setObject:v30 forKeyedSubscript:v25];
  }

  v31 = [NRDevicePropertyDiffType alloc];
  v32 = [NRDevicePropertyDiff alloc];
  v33 = [NSNumber numberWithInteger:*(a1 + 72)];
  v34 = [v32 initWithValue:v33];
  v73 = [v31 initWithDiff:v34 andChangeType:1];

  v35 = +[NSDate now];
  [v35 timeIntervalSinceReferenceDate];
  v37 = v36;

  v38 = [NRDevicePropertyDiffType alloc];
  v39 = [NRDevicePropertyDiff alloc];
  v40 = [NSNumber numberWithDouble:v37];
  v41 = [v39 initWithValue:v40];
  v72 = [v38 initWithDiff:v41 andChangeType:1];

  v42 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v43 = _NRDevicePropertyRSSI;
  v44 = [v42 objectForKeyedSubscript:_NRDevicePropertyRSSI];
  v45 = [v44 value];

  v46 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v47 = _NRDevicePropertyLastRSSIUpdate;
  v48 = [v46 objectForKeyedSubscript:_NRDevicePropertyLastRSSIUpdate];
  v49 = [v48 value];

  v50 = *(a1 + 72);
  v51 = [v45 integerValue];
  [v49 doubleValue];
  v53 = v71;
  if (sub_1000A15FC(v50, v51, v37, v52))
  {
    v54 = nr_daemon_log();
    v55 = os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT);

    if (v55)
    {
      v56 = nr_daemon_log();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v57 = *(a1 + 32);
        v58 = [*(a1 + 40) UUIDString];
        *buf = 138412546;
        v80 = v57;
        v53 = v71;
        v81 = 2114;
        v82 = v58;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "updateNRMutableDeviceFromEPDevice: Updating or creating device %@ %{public}@", buf, 0x16u);
      }
    }

    [v6 setObject:v73 forKeyedSubscript:v43];
    [v6 setObject:v72 forKeyedSubscript:v47];
  }

  if (*(a1 + 56))
  {
    v59 = [v53 storeSecureProperty:?];
    v60 = [NRDevicePropertyDiffType alloc];
    v61 = [[NRDevicePropertyDiff alloc] initWithValue:v59];
    v62 = [v60 initWithDiff:v61 andChangeType:1];

    [v6 setObject:v62 forKeyedSubscript:NRDevicePropertyBluetoothMACAddress];
  }

  v63 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v6];
  if (v63)
  {
    v64 = [NRDeviceCollectionDiff alloc];
    v77 = *(a1 + 40);
    v65 = [[NRDeviceDiffType alloc] initWithDiff:v63 andChangeType:0];
    v78 = v65;
    v66 = [NSDictionary dictionaryWithObjects:&v78 forKeys:&v77 count:1];
    v67 = [v64 initWithDeviceCollectionDiffDeviceDiffs:v66];

    v68 = [v5 applyDiff:v67];
  }

  v69 = +[NRQueue registryDaemonQueue];
  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_1000F77F4;
  v74[3] = &unk_100175688;
  v76 = *(a1 + 64);
  v75 = *(a1 + 40);
  [v69 dispatchAsync:v74];

  return 0;
}

uint64_t sub_1000F77F4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

uint64_t sub_1000F7A20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableDictionary dictionary];
  v5 = [v3 objectForKeyedSubscript:*(a1 + 32)];
  if (v5)
  {
    v6 = [*(a1 + 40) makeLocalPairingStorePairingID:*(a1 + 32)];
    v7 = nr_daemon_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v9 = nr_daemon_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 32) UUIDString];
        v11 = [*(a1 + 48) UUIDString];
        v12 = *(a1 + 64);
        *buf = 138543874;
        v37 = v10;
        v38 = 2114;
        v39 = v11;
        v40 = 1024;
        v41 = v12;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "createLocalPairingStore deviceID: %{public}@, bluetoothIdentifier: %{public}@, notify: %{BOOL}d", buf, 0x1Cu);
      }
    }

    if (v6)
    {
      v13 = [[NRDevicePropertyDiff alloc] initWithValue:v6];
      v14 = [[NRDevicePropertyDiffType alloc] initWithDiff:v13 andChangeType:0];
      [v4 setObject:v14 forKeyedSubscript:NRDevicePropertyLocalPairingDataStorePath];

      if (*(a1 + 64) == 1)
      {
        v15 = [[NRDevicePropertyDiff alloc] initWithValue:&__kCFBooleanTrue];
        v16 = [[NRDevicePropertyDiffType alloc] initWithDiff:v15 andChangeType:0];
        [v4 setObject:v16 forKeyedSubscript:_NRDevicePropertyPairingStatusBluetoothPaired];
        if (*(a1 + 48))
        {
          v30 = [[NRDevicePropertyDiff alloc] initWithValue:*(a1 + 48)];
          v17 = [[NRDevicePropertyDiffType alloc] initWithDiff:v30 andChangeType:0];
          [v4 setObject:v17 forKeyedSubscript:_NRDevicePropertyBluetoothIdentifier];
          if (*(*(a1 + 40) + 40) == 1)
          {
            v18 = [NetworkRelayAgent networkRelayIdentifierForBluetoothIdentifier:*(a1 + 48)];
            if (v18)
            {
              v29 = v18;
              v19 = [[NRDevicePropertyDiff alloc] initWithValue:v18];
              v20 = [[NRDevicePropertyDiffType alloc] initWithDiff:v19 andChangeType:1];
              [v4 setObject:v20 forKeyedSubscript:_NRDevicePropertyNetworkRelayIdentifier];

              v18 = v29;
            }
          }
        }
      }

      v21 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v4];
      v22 = [NRDeviceCollectionDiff alloc];
      v34 = *(a1 + 32);
      v23 = [[NRDeviceDiffType alloc] initWithDiff:v21 andChangeType:1];
      v35 = v23;
      v24 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v25 = [v22 initWithDeviceCollectionDiffDeviceDiffs:v24];

      v26 = [v3 applyDiff:v25];
    }
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 56))
  {
    v27 = +[NRQueue registryDaemonQueue];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000F7E74;
    v31[3] = &unk_100175688;
    v33 = *(a1 + 56);
    v32 = v6;
    [v27 dispatchAsync:v31];
  }

  return 0;
}

void sub_1000F821C(uint64_t a1)
{
  v3 = [*(a1 + 32) registry];
  LOBYTE(v2) = *(a1 + 104);
  [v3 unpairDeviceWithPairingID:*(a1 + 40) obliterationString:*(a1 + 48) shouldBrick:*(a1 + 56) storeUnpair:*(a1 + 64) migrationUnpair:*(a1 + 72) shouldPreserveESim:*(a1 + 80) pairingReport:*(a1 + 88) remoteUnpairRequestUUID:*(a1 + 96) shouldConnectionWithDevice:v2];
}

uint64_t sub_1000F8598(uint64_t a1, void *a2)
{
  v5 = a2;
  v6 = [NRDevicePropertyDiffType alloc];
  v7 = [*(a1 + 32) isErrorSet];
  if (v7)
  {
    v8 = [NRDevicePropertyDiff alloc];
    v2 = [*(a1 + 32) detailedError];
    v3 = [v2 nr_filteredError];
    v9 = [v8 initWithValue:v3];
  }

  else
  {
    v9 = 0;
  }

  if ([*(a1 + 32) isErrorSet])
  {
    v10 = 0;
  }

  else
  {
    v10 = 2;
  }

  v11 = [v6 initWithDiff:v9 andChangeType:v10];
  if (v7)
  {
  }

  v12 = [NRDevicePropertyDiffType alloc];
  v13 = [[NRDevicePropertyDiff alloc] initWithValue:&__kCFBooleanFalse];
  v14 = [v12 initWithDiff:v13 andChangeType:0];

  v15 = [[NRDevicePropertyDiffType alloc] initWithDiff:0 andChangeType:2];
  v16 = [NRDeviceDiff alloc];
  v29[0] = _NRDevicePropertyLastPairingError;
  v29[1] = NRDevicePropertyIsPaired;
  v30[0] = v11;
  v30[1] = v14;
  v29[2] = _NRDevicePropertyPairingStatusBluetoothPaired;
  v30[2] = v15;
  v17 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:3];
  v18 = [v16 initWithDiffPropertyDiffs:v17];

  v19 = [[NRDeviceDiffType alloc] initWithDiff:v18 andChangeType:1];
  v20 = [NRDeviceCollectionDiff alloc];
  v27 = *(a1 + 40);
  v28 = v19;
  v21 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v22 = [v20 initWithDeviceCollectionDiffDeviceDiffs:v21];

  v23 = [v5 applyDiff:v22];
  if (*(a1 + 56))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 80));
    v25 = [WeakRetained queue];
    dispatch_async(v25, *(a1 + 56));
  }

  return 0;
}

uint64_t sub_1000F8C60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NRDevicePropertyDiffType alloc];
  v5 = [[NRDevicePropertyDiff alloc] initWithValue:&__kCFBooleanFalse];
  v6 = [v4 initWithDiff:v5 andChangeType:0];

  v7 = [NRDeviceDiff alloc];
  v19 = _NRDevicePropertyPairingStatusBluetoothPaired;
  v20 = v6;
  v8 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v9 = [v7 initWithDiffPropertyDiffs:v8];

  v10 = [[NRDeviceDiffType alloc] initWithDiff:v9 andChangeType:1];
  v11 = [NRDeviceCollectionDiff alloc];
  v17 = *(a1 + 32);
  v18 = v10;
  v12 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v13 = [v11 initWithDeviceCollectionDiffDeviceDiffs:v12];

  v14 = [v3 applyDiff:v13];
  v15 = +[NRQueue registryDaemonQueue];
  [v15 dispatchAsync:*(a1 + 40)];

  return 0;
}

void sub_1000F9FD8(id a1)
{
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v35 = objc_opt_class();
  v36 = objc_opt_class();
  v37 = objc_opt_class();
  v38 = objc_opt_class();
  v39 = objc_opt_class();
  v40 = objc_opt_class();
  v41 = objc_opt_class();
  v42 = objc_opt_class();
  v43 = objc_opt_class();
  v44 = objc_opt_class();
  v45 = objc_opt_class();
  v46 = objc_opt_class();
  v47 = objc_opt_class();
  v48 = objc_opt_class();
  v49 = objc_opt_class();
  v50 = objc_opt_class();
  v51 = objc_opt_class();
  v52 = objc_opt_class();
  v53 = objc_opt_class();
  v54 = objc_opt_class();
  v55 = objc_opt_class();
  v56 = objc_opt_class();
  v1 = [NSArray arrayWithObjects:&v4 count:53];
  v2 = [NSSet setWithArray:v1, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55];
  v3 = qword_1001B3B78;
  qword_1001B3B78 = v2;
}

void sub_1000FBB8C(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  v3 = *(v1 + 16);
  *(v1 + 16) = 0;

  v4 = [*v2 currentEntry];
  v5 = [v4 errors];
  v6 = [v5 count];

  v7 = sub_1000034AC();
  v8 = v7;
  if (v6)
  {
    v9 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v10 = sub_1000034AC();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100106958(v2, v10);
      }
    }

    [*v2 setDidFail:{objc_msgSend(*v2, "didFail") | objc_msgSend(*v2, "notUnrollable") ^ 1}];
  }

  else
  {
    v11 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = sub_1000034AC();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(*v2 + 3);
        v14 = [*v2 currentEntry];
        v15 = [v14 shortDescription];
        v23 = 138543618;
        v24 = v13;
        v25 = 2114;
        v26 = v15;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "EPRoutingSlip[%{public}@]: Transaction %{public}@ finished", &v23, 0x16u);
      }
    }
  }

  v16 = [*v2 currentEntry];
  if ([*v2 didFail] && (objc_msgSend(*v2, "notUnrollable") & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(*v2 + 4);
    [WeakRetained routingSlip:*v2 entryDidCompleteRollback:v16];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(*v2 + 4);
    [WeakRetained routingSlip:*v2 entryDidCompleteTransaction:v16];
  }

  if ([*v2 updateCurrentTransactionIndex])
  {
    [*v2 resume];
  }

  else
  {
    v18 = sub_1000034AC();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (v19)
    {
      v20 = sub_1000034AC();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(*v2 + 3);
        v23 = 138543362;
        v24 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "EPRoutingSlip[%{public}@]: Saga completed", &v23, 0xCu);
      }
    }

    [*v2 printDescription];
    [*v2 setState:2];
    [*v2 persist];
    v22 = *(*v2 + 13);
    *(*v2 + 13) = 0;
  }
}

void sub_1000FC00C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = sub_1000034AC();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = sub_1000034AC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = " ";
      if (v9[5] == a3 && v9[6] == 1)
      {
        v10 = "*";
      }

      v11 = v9[3];
      v12 = [v5 shortDescription];
      v13 = 136315650;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
      v17 = 2114;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(entries) [%s] EPRoutingSlip[%{public}@] %{public}@", &v13, 0x20u);
    }
  }
}

const __CFString *sub_1000FCB54(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_100179EF8 + a1);
  }
}

void sub_1000FCB78(uint64_t a1, id *a2, NSObject *a3)
{
  v4 = *(*a1 + 32);
  v5 = [*a2 processIdentifier];
  v6 = 138412546;
  v7 = v4;
  v8 = 2048;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "NRXPCServer: %@ connection rejected from pid %ld because proxy failed to init", &v6, 0x16u);
}

void sub_1000FCC20(uint64_t a1, id *a2, NSObject *a3)
{
  v5 = *(*a1 + 32);
  v6 = [*a2 processIdentifier];
  v7 = [*(*a1 + 80) allKeys];
  v8 = 138412802;
  v9 = v5;
  v10 = 2048;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "NRXPCServer: %@ connection rejected from pid %ld because of missing entitlement %@", &v8, 0x20u);
}

void sub_1000FCE7C(id *a1, NSObject *a2)
{
  v3 = [*a1 UUIDString];
  sub_100007728();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to locate a device %@", v4, 0xCu);
}

void sub_1000FCF28(void *a1)
{
  v6 = [a1 nr_safeDescription];
  sub_10000D380();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000FCFB8(void *a1)
{
  v6 = [a1 nr_safeDescription];
  sub_10000D380();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000FD048(id *a1)
{
  v6 = [*a1 current];
  sub_10000D380();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000FD0DC(void *a1)
{
  v2 = [a1 operationType];
  v3 = [a1 targetPairingID];
  v9 = [v3 UUIDString];
  sub_10000D380();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1000FD1A8(int a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "EPMobileAssetAutoTrigger: notify_registery_dispatch UI Unlocked notification ***FAILED*** and returned %ld", &v2, 0xCu);
}

void sub_1000FD224(int a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "EPMobileAssetAutoTrigger: notify_get_state UI Unlocked ***FAILED*** and returned %ld", &v2, 0xCu);
}

void sub_1000FD2A0(void *a1)
{
  v6 = [a1 nr_safeDescription];
  sub_10000D380();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000FD344(void *a1)
{
  v6 = [a1 nr_safeDescription];
  sub_10000D380();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000FD3D4(void *a1)
{
  v6 = [a1 nr_safeDescription];
  sub_10000D380();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000FD48C(os_log_t log)
{
  v1 = 136315138;
  v2 = "[NRTermsAcknowledgementRegistryService checkForAcknowledgement:forDeviceID:withCompletion:]_block_invoke";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s:Not Connected.  Can't tell if terms have been agreed to.", &v1, 0xCu);
}

void sub_1000FD510(os_log_t log)
{
  v1 = 136315138;
  v2 = "[NRTermsAcknowledgementRegistryService checkForAcknowledgement:forDeviceID:withCompletion:]_block_invoke";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s:No Active device.  Can't tell if terms have been agreed to.", &v1, 0xCu);
}

void sub_1000FD710(char a1, void *a2, NSObject *a3)
{
  if (a1)
  {
    v5 = "NO";
  }

  else
  {
    v5 = "YES";
  }

  v6 = [a2 keyChannel];
  if (v6)
  {
    v7 = "YES";
  }

  else
  {
    v7 = "NO";
  }

  v8 = [a2 keyChannel];
  v9 = [v8 defaultPairedDevice];
  v11 = 136315650;
  if ([v9 isConnected])
  {
    v10 = "YES";
  }

  else
  {
    v10 = "NO";
  }

  v12 = v5;
  v13 = 2080;
  v14 = v7;
  v15 = 2080;
  v16 = v10;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "EPMigrationKeyPusher: Can't send the key- hasKey=%s hasChannel=%s channelConnected=%s", &v11, 0x20u);
}

void sub_1000FD8DC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

void sub_1000FD938(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "HKHealthStore forceNanoSyncWithPullRequest failed with %@", &v2, 0xCu);
}

void sub_1000FD9B0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "HKHealthStore waitForLastChanceSyncWithDevicePairingID failed with %@", &v2, 0xCu);
}

void sub_1000FDA78(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10001BA88();
  sub_10001BAA0(&_mh_execute_header, v2, v3, "IDSLocalPairingAddPairedDeviceWithInfo %@ failed with error %@");
}

void sub_1000FDAE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10001BA88();
  sub_10001BAA0(&_mh_execute_header, v2, v3, "IDSLocalPairingConnectPairedDevice %@ failed with %@");
}

void sub_1000FDB50(uint64_t a1)
{
  v6 = [sub_10001BA7C(a1) UUIDString];
  sub_10000D380();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000FDBE0(uint64_t a1)
{
  v1 = [sub_10001BA7C(a1) UUIDString];
  sub_10001BA68();
  sub_10000D380();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000FDC80(uint64_t a1)
{
  v1 = [sub_10001BA7C(a1) UUIDString];
  sub_10001BA68();
  sub_10000D380();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000FDD20(uint64_t a1)
{
  v1 = [sub_10001BA7C(a1) UUIDString];
  sub_10001BA68();
  sub_10000D380();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000FDDC0(uint64_t a1)
{
  v1 = [sub_10001BA7C(a1) UUIDString];
  sub_10001BA68();
  sub_10000D380();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

uint64_t sub_1000FDE70(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 20) |= 1u;
    *(result + 16) = a2;
  }

  return result;
}

void sub_1000FDE98(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

uint64_t sub_1000FDEB0(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t sub_1000FDEC4(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t sub_1000FDED8(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 12) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

uint64_t sub_1000FDF00(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

void sub_1000FDF14(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

uint64_t sub_1000FDF2C(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

id sub_1000FDF40(id result)
{
  if (result)
  {
    sub_100021C84();
    v3[1] = 3221225472;
    v3[2] = sub_100020280;
    v3[3] = &unk_100176198;
    v3[4] = v1;
    v4 = v2;
    return [v1 performUnderCollectionLock:v3];
  }

  return result;
}

void *sub_1000FDFA0(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = [result history];
    v3 = [v2 nextIndex];

    v4 = [v1 history];
    v5 = [v4 deviceCollection];
    v6 = [v5 count] == 0;

    v7 = [v1 secureProperties];
    v8 = v7 != 0;

    return (v3 | (v6 << 63) | (v8 << 62));
  }

  return result;
}

id sub_1000FE040(id result)
{
  if (result)
  {
    sub_100021C84();
    v3[1] = 3221225472;
    v3[2] = sub_10002037C;
    v3[3] = &unk_1001761C0;
    v3[4] = v1;
    v3[5] = v2;
    return [v1 performUnderCollectionLock:v3];
  }

  return result;
}

uint64_t sub_1000FE09C(int *a1)
{
  v2 = sub_1000FDFA0(a1);
  if (!sub_10002019C(a1) || (result = sub_100020298(a1), result != v2))
  {
    sub_1000FE040(a1);
    v4 = [objc_opt_class() readNotifyToken:a1[3]];
    result = sub_10002019C(a1);
    if (!result || v4 != v2)
    {
      sub_1000FDF40(a1);
      v5 = nr_daemon_log();
      v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

      if (v6)
      {
        v7 = nr_daemon_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 134218240;
          v9 = v4;
          v10 = 2048;
          v11 = v2;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_notifyClients: Daemon notifying %llx->%llx", &v8, 0x16u);
        }
      }

      notify_set_state(a1[3], v2);
      return notify_post([NRRegistryUpdateCounterNotification UTF8String]);
    }
  }

  return result;
}

void sub_1000FE234()
{
  sub_100007728();
  sub_10004EB2C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000FE2B4()
{
  sub_10004EB38();
  sub_10004EAD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000FE334()
{
  sub_100007728();
  sub_10004EB2C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000FE3B4()
{
  sub_100007728();
  sub_10004EB2C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000FE434(uint64_t a1, uint64_t a2)
{
  v4 = [sub_10004EB48(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  sub_10004EB5C(&_mh_execute_header, v5, v6, "Dropping assertion %@");
}

void sub_1000FE490(void *a1, uint64_t a2)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_10004EB2C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1000FE4E4(void *a1, uint64_t a2)
{
  *a2 = 136446466;
  *(a2 + 4) = "[NRPairingDaemon legacyDidRestoreFromBackup]";
  *(a2 + 12) = 2112;
  *(a2 + 14) = a1;
  sub_10004EB2C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000FE54C(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  sub_10004EB2C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_1000FE588(void *a1, NSObject *a2)
{
  [a1 count];
  sub_100007728();
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Detected corrupted devices in NanoRegistry - removing %lu device(s)", v3, 0xCu);
}

void sub_1000FE610()
{
  sub_10004EB20();
  sub_10004EAD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000FE64C(void *a1)
{
  v2 = +[NRPairingCompatibilityVersionInfo systemVersions];
  v3 = [a1 chipIDOfActiveDevice];
  [v2 minPairingCompatibilityVersionForChipID:v3];
  v4 = +[NRPairingCompatibilityVersionInfo systemVersions];
  [v4 maxPairingCompatibilityVersion];
  v5 = +[NRPairingCompatibilityVersionInfo systemVersions];
  v6 = [a1 chipIDOfActiveDevice];
  [v5 minQuickSwitchPairingCompatibilityVersionForChipID:v6];
  sub_10004EADC();
  sub_10004EB7C(&_mh_execute_header, v7, v8, "Revlock feature flag is not enabled; compatibility versions have been changed. min: %lld->%lld  max: %lld->%lld  qsMin: %lld->%lld", v9, v10, v11, v12, v13);
}

void sub_1000FE768(void *a1)
{
  v2 = +[NRPairingCompatibilityVersionInfo systemVersions];
  v3 = [a1 chipIDOfActiveDevice];
  [v2 minPairingCompatibilityVersionForChipID:v3];
  v4 = +[NRPairingCompatibilityVersionInfo systemVersions];
  [v4 maxPairingCompatibilityVersion];
  v5 = +[NRPairingCompatibilityVersionInfo systemVersions];
  v6 = [a1 chipIDOfActiveDevice];
  [v5 minQuickSwitchPairingCompatibilityVersionForChipID:v6];
  sub_10004EADC();
  sub_10004EB7C(&_mh_execute_header, v7, v8, "Local compatibility versions have been overridden via defaults at com.apple.NanoRegistry. min: %lld->%lld  max: %lld->%lld  qsMin: %lld->%lld", v9, v10, v11, v12, v13);
}

void sub_1000FE93C()
{
  sub_100007728();
  sub_10004EAD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000FE9AC()
{
  sub_10004EB20();
  sub_10004EAD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000FE9E8()
{
  sub_10004EB20();
  sub_10004EAD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000FEA24(void *a1)
{
  v1 = [a1 nr_safeDescription];
  sub_100007728();
  sub_10000D380();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000FEAB4(void *a1, uint64_t a2)
{
  v3 = [a1 nr_safeDescription];
  v4 = [*(a2 + 32) UUIDString];
  sub_10004EB38();
  sub_10000D380();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1000FEB68(void *a1)
{
  v1 = [a1 activeDevice];
  v2 = [v1 pairingID];
  sub_10004EB38();
  sub_10000D380();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000FEE38()
{
  sub_10004EB20();
  sub_10004EAD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000FEE74()
{
  sub_10004EB20();
  sub_10004EAD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000FEEB0()
{
  sub_10004EB20();
  sub_10004EAD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000FEEEC()
{
  sub_10004EB20();
  sub_10004EAD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000FEF28(void *a1)
{
  v1 = [a1 UUIDString];
  sub_100007728();
  sub_10000D380();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000FEFD0(uint64_t a1)
{
  v2 = [*(a1 + 32) UUIDString];
  v3 = *(a1 + 40);
  sub_100007728();
  sub_10000D380();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1000FF07C()
{
  sub_10004EB20();
  sub_10004EAD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000FF0B8()
{
  sub_100007728();
  sub_10004EAD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000FF128(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_10004EAD0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000FF1A0()
{
  sub_100007728();
  sub_10004EAD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000FF210(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_10004EAD0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000FF288()
{
  sub_10004EB20();
  sub_10004EAD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000FF2D8(id *a1)
{
  v1 = [*a1 nsuuid];
  v2 = [v1 UUIDString];
  sub_100007728();
  sub_10000D380();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1000FF380(id *a1)
{
  v1 = [*a1 UUIDString];
  sub_100007728();
  sub_10000D380();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000FF410(uint64_t a1, uint64_t a2)
{
  v3 = nrGetReportStringForErrorCode();
  v4 = *(a2 + 64);
  sub_100007728();
  sub_10000D380();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1000FF4B8()
{
  sub_10004EB20();
  sub_10004EAD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000FF4F4(id *a1)
{
  v1 = [*a1 UUIDString];
  sub_100007728();
  sub_10000D380();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000FF654(uint64_t *a1)
{
  v6 = *a1;
  sub_10004EAD0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000FF6CC(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_10005157C(&_mh_execute_header, a3, a3, "Failed to serialize Albert pairing report property list because of %{public}@", a2);
}

void sub_1000FFA70(void *a1, NSObject *a2)
{
  v3 = [a1 nr_safeDescription];
  v5 = 138543362;
  v6 = v3;
  sub_10005157C(&_mh_execute_header, a2, v4, "Could not send Albert pairing report error %{public}@", &v5);
}

void sub_1000FFB00(void *a1, NSObject *a2)
{
  v3 = [a1 authenticationMethod];
  v5 = 138543362;
  v6 = v3;
  sub_10005157C(&_mh_execute_header, a2, v4, "Authentication method is not server trust, it is %{public}@", &v5);
}

void sub_1000FFBF8(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_10004EAD0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

uint64_t sub_1000FFDC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 16);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(NSMutableArray);
      v7 = *(a1 + 16);
      *(a1 + 16) = v6;

      v5 = *(a1 + 16);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return _objc_release_x1(v3, v4);
}

uint64_t sub_1000FFE48(uint64_t result, double a2)
{
  if (result)
  {
    *(result + 28) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

uint64_t sub_1000FFE70(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 24);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_1000FFE90(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 24) = a2;
  }

  return result;
}

uint64_t sub_1000FFEA4(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

void sub_1000FFEB8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

uint64_t sub_1000FFED0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = objc_alloc_init(NRPBProperty);
  sub_1000FFDC0(a1, v7);
  *a2 = 0;
  a2[1] = 0;
  if (PBReaderPlaceMark() && NRPBPropertyReadFrom())
  {
    PBReaderRecallMark();

    return 1;
  }

  else
  {

    result = 0;
    *a4 = 0;
  }

  return result;
}

void sub_1000FFF84(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [*(*(a1 + 32) + 32) UUIDString];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "IDSLocalPairingSwitchActivePairedDevice %@ failed with %@", &v6, 0x16u);
}

void sub_100100080(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "IDSLocalPairingDisconnectActivePairedDevice failed with %@", &v2, 0xCu);
}

void sub_100100188(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 nr_safeDescription];
  sub_100059F08();
  sub_10000D380();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100100224(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 nr_safeDescription];
  sub_100059F08();
  sub_10000D380();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1001002F4(void *a1)
{
  v1 = [a1 nr_safeDescription];
  sub_100007728();
  sub_10000D380();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100100380(void *a1)
{
  v1 = [a1 nr_safeDescription];
  sub_100007728();
  sub_10000D380();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10010040C(void *a1)
{
  v1 = [a1 nr_safeDescription];
  sub_100007728();
  sub_10000D380();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100100498(void *a1)
{
  v1 = [a1 nr_safeDescription];
  sub_100007728();
  sub_10000D380();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100100524(void *a1)
{
  v1 = [a1 nr_safeDescription];
  sub_100007728();
  sub_10000D380();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1001005B0(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "NRUnixProcessSignaler: Error %d getting process info", v2, 8u);
}

void sub_100100628(int a1, uint64_t a2, NSObject *a3)
{
  v5 = a1;
  v6 = *__error();
  v7 = 134218498;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  v11 = 1024;
  v12 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "NRUnixProcessSignaler: Failed to kill pid %lu for process named %@, error %d", &v7, 0x1Cu);
}

void sub_1001006E0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "NRUnixProcessSignaler: Did not find process named %@", &v2, 0xCu);
}

void sub_100100780(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Call to cancelPairingWithError: %@", &v2, 0xCu);
}

void sub_1001007F8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "ExtensiblePair EPPairer invalidateWithError: called with error %@", &v2, 0xCu);
}

void sub_100100870(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = *(a1 + 64);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = *(a1 + 64);
  v10 = 138413058;
  v11 = a1;
  v12 = 2112;
  v13 = v8;
  v14 = 2048;
  v15 = v9;
  v16 = 2112;
  v17 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Calling pairer:completedWithError: with pairer %@ on %@[%p] with error %@", &v10, 0x2Au);
}

uint64_t sub_100100944(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 12) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

uint64_t sub_100100980(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 40) |= 8u;
    *(result + 32) = a2;
  }

  return result;
}

uint64_t sub_1001009A8(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 40) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

uint64_t sub_1001009D0(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 40) |= 2u;
    *(result + 12) = a2;
  }

  return result;
}

uint64_t sub_1001009F8(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 40) |= 4u;
    *(result + 16) = a2;
  }

  return result;
}

uint64_t sub_100100A20(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 40) |= 0x10u;
    *(result + 36) = a2;
  }

  return result;
}

void sub_100100A48(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

uint64_t sub_100100A60(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t sub_100100A74(uint64_t result)
{
  if (result)
  {
    return *(result + 12);
  }

  return result;
}

uint64_t sub_100100A88(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t sub_100100A9C(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

void sub_100100AB0(id *a1, NSObject *a2)
{
  v3 = [*a1 nr_safeDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error querying device sync state (initial) %{public}@", &v4, 0xCu);
}

void sub_100100B4C(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unknown sync type (%@)", &v3, 0xCu);
}

void sub_100100BDC(os_log_t log)
{
  v1 = 136315138;
  v2 = "+[NetworkRelayAgent networkRelayIdentifierForBluetoothIdentifier:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s called with nil Bluetooth identifier!", &v1, 0xCu);
}

void sub_100100C74(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[NRCoreAnalyticsReporter] No event to log (%@)!", &v2, 0xCu);
}

void sub_100100D30(uint64_t a1, NSObject *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138543618;
  v6 = v4;
  v7 = 2082;
  v8 = "+[NRCoreAnalyticsReporter reportDeviceSwitchTelemetryWithCollectionHistory:]";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}@ %{public}s - Dropping CA Report because there was no active device.", &v5, 0x16u);
}

void sub_100100DE0(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_100074FC8(a1, a2, 16);
  }
}

void sub_100100DF4(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_100074FC8(a1, a2, 8);
  }
}

uint64_t sub_100100E08(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t sub_100100E1C(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

void sub_100100E30(os_log_t log)
{
  v1 = 136315138;
  v2 = "[EPSagaTransactionNotification _shouldWaitForCurrentNotification:]_block_invoke";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: no active device found", &v1, 0xCu);
}

void sub_100100EB4(void *a1, NSObject *a2)
{
  v3[0] = 67109120;
  v3[1] = [a1 integerValue];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "NanoRegistry Daemon: Sleeping for %u seconds because of BootSleepDuration test", v3, 8u);
}

void sub_100100F84(NSObject *a1)
{
  v2 = _NRIsInternalInstall();
  v3 = @"NO";
  v4 = 136446978;
  v5 = "NanoRegistry-1027.18";
  if (v2)
  {
    v3 = @"YES";
  }

  v6 = 2082;
  v7 = "182";
  v8 = 2114;
  v9 = v3;
  v10 = 2114;
  v11 = @"Full-Featured Daemon";
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "nanoregistryd restarted. %{public}s %{public}s internalInstall=%{public}@ (%{public}@)", &v4, 0x2Au);
}

void sub_1001010A4(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_100074FC8(a1, a2, 8);
  }
}

void sub_1001010B8(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_100074FC8(a1, a2, 16);
  }
}

void sub_1001010CC()
{
  sub_100017E5C();
  sub_10004EAD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10010113C()
{
  sub_100017E5C();
  sub_10004EAD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100101238()
{
  sub_100017E5C();
  sub_10004EAD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001012A8()
{
  sub_10004EB20();
  sub_10004EAD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001012E4(void *a1, NSObject *a2)
{
  v3 = [a1 cloud];
  v4 = [v3 deviceUniqueIdentifiers];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Available device identifiers: %@", &v5, 0xCu);
}

void sub_10010140C(uint64_t a1, NSObject *a2)
{
  v3 = [*(a1 + 40) nr_safeDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "EPMigrationAutoTrigger: Migration completed with error %{public}@", &v4, 0xCu);
}

void sub_1001014AC()
{
  sub_10004EB20();
  sub_10004EAD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001014E8()
{
  sub_10004EB20();
  sub_10004EAD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100101524()
{
  sub_10004EB20();
  sub_10004EAD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100101560(os_log_t log)
{
  v1 = 136315138;
  v2 = "[EPSagaTransactionUnpairDevice buildRoutingSlipEntries:serviceRegistry:completion:]_block_invoke";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s no pairing ID, can't unpair!", &v1, 0xCu);
}

void sub_1001015E4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "CoreBluetooth failed to add service %@ with error %@", &v3, 0x16u);
}

void sub_100101680(uint64_t a1, NSObject *a2)
{
  v4 = *__error();
  v5 = 138412546;
  v6 = a1;
  v7 = 1024;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#tailspin failed to create output file %@. errno: %d. Future errors will be suppressed to cut down on logging.", &v5, 0x12u);
}

BOOL sub_100101734(_BOOL8 result)
{
  if (result)
  {
    return *(result + 24) != 0;
  }

  return result;
}

uint64_t sub_100101750(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 36) |= 2u;
    *(result + 16) = a2;
  }

  return result;
}

uint64_t sub_100101778(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 36) |= 0x10u;
    *(result + 33) = a2;
  }

  return result;
}

uint64_t sub_1001017A0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 36) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

uint64_t sub_1001017C8(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 36) |= 0x20u;
    *(result + 34) = a2;
  }

  return result;
}

uint64_t sub_1001017F0(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 36) |= 8u;
    *(result + 32) = a2;
  }

  return result;
}

uint64_t sub_100101818(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 36) |= 4u;
    *(result + 20) = a2;
  }

  return result;
}

void sub_100101840(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

uint64_t sub_100101858(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t sub_10010186C(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t sub_100101880(uint64_t a1)
{
  if (a1)
  {
    return sub_10008C560(*(a1 + 33));
  }

  else
  {
    return sub_10008C560(0);
  }
}

uint64_t sub_10010189C(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t sub_1001018B0(uint64_t a1)
{
  if (a1)
  {
    return sub_10008C560(*(a1 + 32));
  }

  else
  {
    return sub_10008C560(0);
  }
}

uint64_t sub_1001018CC(uint64_t result)
{
  if (result)
  {
    return *(result + 20);
  }

  return result;
}

uint64_t sub_100101924(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 20) |= 1u;
    *(result + 16) = a2;
  }

  return result;
}

void sub_10010194C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

uint64_t sub_100101964(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 16);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_100101984(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

void sub_100101998(void *a1)
{
  v1 = [a1 detailedError];
  sub_100094298(&_mh_execute_header, v2, v3, "Pairing error set: %{public}@", v4, v5, v6, v7, 2u);
}

void sub_100101A20(void *a1)
{
  v1 = [a1 nr_safeDescription];
  sub_100094298(&_mh_execute_header, v2, v3, "Setting pairing error: %{public}@", v4, v5, v6, v7, 2u);
}

uint64_t sub_100101AE4(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 24) |= 1u;
    *(result + 12) = a2;
  }

  return result;
}

uint64_t sub_100101B0C(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 24) |= 4u;
    *(result + 20) = a2;
  }

  return result;
}

uint64_t sub_100101B34(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 24) |= 2u;
    *(result + 16) = a2;
  }

  return result;
}

uint64_t sub_100101B5C(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

void sub_100101B70(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failure loading UDID file %{public}@: Unarchiver threw exception %{public}@.", buf, 0x16u);
}

void sub_100101BD8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "MobileGestalt returned an invalid UDID %@", &v2, 0xCu);
}

void sub_100101C50(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to archive system EPUDID: archiver threw exception %{public}@.", buf, 0xCu);
}

void sub_100101CA8(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 nr_safeDescription];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failure saving UDID file to %{public}@: writeToFile returned with error %{public}@", &v6, 0x16u);
}

void sub_100101DE8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

uint64_t sub_100101E00(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t sub_100101E14(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 32) |= 4u;
    *(result + 29) = a2;
  }

  return result;
}

uint64_t sub_100101E3C(uint64_t result)
{
  if (result)
  {
    return (*(result + 32) >> 2) & 1;
  }

  return result;
}

uint64_t sub_100101E54(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 32) |= 1u;
    *(result + 24) = a2;
  }

  return result;
}

uint64_t sub_100101E7C(uint64_t result)
{
  if (result)
  {
    return *(result + 32) & 1;
  }

  return result;
}

uint64_t sub_100101E94(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 32) |= 2u;
    *(result + 28) = a2;
  }

  return result;
}

uint64_t sub_100101EBC(uint64_t result)
{
  if (result)
  {
    return (*(result + 32) >> 1) & 1;
  }

  return result;
}

uint64_t sub_100101ED4(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 32) |= 8u;
    *(result + 30) = a2;
  }

  return result;
}

uint64_t sub_100101EFC(uint64_t result)
{
  if (result)
  {
    return (*(result + 32) >> 3) & 1;
  }

  return result;
}

void sub_100101F14(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_100074FC8(a1, a2, 16);
  }
}

void sub_100101F28(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_100074FC8(a1, a2, 8);
  }
}

uint64_t sub_100101F3C(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t sub_100101F50(uint64_t a1)
{
  if (a1)
  {
    return sub_10008C560(*(a1 + 29));
  }

  else
  {
    return sub_10008C560(0);
  }
}

uint64_t sub_100101F6C(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t sub_100101F80(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t sub_100101F94(uint64_t a1)
{
  if (a1)
  {
    return sub_10008C560(*(a1 + 28));
  }

  else
  {
    return sub_10008C560(0);
  }
}

uint64_t sub_100101FB0(uint64_t a1)
{
  if (a1)
  {
    return sub_10008C560(*(a1 + 30));
  }

  else
  {
    return sub_10008C560(0);
  }
}

uint64_t sub_100101FCC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 8);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(NSMutableArray);
      v7 = *(a1 + 8);
      *(a1 + 8) = v6;

      v5 = *(a1 + 8);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return _objc_release_x1(v3, v4);
}

uint64_t sub_100102054(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

void sub_100102068(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

uint64_t sub_100102080(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = objc_alloc_init(NRPBProperty);
  sub_100101FCC(a1, v7);
  *a2 = 0;
  a2[1] = 0;
  if (PBReaderPlaceMark() && NRPBPropertyReadFrom())
  {
    PBReaderRecallMark();

    return 1;
  }

  else
  {

    result = 0;
    *a4 = 0;
  }

  return result;
}

void sub_100102304(os_log_t log)
{
  v1 = 136446210;
  v2 = "[NRRestoreFromBackupTracker refresh]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}s: Pref sync failed.", &v1, 0xCu);
}

void sub_100102388(void *a1, NSObject *a2)
{
  v4 = +[NRDataFilePaths _pathToNanoRegistryUnpairTriggerFileDirectory];
  v5 = [a1 nr_safeDescription];
  v6 = 138543618;
  v7 = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Deleting unpair trigger directory at %{public}@ error %{public}@", &v6, 0x16u);
}

BOOL sub_1001024C8(_BOOL8 result)
{
  if (result)
  {
    return *(result + 16) != 0;
  }

  return result;
}

uint64_t sub_1001024E4(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 68) |= 1u;
    *(result + 52) = a2;
  }

  return result;
}

uint64_t sub_10010250C(uint64_t result)
{
  if (result)
  {
    return *(result + 68) & 1;
  }

  return result;
}

uint64_t sub_100102524(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 68) |= 2u;
    *(result + 64) = a2;
  }

  return result;
}

uint64_t sub_10010254C(uint64_t result)
{
  if (result)
  {
    return (*(result + 68) >> 1) & 1;
  }

  return result;
}

void sub_100102564(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_100074FC8(a1, a2, 8);
  }
}

void sub_100102578(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_100074FC8(a1, a2, 40);
  }
}

void sub_10010258C(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_100074FC8(a1, a2, 56);
  }
}

void sub_1001025A0(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_100074FC8(a1, a2, 24);
  }
}

void sub_1001025B4(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_100074FC8(a1, a2, 16);
  }
}

void sub_1001025C8(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_100074FC8(a1, a2, 32);
  }
}

uint64_t sub_1001025DC(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

uint64_t sub_1001025F0(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 48) = a2;
  }

  return result;
}

uint64_t sub_100102604(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t sub_100102618(uint64_t result)
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

uint64_t sub_10010262C(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t sub_100102640(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t sub_100102654(uint64_t result)
{
  if (result)
  {
    return *(result + 52);
  }

  return result;
}

uint64_t sub_100102668(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 64);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_10010269C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Can't update token %@, == NOTIFY_TOKEN_INVALID", &v2, 0xCu);
}

void sub_100102750(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

double sub_100102768(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 8);
  }

  else
  {
    return 0.0;
  }
}

uint64_t sub_100102784(uint64_t result, double a2)
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

void sub_100102798(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "EPCharacteristicReader[%p]: CoreBluetooth CBPeripheralDelegate peripheral:didDiscoverCharacteristicsForService Not able to discover characteristic on any discovered services", &v2, 0xCu);
}

void sub_10010291C(uint64_t a1, NSObject *a2)
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Invalid local property overriding specification, got %@ with value %@", &v6, 0x16u);
}

void sub_100102B70(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_10001BAA0(&_mh_execute_header, a2, a3, "Getter %@ threw %@. This is *SUPER-BAD*", *v3, *&v3[8], *&v3[16]);
}

void sub_100102D98(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to retrieve ECG algorithm version with error: %@", &v2, 0xCu);
}

void sub_100102E10(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

uint64_t sub_100102E28(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

void sub_100102E88(os_log_t log)
{
  v1 = 136315138;
  v2 = "[NRExtensiblePair advertiseAndPairWithAdvertisedName:andPairingMode:withGetStartedBlock:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Invalidating IDS channels", &v1, 0xCu);
}

void sub_100102F0C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [*(a1 + 32) uuid];
  v6 = [v5 UUIDString];
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "BT Characteristic write failed to %@ with error %@", &v7, 0x16u);
}

void sub_100103238(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v9 = [a2 context];
  sub_1000CA1CC(&_mh_execute_header, v3, v4, "(%@): Message %@ dropped because it has an invalid sender", v5, v6, v7, v8, 2u);
}

void sub_100103320(void *a1)
{
  v1 = [a1 nr_safeDescription];
  sub_1000CA1CC(&_mh_execute_header, v2, v3, "IDS error sending request: %{public}@ %{public}@", v4, v5, v6, v7, 2u);
}

void sub_1001033D4()
{
  sub_1000CAA70();
  sub_1000CAA58(v1, v2, v3, 5.8382e-34);
  sub_1000CAA80(&_mh_execute_header, "Failure saving migration routing slip file %{public}@: writeToFile returned NO %{public}@", v4, v5);
}

void sub_100103418(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failure saving migration routing slip file %{public}@: Archiver returned nil", &v2, 0xCu);
}

void sub_100103490()
{
  sub_1000CAA70();
  sub_1000CAA58(v1, v2, v3, 5.8382e-34);
  sub_1000CAA80(&_mh_execute_header, "Failure saving migration routing slip file %{public}@: Archiver threw exception %{public}@.", v4, v5);
}

void sub_1001034D4()
{
  sub_1000CAA70();
  v2 = v1;
  sub_1000CAA58(v1, v3, v4, 5.8382e-34);
  sub_1000CAA80(&_mh_execute_header, "Failure loading migration routing slip file %{public}@: Unarchiver threw exception %{public}@.", v5, v6);
}

void sub_100103524(void *a1, NSObject *a2)
{
  v4 = +[NRDataFilePaths pathToNanoRegistryMigrationRoutingSlip];
  v5 = [a1 nr_safeDescription];
  v6 = 138543618;
  v7 = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failure removing migration routing slip file %{public}@: Error %{public}@.", &v6, 0x16u);
}

void sub_1001035F0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "EPScalablePipeManagerManager: CoreBluetooth CBScalablePipeManager didRegisterEndpoint %@ error %@", &v3, 0x16u);
}

uint64_t sub_1001036D0(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

void sub_1001036E4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "************ Resource manager %@ reported an error %@", &v7, 0x16u);
}

void sub_100103804(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to add notification request with error: %@", &v2, 0xCu);
}

void sub_10010387C(os_log_t log)
{
  v1 = 138412546;
  v2 = NRPairedDeviceRegistryLaunchedByNanoRegistryD;
  v3 = 2112;
  v4 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to created a formatted message for launching URL with launchedBy %@; error = %@", &v1, 0x16u);
}

void sub_100103910(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "openApplication:withOptions:completion: finished with error = %@", &v2, 0xCu);
}

void sub_100103988(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error opening tap-to-radar: %@", &v4, 0xCu);
}

void sub_100103A9C(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "EPCharacteristicWriter[%p]: No services in list at EPCharacteristicWriterStateDiscoverNextCharacteristics", &v2, 0xCu);
}

void sub_100103B14(uint64_t a1, NSObject *a2)
{
  v4 = [*(a1 + 32) UUIDString];
  v5 = 134218242;
  v6 = a1;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "EPCharacteristicWriter[%p]: Did NOT find service %@", &v5, 0x16u);
}

void sub_100103C44(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

uint64_t sub_100103C5C(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t sub_100103C70(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 24) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

void sub_100103C98(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

uint64_t sub_100103CB0(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t sub_100103CC4(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t sub_100103CD8(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 20) |= 1u;
    *(result + 16) = a2;
  }

  return result;
}

void sub_100103D00(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

void sub_100103D5C(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16) == -1)
    {
      v1 = *(a1 + 8);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100104038;
      handler[3] = &unk_1001759E8;
      handler[4] = a1;
      v2 = notify_register_dispatch("com.apple.security.view-change.DevicePairing", (a1 + 16), v1, handler);
      if (v2)
      {
        v3 = v2;
        v4 = nr_daemon_log();
        v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

        if (v5)
        {
          v6 = nr_daemon_log();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            v9 = v3;
            _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to register for NanoRegistry View Hint notification: %ld", buf, 0xCu);
          }
        }
      }
    }
  }
}

void sub_100103EA8(void *a1)
{
  if (a1)
  {
    v3 = [a1 _retrieveWatchesStagedForTransferFromKeychain];
    v4 = nr_daemon_log();
    v5 = sub_1000DF5B8(v4);

    if (v5)
    {
      v6 = nr_daemon_log();
      if (sub_1000DF5B8(v6))
      {
        v9 = 138412290;
        v10 = v3;
        sub_1000DF5E8(&_mh_execute_header, v7, v8, "%@", &v9);
      }
    }

    if ([v3 count])
    {
      sub_100104990(a1, v3);
    }
  }
}

id *sub_100103FE8(id *a1)
{
  if (a1)
  {
    a1 = [a1[3] serviceFromClass:objc_opt_class()];
    v1 = vars8;
  }

  return a1;
}

void sub_100104038(uint64_t a1)
{
  v3 = nr_daemon_log();
  v4 = sub_1000DF604(v3);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (sub_1000DF604(v5))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "There's some changes to NanoRegistry View Hint!", v6, 2u);
    }
  }

  sub_100103EA8(*(a1 + 32));
}

void sub_100104194(uint64_t a1, void *a2, void *a3, NSObject *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = nr_daemon_log();
    v11 = sub_1000DF5B8(v10);

    if (v11)
    {
      v12 = nr_daemon_log();
      if (sub_1000DF5B8(v12))
      {
        v13 = [v7 pairingID];
        v14 = [v13 UUIDString];
        *buf = 138543618;
        v37 = v14;
        v38 = 2114;
        v39 = v8;
        _os_log_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEFAULT, "Staging alternate account device with pairing ID %{public}@, altAccountIdentifier %{public}@", buf, 0x16u);
      }
    }

    v15 = *(a1 + 24);
    v33 = [v15 serviceFromClass:objc_opt_class()];
    v16 = nr_daemon_log();
    v17 = sub_1000DF5B8(v16);

    if (v17)
    {
      v18 = nr_daemon_log();
      if (sub_1000DF5B8(v18))
      {
        *buf = 138412290;
        v37 = v8;
        sub_1000DF5E8(&_mh_execute_header, v19, v20, "Sending Phone side information for Watch staging to %@", buf);
      }
    }

    v21 = v9;
    v22 = +[NRSystemProperties sharedInstance];
    v23 = [v22 serialNumber];
    v24 = [v7 objectForKeyedSubscript:NRDevicePropertyAdvertisedName];
    v25 = [v24 value];

    v26 = +[NRLocalPropertyMonitor sharedInstance];
    v27 = [v26 properties];
    v28 = [v27 objectForKeyedSubscript:NRDevicePropertyName];

    v32 = v7;
    v29 = [v7 objectForKeyedSubscript:NRDevicePropertyWatchBuddyStage];
    v30 = [v29 value];

    v31 = objc_opt_new();
    sub_1001025F0(v31, 2);
    sub_100102564(v31, v25);
    sub_1001025C8(v31, v28);
    sub_100102578(v31, v23);
    sub_1001025B4(v31, v8);
    if (v30)
    {
      sub_1001024E4(v31, [v30 unsignedIntValue]);
    }

    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000DE018;
    v34[3] = &unk_100175C68;
    v35 = v21;
    [v33 sendWatchTransferRequestToDestination:v8 withWatchTransferStagingRequest:v31 withSentBlock:v34];

    v9 = v21;
    v7 = v32;
  }
}

void sub_1001044FC(uint64_t a1, void *a2, NSObject *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v46 = a4;
  v12 = a5;
  v13 = a6;
  if (!a1)
  {
    goto LABEL_21;
  }

  v44 = a3;
  v14 = nr_daemon_log();
  v15 = sub_1000DF604(v14);

  if (v15)
  {
    v16 = nr_daemon_log();
    if (sub_1000DF604(v16))
    {
      v17 = [v11 pairingID];
      v18 = [v17 UUIDString];
      *buf = 138543618;
      v48 = v18;
      v49 = 2112;
      v50 = v12;
      _os_log_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEFAULT, "Staging device with pairing ID %{public}@ (serial number %@)", buf, 0x16u);
    }
  }

  v43 = v13;
  v42 = +[NRSystemProperties sharedInstance];
  v19 = [v42 serialNumber];
  v20 = [v11 objectForKeyedSubscript:NRDevicePropertyAdvertisedName];
  v21 = [v20 value];

  v22 = [v11 objectForKeyedSubscript:_NRDevicePropertyNetworkRelayIdentifier];
  v23 = [v22 value];

  v41 = v23;
  v24 = [v23 UUIDString];
  v25 = [v11 isAltAccount];
  v40 = +[NRLocalPropertyMonitor sharedInstance];
  v26 = [v40 properties];
  v27 = [v26 objectForKeyedSubscript:NRDevicePropertyName];

  v28 = [v11 objectForKeyedSubscript:NRDevicePropertyWatchBuddyStage];
  v29 = [v28 value];

  v30 = objc_opt_new();
  sub_1001025F0(v30, 1);
  sub_100102564(v30, v21);
  v39 = v27;
  sub_1001025C8(v30, v27);
  sub_100102578(v30, v19);
  sub_10010258C(v30, v24);
  sub_1001025A0(v30, v44);

  if (v25)
  {
    sub_100102524(v30, 1);
    sub_1001025B4(v30, v46);
  }

  if (v29)
  {
    sub_1001024E4(v30, [v29 unsignedIntValue]);
  }

  v31 = [v30 data];
  v45 = v12;
  v32 = [EPKeychain storeWatchTransferData:v31 watchIdentifier:v12];

  v33 = nr_daemon_log();
  v34 = v33;
  if (v32)
  {
    v35 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);

    v13 = v43;
    if (v35)
    {
      v36 = nr_daemon_log();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
LABEL_17:

        goto LABEL_18;
      }

      v37 = [v41 UUIDString];
      sub_1000DF5D0();
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Successfully stored Watch Transfer Staging Request for a Watch with advertised name %@, Phone side info: nrUUID=%@", buf, 0x16u);
LABEL_14:

      goto LABEL_17;
    }
  }

  else
  {
    v38 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);

    v13 = v43;
    if (v38)
    {
      v36 = nr_daemon_log();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v37 = [v41 UUIDString];
      sub_1000DF5D0();
      _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Failed to store Watch Transfer Staging Request for a Watch with advertised name %@, Phone side info: nrUUID=%@", buf, 0x16u);
      goto LABEL_14;
    }
  }

LABEL_18:
  if (v13)
  {
    v13[2](v13, 0);
  }

  v12 = v45;
LABEL_21:
}

void sub_100104990(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = nr_daemon_log();
    v6 = sub_1000DF5B8(v5);

    if (v6)
    {
      v7 = nr_daemon_log();
      if (sub_1000DF5B8(v7))
      {
        v14 = 136315138;
        v15 = "[WatchTransferManager _createLocalNRDevicesForStagedWatches:]";
        sub_1000DF5E8(&_mh_execute_header, v8, v9, "%s", &v14);
      }
    }

    v10 = sub_100103FE8(a1);
    sub_100021C84();
    v11[1] = 3221225472;
    v11[2] = sub_1000DE4AC;
    v11[3] = &unk_100179250;
    v12 = v4;
    v13 = a1;
    [v10 grabRegistryWithWriteBlockAsync:v11];
  }
}

id sub_100104AB4(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = sub_100104D7C(a1, a2);
    v3 = +[NSFileManager defaultManager];
    v11 = 0;
    v4 = [v3 createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:&v11];
    v5 = v11;

    if (v4)
    {
      v6 = v2;
    }

    else
    {
      v7 = nr_daemon_log();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

      if (v8)
      {
        v9 = nr_daemon_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v13 = v2;
          v14 = 2112;
          v15 = v5;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to create directory %@ error %@", buf, 0x16u);
        }
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_100104D7C(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = a2;
    v3 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
    v4 = [v3 objectAtIndex:0];
    v5 = [v4 stringByAppendingPathComponent:@"DeviceRegistry"];

    v6 = [v2 UUIDString];

    v7 = [v5 stringByAppendingPathComponent:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_100104E80(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to set properties for graduation transfer, required properties not present", buf, 2u);
}

void sub_100104EC0(void *a1, NSObject *a2)
{
  v3 = [a1 pairingID];
  v4 = [v3 UUIDString];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to unstage device with pairing ID %{public}@ (can't find serial)", &v5, 0xCu);
}

void sub_100104F84()
{
  sub_100017E5C();
  sub_10004EAD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100105028(uint64_t *a1)
{
  v6 = *a1;
  sub_10004EAD0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1001052DC(uint64_t a1)
{
  v1 = [NSNumber numberWithInt:a1];
  sub_100007728();
  sub_100094298(&_mh_execute_header, v2, v3, "EPKey: encryptPayloadRaw:withSalt:key: Could not encrypt payload (%{public}@)", v4, v5, v6, v7, v8);
}

void sub_10010543C(uint64_t a1)
{
  v1 = [NSNumber numberWithInt:a1];
  sub_100007728();
  sub_100094298(&_mh_execute_header, v2, v3, "EPKey: derivedKeyFrom Failed to create key (%{public}@)", v4, v5, v6, v7, v8);
}

void sub_100105568()
{
  sub_100017E5C();
  sub_10004EAD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10010573C()
{
  sub_100017E5C();
  sub_10004EAD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001057E0()
{
  sub_100017E5C();
  sub_10004EAD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100105850()
{
  sub_100007728();
  sub_10004EAD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001058C0()
{
  sub_100017E5C();
  sub_10004EAD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100105930(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_100074FC8(a1, a2, 24);
  }
}

void sub_100105944(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_100074FC8(a1, a2, 8);
  }
}

uint64_t sub_100105958(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t sub_10010596C(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t sub_100105980(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t sub_100105994(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 32);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_1001059B4()
{
  v0 = objc_opt_class();
  v6 = NSStringFromClass(v0);
  sub_10000D380();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100105A48()
{
  v0 = objc_opt_class();
  v6 = NSStringFromClass(v0);
  sub_10000D380();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100105ADC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [a2 nr_safeDescription];
  sub_100059F08();
  sub_10000D380();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x16u);
}

void sub_100105B90(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [a2 nr_safeDescription];
  sub_100059F08();
  sub_10000D380();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x16u);
}

void sub_100105C6C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to send system version message error: %@", &v2, 0xCu);
}

void sub_100105CF8(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [*(a1 + 32) UUIDString];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "IDSLocalPairingForgetPairedDevice %@ failed with %@", &v6, 0x16u);
}

void sub_100105E34()
{
  sub_10004EB20();
  sub_10004EAD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100105E70()
{
  sub_10004EB20();
  sub_10004EAD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100105EAC()
{
  sub_10004EB20();
  sub_10004EAD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100105EE8()
{
  sub_10004EB20();
  sub_10004EAD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100105F98()
{
  sub_10004EB20();
  sub_10004EAD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100105FD4()
{
  sub_10004EB20();
  sub_10004EAD0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t sub_100106084(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

void sub_1001060AC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

uint64_t sub_1001060C4(uint64_t result)
{
  if (result)
  {
    return *(result + 28);
  }

  return result;
}

uint64_t sub_1001060D8(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 28) = a2;
  }

  return result;
}

double sub_1001060EC(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 8);
  }

  else
  {
    return 0.0;
  }
}

uint64_t sub_100106108(uint64_t result, double a2)
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

uint64_t sub_10010611C(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t sub_100106130(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 24) = a2;
  }

  return result;
}

void sub_100106144(uint64_t a1)
{
  if (a1)
  {
    v3 = nr_daemon_log();
    v4 = sub_1000DF604(v3);

    if (v4)
    {
      v5 = nr_daemon_log();
      if (sub_1000DF604(v5))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "NRKeychainSyncStatusManager: Polling keychain sync status...", buf, 2u);
      }
    }

    dispatch_assert_queue_V2(*(a1 + 24));
    v6 = +[CDPContext contextForPrimaryAccount];
    if (v6)
    {
      v10 = [[CDPStateController alloc] initWithContext:v6];
      v20 = 0;
      v11 = [v10 isManateeAvailable:&v20];
      v12 = v20;
      if (v12)
      {
        v13 = nr_daemon_log();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

        v11 = 0;
        if (v14)
        {
          v15 = nr_daemon_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v22 = v12;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "NRKeychainSyncStatusManager: error encountered querying isManateeAvailable: %@", buf, 0xCu);
          }

          v11 = 0;
        }
      }

      v16 = nr_daemon_log();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

      if (v17)
      {
        v18 = nr_daemon_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = "DISABLED";
          if (v11)
          {
            v19 = "ENABLED";
          }

          *buf = 136315138;
          v22 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "NRKeychainSyncStatusManager: Keychain sync status poll done- keychain sync is %s", buf, 0xCu);
        }
      }

      sub_100106534(a1, v11);
    }

    else
    {
      v7 = nr_daemon_log();
      v8 = sub_1000DF5B8(v7);

      if (v8)
      {
        v9 = nr_daemon_log();
        if (sub_1000DF5B8(v9))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "NRKeychainSyncStatusManager: No CDPContext for primary account, assume keychain off", buf, 2u);
        }
      }

      sub_100106534(a1, 0);
    }
  }
}

void sub_1001063DC(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    if (*(a1 + 56) == 1)
    {
      *(a1 + 57) = 1;
    }

    else
    {
      [*(a1 + 48) invalidate];
      v2 = *(a1 + 32);
      sub_1000F4E00();
      v6 = 3221225472;
      v7 = sub_1001066FC;
      v8 = &unk_100175660;
      v9 = a1;
      v4 = [v3 timerWithIdentifier:@"NRKeychainSyncStatusManager" delay:1 gracePeriod:10.0 waking:0.0 handlerQueue:? handlerBlock:?];
      v5 = *(a1 + 48);
      *(a1 + 48) = v4;
    }
  }
}

uint64_t sub_100106498(uint64_t result)
{
  if (result)
  {
    v2 = result;
    v3 = nr_daemon_log();
    v4 = sub_1000DF604(v3);

    if (v4)
    {
      v5 = nr_daemon_log();
      if (sub_1000DF604(v5))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "NRKeychainSyncStatusManager: Unregistering for Keychain Sync status change notification.", v6, 2u);
      }
    }

    result = notify_cancel(*(v2 + 40));
    *(v2 + 40) = -1;
  }

  return result;
}

void sub_100106534(uint64_t a1, char a2)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000F4BC0;
    v3[3] = &unk_100176198;
    v3[4] = a1;
    v4 = a2;
    dispatch_async(v2, v3);
  }
}

void sub_1001065B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_1001063DC(WeakRetained);
}

void sub_1001065F4(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 48);
    *(a1 + 48) = 0;

    *(a1 + 56) = 1;
    v3 = *(a1 + 24);
    sub_1000F4E00();
    v6 = 3221225472;
    v7 = sub_100106674;
    v8 = &unk_100175660;
    v9 = a1;
    dispatch_async(v4, block);
  }
}

void sub_100106674(uint64_t a1)
{
  sub_100106144(*(a1 + 32));
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F4B98;
  block[3] = &unk_100175660;
  block[4] = v2;
  dispatch_sync(v3, block);
}

void sub_100106704(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = nr_daemon_log();
    v6 = sub_1000DF5B8(v5);

    if (v6)
    {
      v7 = nr_daemon_log();
      if (sub_1000DF5B8(v7))
      {
        v8 = "DISABLED";
        if (a2)
        {
          v8 = "ENABLED";
        }

        *buf = 136315138;
        v20 = v8;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "NRKeychainSyncStatusManager: Notifying clients that keychain sync is %s", buf, 0xCu);
      }
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = [*(a1 + 8) copy];
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v14 + 1) + 8 * v13) keychainSyncStatusDidChange:a2];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

void sub_1001068BC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to create directory %@ error %@", &v3, 0x16u);
}

void sub_100106958(id *a1, NSObject *a2)
{
  v4 = *a1;
  v5 = v4[3];
  v6 = [v4 currentEntry];
  v7 = [v6 shortDescription];
  v8 = [*a1 currentEntry];
  v9 = [v8 errors];
  v10 = 138543874;
  v11 = v5;
  v12 = 2114;
  v13 = v7;
  v14 = 2114;
  v15 = v9;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "EPRoutingSlip[%{public}@]: Errors in transaction %{public}@: %{public}@", &v10, 0x20u);
}