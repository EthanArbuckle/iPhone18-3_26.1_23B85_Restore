void sub_100085770(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v3 = [WeakRetained state] == 255;
    WeakRetained = v10;
    if (!v3 && **(a1 + 48) == 1)
    {
      sub_100080EB4(v10, @"%@ reconnection timed out", v4, v5, v6, v7, v8, v9, *(a1 + 32));
      WeakRetained = v10;
    }
  }
}

uint64_t sub_1000857F4(uint64_t result, int a2)
{
  if (result)
  {
    switch(a2)
    {
      case 1:
        v2 = &OBJC_IVAR___NRLinkBluetooth__ikeSessionClassA;
        goto LABEL_8;
      case 4:
        v2 = &OBJC_IVAR___NRLinkBluetooth__ikeSessionClassD;
        goto LABEL_8;
      case 3:
        v2 = &OBJC_IVAR___NRLinkBluetooth__ikeSessionClassC;
LABEL_8:
        result += *v2;
        return result;
    }

    v3 = sub_10007CF34();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v5 = sub_10007CF34();
      String = NRDataProtectionClassCreateString();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v6 = *__error();
    v7 = _os_log_pack_fill();
    v8 = NRDataProtectionClassCreateString();
    *v7 = 136446466;
    *(v7 + 4) = "[NRLinkBluetooth ikeSessionPointerForDataProtectionClass:]";
    *(v7 + 12) = 2112;
    *(v7 + 14) = v8;
    sub_10007CF34();
    v9 = _NRLogAbortWithPack();
    return sub_10008597C(v9);
  }

  return result;
}

void sub_10008597C(void *a1, int a2)
{
  String = NRDataProtectionClassCreateString();
  if (a2 == 1)
  {
    v5 = *(a1 + 1327);
    if (!v5)
    {
      v28 = sub_10007CF34();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
LABEL_23:
        v30 = sub_10007CF34();
        _NRLogWithArgs();

        v23 = 0;
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    goto LABEL_11;
  }

  if (a2 == 3)
  {
    v5 = *(a1 + 1319);
    if (v5)
    {
      goto LABEL_11;
    }

    v8 = sub_10007CF34();
    v9 = _NRLogIsLevelEnabled();

    if (v9)
    {
      goto LABEL_23;
    }

LABEL_20:
    v23 = 0;
    goto LABEL_21;
  }

  if (a2 != 4)
  {
    if (qword_100229088 != -1)
    {
      dispatch_once(&qword_100229088, &stru_1001FB1C0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229088 != -1)
      {
        dispatch_once(&qword_100229088, &stru_1001FB1C0);
      }

      _NRLogWithArgs();
    }

    goto LABEL_20;
  }

  v5 = *(a1 + 1311);
  if (!v5)
  {
    v6 = sub_10007CF34();
    v7 = _NRLogIsLevelEnabled();

    if (v7)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

LABEL_11:
  v10 = v5;
  [v10 setClientQueue:a1[1]];
  objc_initWeak(location, a1);
  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_10008604C;
  v59[3] = &unk_1001FAFE8;
  objc_copyWeak(&v63, location);
  v64 = a2;
  v11 = String;
  v60 = v11;
  v12 = v10;
  v61 = v12;
  v62 = a1;
  [v12 setStateUpdateBlock:v59];
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_100086B88;
  v54[3] = &unk_1001FB838;
  objc_copyWeak(&v57, location);
  v13 = v11;
  v55 = v13;
  v14 = v12;
  v56 = v14;
  v58 = a2;
  [v14 setChildStateUpdateBlock:v54];
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100086D7C;
  v50[3] = &unk_1001FB860;
  objc_copyWeak(&v53, location);
  v15 = v13;
  v51 = v15;
  v16 = v14;
  v52 = v16;
  [v16 setConfigurationUpdateBlock:v50];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100086E5C;
  v46[3] = &unk_1001FB888;
  objc_copyWeak(&v49, location);
  v17 = v15;
  v47 = v17;
  v18 = v16;
  v48 = v18;
  [v18 setTrafficSelectorUpdateBlock:v46];
  v32 = String;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100086F5C;
  v42[3] = &unk_1001FB8B0;
  objc_copyWeak(&v45, location);
  v19 = v17;
  v43 = v19;
  v20 = v18;
  v44 = v20;
  [v20 setAdditionalAddressesUpdateBlock:v42];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10008703C;
  v38[3] = &unk_1001FB8D8;
  objc_copyWeak(&v41, location);
  v21 = v19;
  v39 = v21;
  v22 = v20;
  v40 = v22;
  [v22 setShortDPDEventBlock:v38];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100087110;
  v33[3] = &unk_1001FB010;
  objc_copyWeak(&v36, location);
  v34 = v21;
  v23 = v22;
  v35 = v23;
  v37 = a2;
  [v23 setPrivateNotifyStatusEvent:v33];
  v24 = a1[4];
  v25 = _NRCopyLogObjectForNRUUID();
  LOBYTE(v22) = _NRLogIsLevelEnabled();

  if (v22)
  {
    v26 = a1[4];
    v27 = _NRCopyLogObjectForNRUUID();
    v31 = [a1 copyDescription];
    _NRLogWithArgs();
  }

  objc_destroyWeak(&v36);
  objc_destroyWeak(&v41);

  objc_destroyWeak(&v45);
  objc_destroyWeak(&v49);

  objc_destroyWeak(&v53);
  objc_destroyWeak(&v57);

  objc_destroyWeak(&v63);
  objc_destroyWeak(location);

  String = v32;
LABEL_21:
}

void sub_100085FB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 + 48));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v5 + 48));
  objc_destroyWeak((v4 + 48));
  objc_destroyWeak((v6 - 200));
  objc_destroyWeak((v6 - 128));
  objc_destroyWeak((v6 - 112));
  _Unwind_Resume(a1);
}

void sub_10008604C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained linkDelegate];
    if (v5)
    {
      v9 = *(a1 + 64);
      switch(v9)
      {
        case 1:
          sub_10008ACA0(v7);
          break;
        case 3:
          [v7 setIkeClassCEstablished:0];
          v24 = nr_absolute_time();
          v25 = *(v7 + 2007);
          if (v25)
          {
            *(v25 + 48) = v24;
          }

          break;
        case 4:
          [v7 setIkeClassDEstablished:0];
          v10 = nr_absolute_time();
          v11 = *(v7 + 2007);
          if (v11)
          {
            *(v11 + 64) = v10;
          }

          break;
      }

      v26 = *(a1 + 32);
      v27 = *(a1 + 40);
      SessionStateString = NEIKEv2CreateSessionStateString();
      [v7 reportEvent:3018 detailsFormat:@"%@ session %@ got IKE error %@ with state %@", v26, v27, v5, SessionStateString];

      [v7 processIKEDisconnection:*(a1 + 64) error:v5];
      if ([v7 state] == 255)
      {
        goto LABEL_38;
      }

      v29 = v5;
      if ([v29 code] == 24)
      {
        v30 = NEIKEv2ProtocolErrorDomain;
        v31 = [v29 domain];
        LOBYTE(v30) = [v31 isEqualToString:v30];

        if (v30)
        {
          goto LABEL_33;
        }
      }

      else
      {
      }

      v32 = v29;
      if ([v32 code] == 8)
      {
        v33 = NEIKEv2ErrorDomain;
        v34 = [v32 domain];
        LODWORD(v33) = [v34 isEqualToString:v33];

        if (v33)
        {
LABEL_33:
          v35 = 1;
LABEL_36:
          v36 = *(a1 + 64);
          v37 = v7;
LABEL_37:
          sub_100084C80(v37, v36, v35, 1);
          goto LABEL_38;
        }
      }

      else
      {
      }

      v35 = 0;
      goto LABEL_36;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = NEIKEv2CreateSessionStateString();
    [v7 reportEvent:3009 detailsFormat:@"%@ session %@ changed state to %@", v12, v13, v14];

    if (a2 > 2)
    {
      if (a2 == 3)
      {
        v48 = *(a1 + 64);
        switch(v48)
        {
          case 1:
            sub_10008ACA0(v7);
            break;
          case 3:
            [v7 setIkeClassCEstablished:0];
            v75 = nr_absolute_time();
            v76 = *(v7 + 2007);
            if (v76)
            {
              *(v76 + 48) = v75;
            }

            break;
          case 4:
            [v7 setIkeClassDEstablished:0];
            v49 = nr_absolute_time();
            v50 = *(v7 + 2007);
            if (v50)
            {
              *(v50 + 64) = v49;
            }

            break;
        }

        [v7 reportEvent:3018 detailsFormat:@"%@ session %@ got IKE Disconnected state with no error", *(a1 + 32), *(a1 + 40)];
        v36 = *(a1 + 64);
        v37 = v7;
        v35 = 0;
        goto LABEL_37;
      }

      if (a2 != 4)
      {
        goto LABEL_40;
      }

      [v7 cancelWithReason:{@"%@ session %@ got unexpected MOBIKE state", *(a1 + 32), *(a1 + 40)}];
    }

    else
    {
      if (a2 != 1)
      {
        if (a2 == 2)
        {
          v15 = [v7 nrUUID];
          sub_100171FE0(NRDLocalDevice, v15);

          v16 = *(a1 + 64);
          if (v16 == 4)
          {
            [v7 setIkeClassDEstablished:1];
            v51 = nr_absolute_time();
            v52 = *(v7 + 2007);
            if (v52)
            {
              *(v52 + 64) = v51;
            }

            if (*(v7 + 278) == 1)
            {
              v53 = *(v7 + 32);
              v54 = _NRCopyLogObjectForNRUUID();
              IsLevelEnabled = _NRLogIsLevelEnabled();

              if (IsLevelEnabled)
              {
                v56 = *(v7 + 32);
                v57 = _NRCopyLogObjectForNRUUID();
                v93 = [v7 copyDescription];
                v94 = *(a1 + 32);
                v92 = 8903;
                v90 = "";
                v91 = "[NRLinkBluetooth setupIKECallbacks:]_block_invoke";
                _NRLogWithArgs();
              }

              *(v7 + 278) = 0;
              if ((*(v7 + 279) & 1) == 0)
              {
                [v7 setPowerAssertionState:0];
              }
            }

            v58 = sub_100180AC4();
            if (!sub_10018165C(v58) && (*(v7 + 277) & 1) == 0)
            {
              v59 = *(a1 + 48);
              if (v59)
              {
                *(v59 + 277) = 1;
              }

              objc_initWeak(location, v7);
              v98[0] = _NSConcreteStackBlock;
              v98[1] = 3221225472;
              v98[2] = sub_10008AF24;
              v98[3] = &unk_1001FC730;
              objc_copyWeak(&v99, location);
              sub_1001816DC(v58, v98);
              objc_destroyWeak(&v99);
              objc_destroyWeak(location);
            }
          }

          else if (v16 == 3)
          {
            [v7 setIkeClassCEstablished:1];
            v17 = nr_absolute_time();
            v18 = *(v7 + 2007);
            if (v18)
            {
              *(v18 + 48) = v17;
            }

            if (*(v7 + 279) == 1)
            {
              v19 = *(v7 + 32);
              v20 = _NRCopyLogObjectForNRUUID();
              v21 = _NRLogIsLevelEnabled();

              if (v21)
              {
                v22 = *(v7 + 32);
                v23 = _NRCopyLogObjectForNRUUID();
                v93 = [v7 copyDescription];
                v94 = *(a1 + 32);
                v92 = 8893;
                v90 = "";
                v91 = "[NRLinkBluetooth setupIKECallbacks:]_block_invoke";
                _NRLogWithArgs();
              }

              *(v7 + 279) = 0;
              if ((*(v7 + 278) & 1) == 0)
              {
                [v7 setPowerAssertionState:0];
              }
            }
          }

          v60 = *(v7 + 16);
          v61 = *(v7 + 32);
          v62 = _NRCopyLogObjectForNRUUID();
          v63 = _NRLogIsLevelEnabled();

          if (v60 > 6)
          {
            if (v60 == 7)
            {
              if (v63)
              {
                v81 = *(v7 + 32);
                v82 = _NRCopyLogObjectForNRUUID();
                v83 = [v7 copyDescription];
                v94 = *(a1 + 32);
                v96 = *(a1 + 40);
                v92 = 8953;
                v93 = v83;
                _NRLogWithArgs();
              }

              [v7 changeStateTo:8 detailsFormat:@"(%@ IKE %@ connected after received first notify)", *(a1 + 32), *(a1 + 40), v92, v93, v94, v96];
              [v8 linkIsReady:v7];
              [v7 checkProxyAgentWithForceUpdate:0];
              sub_1000891A4(v7);
              goto LABEL_91;
            }

            if (v60 == 8)
            {
              if (v63)
              {
                v67 = *(v7 + 32);
                v68 = _NRCopyLogObjectForNRUUID();
                v69 = [v7 copyDescription];
                v94 = *(a1 + 32);
                v96 = *(a1 + 40);
                v92 = 8964;
                v93 = v69;
                v90 = "";
                v91 = "[NRLinkBluetooth setupIKECallbacks:]_block_invoke";
                _NRLogWithArgs();
              }

              [v8 linkIsReady:{v7, v90, v91, v92, v93, v94, v96}];
              goto LABEL_91;
            }
          }

          else
          {
            if (v60 == 5)
            {
              if (v63)
              {
                v78 = *(v7 + 32);
                v79 = _NRCopyLogObjectForNRUUID();
                v80 = [v7 copyDescription];
                v94 = *(a1 + 32);
                v96 = *(a1 + 40);
                v92 = 8949;
                v93 = v80;
                v90 = "";
                v91 = "[NRLinkBluetooth setupIKECallbacks:]_block_invoke";
                _NRLogWithArgs();
              }

              [v7 changeStateTo:{6, v90, v91, v92, v93, v94, v96}];
              goto LABEL_91;
            }

            if (v60 == 6)
            {
              if (v63)
              {
                v64 = *(v7 + 32);
                v65 = _NRCopyLogObjectForNRUUID();
                v66 = [v7 copyDescription];
                v94 = *(a1 + 32);
                v96 = *(a1 + 40);
                v92 = 8962;
                v93 = v66;
                v90 = "";
                v91 = "[NRLinkBluetooth setupIKECallbacks:]_block_invoke";
LABEL_84:
                _NRLogWithArgs();

                goto LABEL_91;
              }

              goto LABEL_91;
            }
          }

          if (v63)
          {
            v77 = *(v7 + 32);
            v65 = _NRCopyLogObjectForNRUUID();
            v66 = [v7 copyDescription];
            v94 = *(a1 + 32);
            v96 = *(a1 + 40);
            v92 = 8967;
            v93 = v66;
            v90 = "";
            v91 = "[NRLinkBluetooth setupIKECallbacks:]_block_invoke";
            goto LABEL_84;
          }

LABEL_91:
          if ((*(v7 + 289) & 1) == 0)
          {
            v84 = sub_100083C40(v7, 0);
            v85 = sub_10008B0B4(v7);
            if (v85)
            {
              [v84 addObject:v85];
            }

            objc_initWeak(&from, v7);
            v86 = *(v7 + 1311);
            v87 = [v7 queue];
            location[0] = _NSConcreteStackBlock;
            location[1] = 3221225472;
            location[2] = sub_10008B294;
            location[3] = &unk_1001FC018;
            objc_copyWeak(&v101, &from);
            [v86 sendPrivateNotifies:v84 maxRetries:10 retryIntervalInMilliseconds:10000 callbackQueue:v87 callback:location];

            objc_destroyWeak(&v101);
            objc_destroyWeak(&from);
          }

          v88 = *(a1 + 64);
          v89 = [v7 nrUUID];
          sub_10016B190(NRDLocalDevice, v88, v89);

          goto LABEL_38;
        }

LABEL_40:
        v38 = *(a1 + 32);
        v39 = *(a1 + 40);
        v40 = NEIKEv2CreateSessionStateString();
        [v7 cancelWithReason:{@"%@ session %@ got bad IKE state %@", v38, v39, v40}];

        goto LABEL_38;
      }

      v41 = *(v7 + 16);
      v42 = *(v7 + 32);
      v43 = _NRCopyLogObjectForNRUUID();
      if (v41 == 5)
      {
        v70 = _NRLogIsLevelEnabled();

        if (!v70)
        {
          goto LABEL_38;
        }

LABEL_77:
        v72 = *(v7 + 32);
        v73 = _NRCopyLogObjectForNRUUID();
        v74 = [v7 copyDescription];
        v95 = *(a1 + 32);
        v97 = *(a1 + 40);
        _NRLogWithArgs();

        goto LABEL_38;
      }

      if (v41 == 4)
      {
        v44 = _NRLogIsLevelEnabled();

        if (v44)
        {
          v45 = *(v7 + 32);
          v46 = _NRCopyLogObjectForNRUUID();
          v47 = [v7 copyDescription];
          v94 = *(a1 + 32);
          v96 = *(a1 + 40);
          v92 = 8880;
          v93 = v47;
          v90 = "";
          v91 = "[NRLinkBluetooth setupIKECallbacks:]_block_invoke";
          _NRLogWithArgs();
        }

        [v7 changeStateTo:{5, v90, v91, v92, v93, v94, v96}];
        goto LABEL_38;
      }

      v71 = _NRLogIsLevelEnabled();

      if (v71)
      {
        goto LABEL_77;
      }
    }

LABEL_38:
  }
}

void sub_100086B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100086B88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v23 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (!v23)
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      if (a3 != 3)
      {
        SessionStateString = NEIKEv2CreateSessionStateString();
        [WeakRetained reportEvent:3009 detailsFormat:@"%@ session %@ child %u state update %@", v14, v15, a2, SessionStateString];

        goto LABEL_18;
      }

      [WeakRetained reportEvent:3018 detailsFormat:@"%@ session %@ got child %u Disconnected state with no error", v14, *(a1 + 40), a2];
      v16 = *(a1 + 56);
      v17 = WeakRetained;
      v18 = 0;
      goto LABEL_17;
    }

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = NEIKEv2CreateSessionStateString();
    [WeakRetained reportEvent:3018 detailsFormat:@"%@ session %@ got child %u state update %@ error %@", v8, v9, a2, v10, v23];

    [WeakRetained processIKEDisconnection:*(a1 + 56) error:v23];
    if ([WeakRetained state] == 255)
    {
      goto LABEL_18;
    }

    v11 = v23;
    if ([v11 code] == 24)
    {
      v12 = NEIKEv2ProtocolErrorDomain;
      v13 = [v11 domain];
      LOBYTE(v12) = [v13 isEqualToString:v12];

      if (v12)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    v19 = v11;
    if ([v19 code] == 8)
    {
      v20 = NEIKEv2ErrorDomain;
      v21 = [v19 domain];
      LODWORD(v20) = [v21 isEqualToString:v20];

      if (v20)
      {
LABEL_12:
        v18 = 1;
LABEL_16:
        v16 = *(a1 + 56);
        v17 = WeakRetained;
LABEL_17:
        sub_100084C80(v17, v16, v18, 1);
        goto LABEL_18;
      }
    }

    else
    {
    }

    v18 = 0;
    goto LABEL_16;
  }

LABEL_18:
}

void sub_100086D7C(uint64_t a1, void *a2)
{
  v13 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[4];
    v6 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = v4[4];
      v9 = _NRCopyLogObjectForNRUUID();
      v10 = [v4 copyDescription];
      v12 = *(a1 + 40);
      v11 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }
}

void sub_100086E5C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v17 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[4];
    v10 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v12 = v8[4];
      v13 = _NRCopyLogObjectForNRUUID();
      v14 = [v8 copyDescription];
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      _NRLogWithArgs();
    }
  }
}

void sub_100086F5C(uint64_t a1, void *a2)
{
  v13 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[4];
    v6 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = v4[4];
      v9 = _NRCopyLogObjectForNRUUID();
      v10 = [v4 copyDescription];
      v12 = *(a1 + 40);
      v11 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }
}

void sub_10008703C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v3 = WeakRetained[4];
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    WeakRetained = v11;
    if (IsLevelEnabled)
    {
      v6 = v11[4];
      v7 = _NRCopyLogObjectForNRUUID();
      v8 = [v11 copyDescription];
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      _NRLogWithArgs();

      WeakRetained = v11;
    }
  }
}

void sub_100087110(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = [v3 sortedArrayUsingComparator:&stru_1001FC4F0];
    v6 = WeakRetained[4];
    v7 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = WeakRetained[4];
      v10 = _NRCopyLogObjectForNRUUID();
      v11 = [WeakRetained copyDescription];
      v25 = *(a1 + 40);
      v26 = v5;
      v23 = v11;
      v24 = *(a1 + 32);
      v21 = "[NRLinkBluetooth setupIKECallbacks:]_block_invoke_9";
      v22 = 9087;
      v20 = "";
      _NRLogWithArgs();
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = v5;
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v28;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v27 + 1) + 8 * i);
          v18 = [v17 notifyStatus];
          v19 = [v17 notifyData];
          sub_100087300(WeakRetained, v18, v19, *(a1 + 56));
        }

        v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v14);
    }
  }
}

void sub_100087300(uint64_t a1, int a2, void *a3, int a4)
{
  v8 = a3;
  v9 = *(a1 + 16);
  v10 = *(a1 + 32);
  p_vtable = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (v9 == 255)
  {
    if (IsLevelEnabled)
    {
LABEL_11:
      v18 = *(a1 + 32);
      v19 = _NRCopyLogObjectForNRUUID();
      v20 = [a1 copyDescription];
      _NRLogWithArgs();
    }
  }

  else
  {
    if (IsLevelEnabled)
    {
      v13 = *(a1 + 32);
      v14 = _NRCopyLogObjectForNRUUID();
      p_vtable = [a1 copyDescription];
      v210 = [v8 length];
      _NRLogWithArgs();
    }

    if (a2 == 50901 && a4 == 4)
    {
      [a1 setSuspendWhenReady:1];
      goto LABEL_12;
    }

    if (a2 != 50000)
    {
LABEL_12:
      v21 = [a1 linkDelegate];
      v22 = *(a1 + 16);
      if ((v22 - 5) <= 1)
      {
        if (v22 == 6)
        {
          sub_1000891A4(a1);
          [a1 changeStateTo:8 details:@"(IKE received first notify after connected)"];
          [v21 linkIsReady:a1];
          [a1 checkProxyAgentWithForceUpdate:0];
        }

        else
        {
          [a1 changeStateTo:7];
        }
      }

      if (a2 <= 50500)
      {
        if (a2 <= 48606)
        {
          if (a2 > 48602)
          {
            if (a2 > 48604)
            {
              if (a2 == 48605)
              {
                location = 0;
                if ([v8 length] == 8)
                {
                  [v8 getBytes:&location length:8];
                  v87 = *(a1 + 32);
                  v88 = _NRCopyLogObjectForNRUUID();
                  v89 = _NRLogIsLevelEnabled();

                  if (v89)
                  {
                    v90 = *(a1 + 32);
                    v91 = _NRCopyLogObjectForNRUUID();
                    v198 = [a1 copyDescription];
                    _NRLogWithArgs();
                  }

                  v92 = location;
                  v93 = [a1 nrUUID];
                  sub_100171F80(NRDLocalDevice, v92, v93);
                }

                else
                {
                  v117 = sub_10007CF34();
                  v118 = _NRLogIsLevelEnabled();

                  if (v118)
                  {
                    v119 = sub_10007CF34();
                    [v8 length];
                    _NRLogWithArgs();
                  }
                }
              }

              else
              {
                LOBYTE(location) = 0;
                if ([v8 length] == 1)
                {
                  [v8 getBytes:&location length:1];
                  v67 = *(a1 + 32);
                  v68 = _NRCopyLogObjectForNRUUID();
                  v69 = _NRLogIsLevelEnabled();

                  if (v69)
                  {
                    v70 = *(a1 + 32);
                    v71 = _NRCopyLogObjectForNRUUID();
                    v196 = [a1 copyDescription];
                    _NRLogWithArgs();
                  }

                  v72 = location;
                  v73 = [a1 nrUUID];
                  sub_1001714EC(NRDLocalDevice, v72, v73);
                }
              }

              goto LABEL_175;
            }

            if (a2 == 48603)
            {
              v23 = [[NSString alloc] initWithData:v8 encoding:4];
              v82 = *(a1 + 32);
              v83 = _NRCopyLogObjectForNRUUID();
              if (v23)
              {
                v84 = _NRLogIsLevelEnabled();

                if (v84)
                {
                  v85 = *(a1 + 32);
                  v86 = _NRCopyLogObjectForNRUUID();
                  v197 = [a1 copyDescription];
                  _NRLogWithArgs();
                }

                sub_100089694(a1, v23);
                v29 = [a1 nrUUID];
                sub_1001716D4(NRDLocalDevice, v23, v29);
                goto LABEL_126;
              }

              v173 = _NRLogIsLevelEnabled();

              if (!v173)
              {
                goto LABEL_127;
              }
            }

            else
            {
              v23 = [[NSString alloc] initWithData:v8 encoding:4];
              v24 = *(a1 + 32);
              v25 = _NRCopyLogObjectForNRUUID();
              if (v23)
              {
                v26 = _NRLogIsLevelEnabled();

                if (v26)
                {
                  v27 = *(a1 + 32);
                  v28 = _NRCopyLogObjectForNRUUID();
                  v193 = [a1 copyDescription];
                  _NRLogWithArgs();
                }

                v29 = [a1 nrUUID];
                sub_1001718D8(NRDLocalDevice, v23, v29);
                goto LABEL_126;
              }

              v174 = _NRLogIsLevelEnabled();

              if (!v174)
              {
                goto LABEL_127;
              }
            }

            v175 = *(a1 + 32);
            v29 = _NRCopyLogObjectForNRUUID();
            v176 = [a1 copyDescription];
            _NRLogWithArgs();

LABEL_126:
LABEL_127:

            goto LABEL_175;
          }

          if (a2)
          {
            if (a2 != 48601)
            {
              if (a2 == 48602)
              {
                LOWORD(location) = 0;
                if ([v8 length] <= 1)
                {
                  [a1 cancelWithReason:{@"Private notify Terminus Version too short %@", v8, v210}];
                  goto LABEL_175;
                }

                [v8 getBytes:&location length:2];
                v4 = &OBJC_IVAR___BTPResolver__sdRefResolve;
                *(a1 + 309) = bswap32(location) >> 16;
                v46 = *(a1 + 32);
                v47 = _NRCopyLogObjectForNRUUID();
                v48 = _NRLogIsLevelEnabled();

                if (v48)
                {
                  v49 = *(a1 + 32);
                  v50 = _NRCopyLogObjectForNRUUID();
                  v195 = [a1 copyDescription];
                  v202 = *(a1 + 309);
                  _NRLogWithArgs();
                }

                p_vtable = NRSCDInterfaceConfig.vtable;
                v51 = sub_100163A30(NRDLocalDevice, *(a1 + 32));
                v52 = v51;
                if (v51)
                {
                  v53 = *(v51 + 16);
                  goto LABEL_57;
                }

LABEL_195:
                v53 = 0;
LABEL_57:
                v54 = p_vtable + 296;
                v55 = *(a1 + v4[607]);
                v56 = [a1 nrUUID];
                sub_100171304(v54, v55, v56);

                if (v52)
                {
                  v57 = *(v52 + 16);
                  if (v53 >= v57)
                  {
                    v58 = *(v52 + 16);
                  }

                  else
                  {
                    v58 = v53;
                  }

                  if (v53 <= v57)
                  {
                    LOWORD(v53) = *(v52 + 16);
                  }

                  v59 = v58 < 0x11;
                  if (a4 != 4)
                  {
                    goto LABEL_174;
                  }
                }

                else
                {
                  v59 = 1;
                  if (a4 != 4)
                  {
LABEL_174:

                    goto LABEL_175;
                  }
                }

                if (v53 <= 0x10u)
                {
                  v59 = 0;
                }

                if (v59)
                {
                  v60 = v52 ? *(v52 + 144) : 0;
                  v61 = v60;
                  v62 = [v61 proxyCapability] == 1;

                  if (v62)
                  {
                    sub_1000892A8(a1);
                  }
                }

                if (v52)
                {
                  v63 = *(v52 + 64);
                  if (v63)
                  {
                  }

                  else if (*(v52 + 16) >= 0x14u)
                  {
                    sub_1000894A8(a1);
                  }
                }

                goto LABEL_174;
              }

              goto LABEL_117;
            }

            if (([v8 isEqual:*(a1 + 431)] & 1) == 0)
            {
              [a1 cancelWithReason:{@"Received encrypted payload %@ does not match unencrypted %@", v8, *(a1 + 431)}];
              goto LABEL_175;
            }

            v94 = *(a1 + 32);
            v95 = _NRCopyLogObjectForNRUUID();
            v96 = _NRLogIsLevelEnabled();

            if (v96)
            {
LABEL_143:
              v132 = *(a1 + 32);
              v133 = _NRCopyLogObjectForNRUUID();
              v134 = [a1 copyDescription];
              _NRLogWithArgs();
            }

LABEL_175:

            goto LABEL_176;
          }

LABEL_90:
          v75 = *(a1 + 32);
          v76 = _NRCopyLogObjectForNRUUID();
          v77 = _NRLogIsLevelEnabled();

          if (v77)
          {
LABEL_91:
            v78 = *(a1 + 32);
            v79 = _NRCopyLogObjectForNRUUID();
            v80 = [a1 copyDescription];
            _NRLogWithArgs();

            goto LABEL_175;
          }

          goto LABEL_175;
        }

        v33 = (a2 - 50351);
        if (v33 <= 0x3E)
        {
          if (((1 << (a2 + 81)) & 0x701C000000000000) != 0)
          {
            goto LABEL_90;
          }

          if (a2 == 50351)
          {
            [a1 reportEvent:3401 details:@"Identity"];
            v111 = *(a1 + 32);
            v217[0] = _NSConcreteStackBlock;
            v217[1] = 3221225472;
            v217[2] = sub_100089C88;
            v217[3] = &unk_1001FC068;
            v217[4] = a1;
            sub_10016E894(NRDLocalDevice, v8, v111, v217);
            goto LABEL_175;
          }

          if (v33 == 1)
          {
            v34 = *(a1 + 32);
            v35 = _NRCopyLogObjectForNRUUID();
            v36 = _NRLogIsLevelEnabled();

            if (v36)
            {
              v37 = *(a1 + 32);
              v38 = _NRCopyLogObjectForNRUUID();
              v211 = [a1 copyDescription];
              _NRLogWithArgs();
            }

            sub_100089ED8(a1);
            goto LABEL_175;
          }
        }

        if (a2 == 48607)
        {
          v23 = [[NSString alloc] initWithData:v8 encoding:4];
          v112 = *(a1 + 32);
          v113 = _NRCopyLogObjectForNRUUID();
          if (v23)
          {
            v114 = _NRLogIsLevelEnabled();

            if (v114)
            {
              v115 = *(a1 + 32);
              v116 = _NRCopyLogObjectForNRUUID();
              v199 = [a1 copyDescription];
              LogString = _NRKeyCreateLogString();
              _NRLogWithArgs();
            }

            v29 = [a1 nrUUID];
            sub_1001756C0(NRDLocalDevice, v23, v29);
          }

          else
          {
            v177 = _NRLogIsLevelEnabled();

            if (!v177)
            {
              goto LABEL_127;
            }

            v178 = *(a1 + 32);
            v29 = _NRCopyLogObjectForNRUUID();
            v201 = [a1 copyDescription];
            v209 = _NRKeyCreateLogString();
            _NRLogWithArgs();
          }

          goto LABEL_126;
        }

        if (a2 == 48701)
        {
          v222 = 0;
          if ([v8 length])
          {
            [v8 getBytes:&v222 length:1];
            if (v222 < 0 && (*(a1 + 276) & 1) == 0)
            {
              *(a1 + 276) = 1;
              objc_initWeak(&location, a1);
              v81 = sub_100180AC4();
              v220[0] = _NSConcreteStackBlock;
              v220[1] = 3221225472;
              v220[2] = sub_1000896A4;
              v220[3] = &unk_1001FC730;
              objc_copyWeak(&v221, &location);
              sub_1001816DC(v81, v220);

              objc_destroyWeak(&v221);
              objc_destroyWeak(&location);
            }
          }

          goto LABEL_175;
        }

        goto LABEL_117;
      }

      if (a2 <= 50801)
      {
        if (a2 <= 50700)
        {
          if ((a2 - 50501) >= 5)
          {
            goto LABEL_117;
          }

          goto LABEL_90;
        }

        if (a2 == 50701)
        {
          sub_100171CD8(NRDLocalDevice, v8, *(a1 + 32));
          [a1 checkProxyAgentWithForceUpdate:0];
          goto LABEL_175;
        }

        if (a2 == 50702)
        {
          [v21 linkDidReceiveData:a1 data:v8];
          goto LABEL_175;
        }

        if (a2 != 50801)
        {
LABEL_117:
          v108 = *(a1 + 32);
          v109 = _NRCopyLogObjectForNRUUID();
          v110 = _NRLogIsLevelEnabled();

          if (!v110)
          {
            goto LABEL_175;
          }

          goto LABEL_91;
        }

        if (*(a1 + 289) == 1)
        {
          v64 = *(a1 + 32);
          v65 = _NRCopyLogObjectForNRUUID();
          v66 = _NRLogIsLevelEnabled();

          if (v66)
          {
            goto LABEL_143;
          }

          goto LABEL_175;
        }

        location = 0;
        v219 = 0;
        if ([v8 length] <= 0xF)
        {
          v129 = *(a1 + 32);
          v130 = _NRCopyLogObjectForNRUUID();
          v131 = _NRLogIsLevelEnabled();

          if (!v131)
          {
            goto LABEL_175;
          }

          goto LABEL_143;
        }

        [v8 getBytes:&location length:16];
        if (sub_10017332C(NRDLocalDevice, &location, *(a1 + 32)))
        {
          v52 = sub_100163A30(NRDLocalDevice, *(a1 + 32));
          if (v52)
          {
            v153 = *(a1 + 32);
            v154 = _NRCopyLogObjectForNRUUID();
            v155 = _NRLogIsLevelEnabled();

            if (v155)
            {
              v156 = *(a1 + 32);
              v157 = _NRCopyLogObjectForNRUUID();
              v158 = [a1 copyDescription];
              IPv6AddrString = createIPv6AddrString();
              v216 = createIPv6AddrString();
              _NRLogWithArgs();
            }

            sub_100168638(v52, (a1 + 2095));
            sub_1000896EC(a1);
            sub_100089894(a1);

            goto LABEL_175;
          }

          v188 = sub_10007CF34();
          v189 = _NRLogIsLevelEnabled();

          if (v189)
          {
            v190 = sub_10007CF34();
            _NRLogWithArgs();
          }

          goto LABEL_194;
        }

        v168 = *(a1 + 32);
        v169 = _NRCopyLogObjectForNRUUID();
        v170 = _NRLogIsLevelEnabled();

        if (!v170)
        {
          goto LABEL_175;
        }

LABEL_171:
        v171 = *(a1 + 32);
        v172 = _NRCopyLogObjectForNRUUID();
        v200 = [a1 copyDescription];
        v208 = createIPv6AddrString();
        _NRLogWithArgs();

        goto LABEL_175;
      }

      if (a2 > 51300)
      {
        if (a2 <= 51500)
        {
          if (a2 != 51301)
          {
            if (a2 == 51401)
            {
              LOBYTE(location) = 0;
              [v8 getBytes:&location length:1];
              v39 = *(a1 + 32);
              v40 = _NRCopyLogObjectForNRUUID();
              v41 = _NRLogIsLevelEnabled();

              if (v41)
              {
                v42 = *(a1 + 32);
                v43 = _NRCopyLogObjectForNRUUID();
                v194 = [a1 copyDescription];
                _NRLogWithArgs();
              }

              v44 = location == 1;
              v45 = [a1 nrUUID];
              sub_100171ADC(NRDLocalDevice, v44, v45);

              goto LABEL_175;
            }

            goto LABEL_117;
          }

          goto LABEL_90;
        }

        if (a2 == 51501)
        {
          v103 = *(a1 + 32);
          v104 = _NRCopyLogObjectForNRUUID();
          v105 = _NRLogIsLevelEnabled();

          if (v105)
          {
            v106 = *(a1 + 32);
            v107 = _NRCopyLogObjectForNRUUID();
            v212 = [a1 copyDescription];
            _NRLogWithArgs();
          }

          goto LABEL_117;
        }

        v74 = 51601;
      }

      else
      {
        if (a2 <= 50811)
        {
          if (a2 == 50802)
          {
            if (*(a1 + 289) == 1)
            {
              v97 = *(a1 + 32);
              v98 = _NRCopyLogObjectForNRUUID();
              v99 = _NRLogIsLevelEnabled();

              if (!v99)
              {
                goto LABEL_175;
              }

              goto LABEL_143;
            }

            location = 0;
            v219 = 0;
            if ([v8 length] <= 0xF)
            {
              v120 = *(a1 + 32);
              v121 = _NRCopyLogObjectForNRUUID();
              v122 = _NRLogIsLevelEnabled();

              if (!v122)
              {
                goto LABEL_175;
              }

              goto LABEL_143;
            }

            [v8 getBytes:&location length:16];
            if (!sub_100173B9C(NRDLocalDevice, &location, *(a1 + 32)))
            {
              v159 = *(a1 + 32);
              v160 = _NRCopyLogObjectForNRUUID();
              v161 = _NRLogIsLevelEnabled();

              if (!v161)
              {
                goto LABEL_175;
              }

              goto LABEL_171;
            }

            v52 = sub_100163A30(NRDLocalDevice, *(a1 + 32));
            if (v52)
            {
              v135 = *(a1 + 32);
              v136 = _NRCopyLogObjectForNRUUID();
              v137 = _NRLogIsLevelEnabled();

              if (v137)
              {
                v138 = *(a1 + 32);
                v139 = _NRCopyLogObjectForNRUUID();
                v140 = [a1 copyDescription];
                v204 = createIPv6AddrString();
                v213 = createIPv6AddrString();
                _NRLogWithArgs();
              }

              sub_100167D5C(v52, (a1 + 2111));
              sub_1000896EC(a1);
              sub_100089A48(a1);

              goto LABEL_175;
            }

            v179 = sub_10007CF34();
            v180 = _NRLogIsLevelEnabled();

            if (v180)
            {
              v181 = sub_10007CF34();
              _NRLogWithArgs();
            }
          }

          else
          {
            if (a2 != 50811)
            {
              goto LABEL_117;
            }

            if (*(a1 + 289) == 1)
            {
              v30 = *(a1 + 32);
              v31 = _NRCopyLogObjectForNRUUID();
              v32 = _NRLogIsLevelEnabled();

              if (v32)
              {
                goto LABEL_143;
              }

              goto LABEL_175;
            }

            location = 0;
            v219 = 0;
            if ([v8 length] <= 0xF)
            {
              v126 = *(a1 + 32);
              v127 = _NRCopyLogObjectForNRUUID();
              v128 = _NRLogIsLevelEnabled();

              if (!v128)
              {
                goto LABEL_175;
              }

              goto LABEL_143;
            }

            [v8 getBytes:&location length:16];
            if (!sub_100173764(NRDLocalDevice, &location, *(a1 + 32)))
            {
              v165 = *(a1 + 32);
              v166 = _NRCopyLogObjectForNRUUID();
              v167 = _NRLogIsLevelEnabled();

              if (!v167)
              {
                goto LABEL_175;
              }

              goto LABEL_171;
            }

            v52 = sub_100163A30(NRDLocalDevice, *(a1 + 32));
            if (v52)
            {
              v147 = *(a1 + 32);
              v148 = _NRCopyLogObjectForNRUUID();
              v149 = _NRLogIsLevelEnabled();

              if (v149)
              {
                v150 = *(a1 + 32);
                v151 = _NRCopyLogObjectForNRUUID();
                v152 = [a1 copyDescription];
                v206 = createIPv6AddrString();
                v215 = createIPv6AddrString();
                _NRLogWithArgs();
              }

              sub_100172608(v52, (a1 + 2127));
              sub_100089894(a1);

              goto LABEL_175;
            }

            v185 = sub_10007CF34();
            v186 = _NRLogIsLevelEnabled();

            if (v186)
            {
              v187 = sub_10007CF34();
              _NRLogWithArgs();
            }
          }

LABEL_194:
          v21 = _os_log_pack_size();
          v8 = v217 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v191 = *__error();
          v192 = _os_log_pack_fill();
          *v192 = 136446210;
          *(v192 + 4) = "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]";
          sub_10007CF34();
          _NRLogAbortWithPack();
          __break(1u);
          goto LABEL_195;
        }

        if (a2 == 50812)
        {
          if (*(a1 + 289) == 1)
          {
            v100 = *(a1 + 32);
            v101 = _NRCopyLogObjectForNRUUID();
            v102 = _NRLogIsLevelEnabled();

            if (!v102)
            {
              goto LABEL_175;
            }

            goto LABEL_143;
          }

          location = 0;
          v219 = 0;
          if ([v8 length] <= 0xF)
          {
            v123 = *(a1 + 32);
            v124 = _NRCopyLogObjectForNRUUID();
            v125 = _NRLogIsLevelEnabled();

            if (!v125)
            {
              goto LABEL_175;
            }

            goto LABEL_143;
          }

          [v8 getBytes:&location length:16];
          if (!sub_100173FD4(NRDLocalDevice, &location, *(a1 + 32)))
          {
            v162 = *(a1 + 32);
            v163 = _NRCopyLogObjectForNRUUID();
            v164 = _NRLogIsLevelEnabled();

            if (!v164)
            {
              goto LABEL_175;
            }

            goto LABEL_171;
          }

          v52 = sub_100163A30(NRDLocalDevice, *(a1 + 32));
          if (v52)
          {
            v141 = *(a1 + 32);
            v142 = _NRCopyLogObjectForNRUUID();
            v143 = _NRLogIsLevelEnabled();

            if (v143)
            {
              v144 = *(a1 + 32);
              v145 = _NRCopyLogObjectForNRUUID();
              v146 = [a1 copyDescription];
              v205 = createIPv6AddrString();
              v214 = createIPv6AddrString();
              _NRLogWithArgs();
            }

            sub_100167D5C(v52, (a1 + 2143));
            sub_100089A48(a1);

            goto LABEL_175;
          }

          v182 = sub_10007CF34();
          v183 = _NRLogIsLevelEnabled();

          if (v183)
          {
            v184 = sub_10007CF34();
            _NRLogWithArgs();
          }

          goto LABEL_194;
        }

        v74 = 50901;
      }

      if (a2 != v74)
      {
        goto LABEL_117;
      }

      goto LABEL_90;
    }

    v15 = *(a1 + 32);
    v16 = _NRCopyLogObjectForNRUUID();
    v17 = _NRLogIsLevelEnabled();

    if (v17)
    {
      goto LABEL_11;
    }
  }

LABEL_176:
}

void sub_100089178(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 152));
  _Unwind_Resume(a1);
}

void sub_1000891A4(uint64_t a1)
{
  if (([a1 hasCompanionDatapath] & 1) == 0)
  {
    v2 = sub_100163A30(NRDLocalDevice, *(a1 + 32));
    *(a1 + 311) = 4;
    v7 = v2;
    if (v2)
    {
      v3 = sub_100003490();
      dispatch_assert_queue_V2(v3);

      v4 = sub_1001672A0(v7, @"0");
      [a1 setLocalOuterEndpoint:v4];

      v5 = sub_100003490();
      dispatch_assert_queue_V2(v5);

      v6 = sub_1001677D0(v7, @"0");
    }

    else
    {
      [a1 setLocalOuterEndpoint:0];
      v6 = 0;
    }

    [a1 setRemoteOuterEndpoint:v6];
  }
}

void sub_1000892A8(uint64_t a1)
{
  v2 = sub_100163A30(NRDLocalDevice, *(a1 + 32));
  if (sub_100147B98(v2))
  {
    v3 = *(a1 + 32);
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = *(a1 + 32);
      v7 = _NRCopyLogObjectForNRUUID();
      v12 = [a1 copyDescription];
      _NRLogWithArgs();
    }

    objc_initWeak(&location, a1);
    v8 = *(a1 + 1311);
    v9 = sub_100147C1C(v2, 0);
    v16 = v9;
    v10 = [NSArray arrayWithObjects:&v16 count:1];
    v11 = [a1 queue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10008AB7C;
    v13[3] = &unk_1001FC018;
    objc_copyWeak(&v14, &location);
    [v8 sendPrivateNotifies:v10 maxRetries:10 retryIntervalInMilliseconds:10000 callbackQueue:v11 callback:v13];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void sub_10008947C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000894A8(void *a1)
{
  v2 = a1[4];
  v3 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v5 = a1[4];
    v6 = _NRCopyLogObjectForNRUUID();
    v11 = [a1 copyDescription];
    _NRLogWithArgs();
  }

  objc_initWeak(&location, a1);
  v7 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50352 notifyData:0];
  v8 = *(a1 + 1311);
  v15 = v7;
  v9 = [NSArray arrayWithObjects:&v15 count:1];
  v10 = [a1 queue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10008AA58;
  v12[3] = &unk_1001FC018;
  objc_copyWeak(&v13, &location);
  [v8 sendPrivateNotifies:v9 maxRetries:10 retryIntervalInMilliseconds:10000 callbackQueue:v10 callback:v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void sub_100089668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000896A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    sub_1000850B4(WeakRetained, 3);
    WeakRetained = v2;
  }
}

void sub_1000896EC(uint64_t a1)
{
  if (*(a1 + 293) == 1)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = [[NSData alloc] initWithBytes:a1 + 2095 length:16];
    v5 = [[NSData alloc] initWithBytes:a1 + 2111 length:16];
    [v3 setObject:v4 forKeyedSubscript:@"source-address-bytes"];
    [v3 setObject:v5 forKeyedSubscript:@"destination-address-bytes"];
    v13 = v3;
    v6 = *(a1 + 1399);
    if (v6 && [v6 direct])
    {
      [*(a1 + 1399) sendXPCCommDictionary:v13];
    }

    else
    {
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v7 = qword_1002290B8;
      v8 = v7;
      if (v7)
      {
        v9 = *(a1 + 32);
        v10 = *(v7 + 28);
        v11 = v13;
        v12 = [v10 objectForKeyedSubscript:v9];
        sub_100114680(v12, v11);
      }
    }
  }
}

void sub_100089894(uint64_t a1)
{
  if ([a1 virtualInterface] || *(a1 + 1479))
  {
    v2 = sub_100163A30(NRDLocalDevice, *(a1 + 32));
    v3 = sub_100173200(v2);
    v4 = *(a1 + 1479);
    if (v4)
    {
      [v4 setLocalAddresses:v3];
    }

    else if ([a1 virtualInterface])
    {
      [a1 virtualInterface];
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = NEVirtualInterfaceCopyAddresses();
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v12;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v11 + 1) + 8 * i);
            [a1 virtualInterface];
            NEVirtualInterfaceRemoveAddress();
          }

          v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v7);
      }

      [a1 virtualInterface];
      NEVirtualInterfaceRemoveAllRoutes();
      if (!sub_10008A218(a1))
      {
        [a1 cancelWithReason:@"failed to configure addresses"];
      }
    }
  }
}

void sub_100089A48(uint64_t a1)
{
  v19 = sub_100163A30(NRDLocalDevice, *(a1 + 32));
  if (!v19)
  {
    v14 = sub_10007CF34();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v16 = sub_10007CF34();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v17 = *__error();
    v18 = _os_log_pack_fill();
    *v18 = 136446210;
    *(v18 + 4) = "[NRLinkBluetooth addVirtualInterfaceRoutes]";
    sub_10007CF34();
    _NRLogAbortWithPack();
  }

  v2 = *(a1 + 56);
  NEVirtualInterfaceRemoveAllRoutes();
  v3 = *(a1 + 56);
  v4 = sub_100003490();
  dispatch_assert_queue_V2(v4);

  v5 = sub_100003490();
  dispatch_assert_queue_V2(v5);

  v6 = sub_1001677D0(v19, @"0");
  v7 = [v6 hostname];

  NEVirtualInterfaceAddIPv6Route();
  v8 = *(a1 + 56);
  v9 = sub_100003490();
  dispatch_assert_queue_V2(v9);

  v10 = sub_100003490();
  dispatch_assert_queue_V2(v10);

  v11 = sub_100167B9C(v19, @"0");
  v12 = [v11 hostname];

  NEVirtualInterfaceAddIPv6Route();
  v13 = *(a1 + 56);
  NEVirtualInterfaceUpdateAdHocService();
  [a1 checkProxyAgentWithForceUpdate:1];
}

void sub_100089C88(uint64_t a1, void *a2)
{
  v31 = a2;
  v3 = *(*(a1 + 32) + 32);
  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v6 = *(*(a1 + 32) + 32);
    v7 = _NRCopyLogObjectForNRUUID();
    v28 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs();
  }

  v8 = *(*(a1 + 32) + 32);
  v9 = _NRCopyLogObjectForNRUUID();
  v10 = _NRLogIsLevelEnabled();

  if (v10)
  {
    v11 = *(*(a1 + 32) + 32);
    v12 = _NRCopyLogObjectForNRUUID();
    v13 = [*(a1 + 32) copyDescription];
    if (v31)
    {
      v14 = v31[8];
      v15 = v14;
      if (v14)
      {
        v16 = *(v14 + 1);
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    v17 = v16;
    v29 = [v17 UUIDString];
    _NRLogWithArgs();
  }

  v18 = *(*(a1 + 32) + 32);
  v19 = _NRCopyLogObjectForNRUUID();
  v20 = _NRLogIsLevelEnabled();

  if (v20)
  {
    v21 = *(*(a1 + 32) + 32);
    v22 = _NRCopyLogObjectForNRUUID();
    v23 = [*(a1 + 32) copyDescription];
    if (v31)
    {
      v24 = v31[8];
      v25 = v24;
      if (v24)
      {
        v26 = *(v24 + 2);
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }

    v27 = v26;
    LogString = _NRKeyCreateLogString();
    _NRLogWithArgs();
  }
}

void sub_100089ED8(void *a1)
{
  v2 = [a1 nrUUID];
  v3 = sub_10016D388(NRDLocalDevice, v2);

  if (v3)
  {
    v4 = a1[4];
    v5 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = a1[4];
      v8 = _NRCopyLogObjectForNRUUID();
      v13 = [a1 copyDescription];
      _NRLogWithArgs();
    }

    objc_initWeak(&location, a1);
    v9 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50351 notifyData:v3];
    v10 = *(a1 + 1311);
    v17 = v9;
    v11 = [NSArray arrayWithObjects:&v17 count:1];
    v12 = [a1 queue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10008A0F4;
    v14[3] = &unk_1001FC018;
    objc_copyWeak(&v15, &location);
    [v10 sendPrivateNotifies:v11 maxRetries:10 retryIntervalInMilliseconds:10000 callbackQueue:v12 callback:v14];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void sub_10008A0C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008A0F4(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v4 = WeakRetained[4];
    v5 = _NRCopyLogObjectForNRUUID();
    if (a2)
    {
      IsLevelEnabled = _NRLogIsLevelEnabled();

      WeakRetained = v11;
      if (!IsLevelEnabled)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v7 = _NRLogIsLevelEnabled();

      WeakRetained = v11;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v8 = v11[4];
    v9 = _NRCopyLogObjectForNRUUID();
    v10 = [v11 copyDescription];
    _NRLogWithArgs();

    WeakRetained = v11;
  }

LABEL_7:
}

BOOL sub_10008A218(void *a1)
{
  if (![a1 virtualInterface])
  {
    v73 = sub_10007CF34();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v3 = sub_10007CF34();
      _NRLogWithArgs();
      goto LABEL_37;
    }

    return 0;
  }

  v2 = [a1 nrUUID];
  v3 = sub_100163A30(NRDLocalDevice, v2);

  if (!v3)
  {
    v75 = sub_10007CF34();
    v76 = _NRLogIsLevelEnabled();

    if (v76)
    {
      v77 = sub_10007CF34();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v78 = *__error();
    v79 = _os_log_pack_fill();
    *v79 = 136446210;
    *(v79 + 4) = "[NRLinkBluetooth configureVirtualInterfaceAddresses]";
    sub_10007CF34();
    _NRLogAbortWithPack();
    return 0;
  }

  if ([a1 isExternalDeviceLink])
  {
    v4 = sub_100003490();
    dispatch_assert_queue_V2(v4);

    v82 = 0uLL;
    v84 = 0;
    v83 = 0;
    v5 = sub_100003490();
    dispatch_assert_queue_V2(v5);

    v6 = sub_100003490();
    dispatch_assert_queue_V2(v6);

    v7 = sub_1001672A0(v3, @"0");
    sub_1001681A4(NRDLocalDevice, &v82, v7);

    do
    {
      arc4random_buf(&v82 + 8, 0x10uLL);
    }

    while (BYTE3(v83) == 255 && BYTE4(v83) == 254);
    *(&v82 + 1) = 33022;
    v8 = [NWAddressEndpoint endpointWithAddress:&v82];
    v9 = [v8 hostname];

    [a1 virtualInterface];
    v10 = NEVirtualInterfaceAddAddress();
    v11 = v10 != 0;
    if (!v10)
    {
      v12 = a1[4];
      v13 = _NRCopyLogObjectForNRUUID();
      v14 = _NRLogIsLevelEnabled();

      if (v14)
      {
        v15 = a1[4];
        v16 = _NRCopyLogObjectForNRUUID();
        v81 = [a1 copyDescription];
        _NRLogWithArgs();
      }

      [a1 invalidateVirtualInterface];
    }

    goto LABEL_38;
  }

  [a1 virtualInterface];
  v17 = sub_100003490();
  dispatch_assert_queue_V2(v17);

  v18 = sub_100003490();
  dispatch_assert_queue_V2(v18);

  v19 = sub_1001672A0(v3, @"0");
  v20 = [v19 hostname];

  v21 = NEVirtualInterfaceAddAddress();
  if (v21)
  {
    [a1 virtualInterface];
    v22 = sub_100003490();
    dispatch_assert_queue_V2(v22);

    v23 = sub_100003490();
    dispatch_assert_queue_V2(v23);

    v24 = sub_1001679E0(v3, @"0");
    v25 = [v24 hostname];

    v26 = NEVirtualInterfaceAddAddress();
    if (v26)
    {
      [a1 virtualInterface];
      v27 = sub_100003490();
      dispatch_assert_queue_V2(v27);

      v28 = sub_1001730E8(v3);
      v29 = [v28 hostname];

      v30 = NEVirtualInterfaceAddAddress();
      if (v30)
      {
        [a1 virtualInterface];
        if (NEVirtualInterfaceAddAddress())
        {
          [a1 virtualInterface];
          v31 = sub_100003490();
          dispatch_assert_queue_V2(v31);

          v32 = sub_100003490();
          dispatch_assert_queue_V2(v32);

          v33 = sub_1001677D0(v3, @"0");
          v34 = [v33 hostname];

          v35 = NEVirtualInterfaceAddIPv6Route();
          if (v35)
          {
            [a1 virtualInterface];
            v36 = sub_100003490();
            dispatch_assert_queue_V2(v36);

            v37 = sub_100003490();
            dispatch_assert_queue_V2(v37);

            v38 = sub_100167B9C(v3, @"0");
            v39 = [v38 hostname];

            v40 = NEVirtualInterfaceAddIPv6Route();
            if (v40)
            {
              [a1 virtualInterface];
              if (NEVirtualInterfaceUpdateAdHocService())
              {
                [a1 virtualInterface];
                v41 = NEVirtualInterfaceCopyName();
                [a1 virtualInterface];
                v42 = NEVirtualInterfaceCopyAddresses();
                v43 = a1[4];
                v44 = _NRCopyLogObjectForNRUUID();
                v45 = _NRLogIsLevelEnabled();

                if (v45)
                {
                  v46 = a1[4];
                  v47 = _NRCopyLogObjectForNRUUID();
                  v80 = [a1 copyDescription];
                  _NRLogWithArgs();
                }

                v11 = 1;
                goto LABEL_38;
              }

              v66 = a1[4];
              v67 = _NRCopyLogObjectForNRUUID();
              v68 = _NRLogIsLevelEnabled();

              if (!v68)
              {
                goto LABEL_36;
              }

              goto LABEL_35;
            }

            v63 = a1[4];
            v64 = _NRCopyLogObjectForNRUUID();
            v65 = _NRLogIsLevelEnabled();

            if (v65)
            {
LABEL_35:
              v69 = a1[4];
              v70 = _NRCopyLogObjectForNRUUID();
              v71 = [a1 copyDescription];
              _NRLogWithArgs();
            }
          }

          else
          {
            v60 = a1[4];
            v61 = _NRCopyLogObjectForNRUUID();
            v62 = _NRLogIsLevelEnabled();

            if (v62)
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
          v57 = a1[4];
          v58 = _NRCopyLogObjectForNRUUID();
          v59 = _NRLogIsLevelEnabled();

          if (v59)
          {
            goto LABEL_35;
          }
        }
      }

      else
      {
        v54 = a1[4];
        v55 = _NRCopyLogObjectForNRUUID();
        v56 = _NRLogIsLevelEnabled();

        if (v56)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      v51 = a1[4];
      v52 = _NRCopyLogObjectForNRUUID();
      v53 = _NRLogIsLevelEnabled();

      if (v53)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v48 = a1[4];
    v49 = _NRCopyLogObjectForNRUUID();
    v50 = _NRLogIsLevelEnabled();

    if (v50)
    {
      goto LABEL_35;
    }
  }

LABEL_36:
  [a1 invalidateVirtualInterface];
LABEL_37:
  v11 = 0;
LABEL_38:

  return v11;
}

void sub_10008AA58(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v4 = WeakRetained[4];
    v5 = _NRCopyLogObjectForNRUUID();
    if (a2)
    {
      IsLevelEnabled = _NRLogIsLevelEnabled();

      WeakRetained = v11;
      if (!IsLevelEnabled)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v7 = _NRLogIsLevelEnabled();

      WeakRetained = v11;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v8 = v11[4];
    v9 = _NRCopyLogObjectForNRUUID();
    v10 = [v11 copyDescription];
    _NRLogWithArgs();

    WeakRetained = v11;
  }

LABEL_7:
}

void sub_10008AB7C(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v4 = WeakRetained[4];
    v5 = _NRCopyLogObjectForNRUUID();
    if (a2)
    {
      IsLevelEnabled = _NRLogIsLevelEnabled();

      WeakRetained = v11;
      if (!IsLevelEnabled)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v7 = _NRLogIsLevelEnabled();

      WeakRetained = v11;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v8 = v11[4];
    v9 = _NRCopyLogObjectForNRUUID();
    v10 = [v11 copyDescription];
    _NRLogWithArgs();

    WeakRetained = v11;
  }

LABEL_7:
}

void sub_10008ACA0(_BYTE *a1)
{
  if ((a1[289] & 1) == 0)
  {
    a1[275] = 1;
    v2 = [a1 nrUUID];
    v3 = sub_100163A30(NRDLocalDevice, v2);

    if (v3)
    {
      if ((v3[24] & 0x4010) != 0 || v3[8] > 0x12u)
      {
        goto LABEL_7;
      }

      objc_initWeak(&location, a1);
      objc_opt_self();
      if (qword_1002294C8 == -1)
      {
LABEL_6:
        v4 = qword_1002294C0;
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_10008B8A4;
        v10[3] = &unk_1001FC730;
        objc_copyWeak(&v11, &location);
        sub_100181B44(v4, v10);

        objc_destroyWeak(&v11);
        objc_destroyWeak(&location);
LABEL_7:

        return;
      }
    }

    else
    {
      v5 = sub_10007CF34();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v7 = sub_10007CF34();
        _NRLogWithArgs();
      }

      v3 = _os_log_pack_size();
      __chkstk_darwin();
      v8 = *__error();
      v9 = _os_log_pack_fill();
      *v9 = 136446210;
      *(v9 + 4) = "[NRLinkBluetooth scheduleIKESessionClassADueToConnectFailure]";
      sub_10007CF34();
      _NRLogAbortWithPack();
      __break(1u);
    }

    dispatch_once(&qword_1002294C8, &stru_1001FD250);
    goto LABEL_6;
  }
}

void sub_10008AEFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void sub_10008AF24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && WeakRetained[16] != 255 && *(WeakRetained + 1311))
  {
    objc_initWeak(&location, WeakRetained);
    v3 = *(v2 + 1311);
    v4 = sub_100147A80();
    v10 = v4;
    v5 = [NSArray arrayWithObjects:&v10 count:1];
    v6 = [v2 queue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10008B780;
    v7[3] = &unk_1001FC018;
    objc_copyWeak(&v8, &location);
    [v3 sendPrivateNotifies:v5 maxRetries:10 retryIntervalInMilliseconds:10000 callbackQueue:v6 callback:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void sub_10008B088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10008B0B4(void *a1)
{
  if ([a1 state] == 255 || !objc_msgSend(a1, "shouldSendIDSDeviceID"))
  {
    v6 = 0;
  }

  else
  {
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v2 = qword_1002290B8;
    v3 = sub_1000CAD2C(v2, 0);

    if (v3)
    {
      v4 = [v3 dataUsingEncoding:4];
      v5 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48607 notifyData:v4];
    }

    else
    {
      objc_initWeak(&location, a1);
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v7 = qword_1002290B8;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10008B3B8;
      v9[3] = &unk_1001FBF00;
      objc_copyWeak(&v10, &location);

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
      v5 = 0;
    }

    v6 = v5;
  }

  return v6;
}

void sub_10008B270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008B294(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v4 = WeakRetained[4];
    v5 = _NRCopyLogObjectForNRUUID();
    if (a2)
    {
      IsLevelEnabled = _NRLogIsLevelEnabled();

      WeakRetained = v11;
      if (!IsLevelEnabled)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v7 = _NRLogIsLevelEnabled();

      WeakRetained = v11;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v8 = v11[4];
    v9 = _NRCopyLogObjectForNRUUID();
    v10 = [v11 copyDescription];
    _NRLogWithArgs();

    WeakRetained = v11;
  }

LABEL_7:
}

void sub_10008B3B8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && [WeakRetained state] != 255)
  {
    if (v3)
    {
      v6 = [v3 dataUsingEncoding:4];
      v7 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48607 notifyData:v6];
      v8 = *(v5 + 4);
      v9 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v11 = *(v5 + 4);
        v12 = _NRCopyLogObjectForNRUUID();
        v21 = [v5 copyDescription];
        _NRLogWithArgs();
      }

      v13 = *(v5 + 1311);
      v25 = v7;
      v14 = [NSArray arrayWithObjects:&v25 count:1];
      v15 = [v5 queue];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10008B65C;
      v23[3] = &unk_1001FC018;
      objc_copyWeak(&v24, (a1 + 32));
      [v13 sendPrivateNotifies:v14 maxRetries:10 retryIntervalInMilliseconds:10000 callbackQueue:v15 callback:v23];

      objc_destroyWeak(&v24);
    }

    else
    {
      v16 = *(v5 + 4);
      v17 = _NRCopyLogObjectForNRUUID();
      v18 = _NRLogIsLevelEnabled();

      if (v18)
      {
        v19 = *(v5 + 4);
        v20 = _NRCopyLogObjectForNRUUID();
        v22 = [v5 copyDescription];
        _NRLogWithArgs();
      }
    }
  }
}

void sub_10008B65C(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v4 = WeakRetained[4];
    v5 = _NRCopyLogObjectForNRUUID();
    if (a2)
    {
      IsLevelEnabled = _NRLogIsLevelEnabled();

      WeakRetained = v11;
      if (!IsLevelEnabled)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v7 = _NRLogIsLevelEnabled();

      WeakRetained = v11;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v8 = v11[4];
    v9 = _NRCopyLogObjectForNRUUID();
    v10 = [v11 copyDescription];
    _NRLogWithArgs();

    WeakRetained = v11;
  }

LABEL_7:
}

void sub_10008B780(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v4 = WeakRetained[4];
    v5 = _NRCopyLogObjectForNRUUID();
    if (a2)
    {
      IsLevelEnabled = _NRLogIsLevelEnabled();

      WeakRetained = v11;
      if (!IsLevelEnabled)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v7 = _NRLogIsLevelEnabled();

      WeakRetained = v11;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v8 = v11[4];
    v9 = _NRCopyLogObjectForNRUUID();
    v10 = [v11 copyDescription];
    _NRLogWithArgs();

    WeakRetained = v11;
  }

LABEL_7:
}

void sub_10008B8A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v2 = [WeakRetained state] == 255;
    WeakRetained = v10;
    if (!v2)
    {
      v10[275] = 0;
      v3 = [v10 nrUUID];
      v4 = sub_100163A30(NRDLocalDevice, v3);

      if (!v4)
      {
        v5 = sub_10007CF34();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v7 = sub_10007CF34();
          _NRLogWithArgs();
        }

        _os_log_pack_size();
        v8 = *__error();
        v9 = _os_log_pack_fill();
        *v9 = 136446210;
        *(v9 + 4) = "[NRLinkBluetooth scheduleIKESessionClassADueToConnectFailure]_block_invoke";
        sub_10007CF34();
        _NRLogAbortWithPack();
      }

      if ((v4[24] & 0x4010) == 0 && v4[8] <= 0x12u)
      {
        sub_100084C80(v10, 1, 0, 0);
      }

      WeakRetained = v10;
    }
  }
}

void sub_10008BA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v18 = a5;
  if ([*(a1 + 32) state] == 255)
  {
    v9 = *(*(a1 + 32) + 32);
    v10 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v12 = *(*(a1 + 32) + 32);
      v13 = _NRCopyLogObjectForNRUUID();
      v17 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs();
    }
  }

  else if (v18)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      objc_storeStrong((v7 + 1383), a5);
      v8 = *(a1 + 32);
    }

    else
    {
      v8 = 0;
    }

    sub_10008448C(v8);
  }

  else
  {
    v14 = sub_10007CF34();
    v15 = _NRLogIsLevelEnabled();

    if (v15)
    {
      v16 = sub_10007CF34();
      _NRLogWithArgs();
    }
  }
}

void sub_10008BBB0(uint64_t a1, int a2)
{
  v4 = *(*(a1 + 32) + 32);
  v5 = _NRCopyLogObjectForNRUUID();
  if (a2)
  {
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = *(*(a1 + 32) + 32);
      v8 = _NRCopyLogObjectForNRUUID();
      v12 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs();
    }

    v9 = *(a1 + 32);
    if (v9)
    {

      sub_100084C80(v9, 3, 0, 0);
    }
  }

  else
  {
    v10 = _NRLogIsLevelEnabled();

    if (v10)
    {
      v11 = *(*(a1 + 32) + 32);
      v14 = _NRCopyLogObjectForNRUUID();
      v13 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs();
    }
  }
}

void sub_10008BD24(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v5)
    {
      v7 = [NSString alloc];
      v8 = *(a1 + 32);
      SessionStateString = NEIKEv2CreateSessionStateString();
      v10 = [v7 initWithFormat:@"pairing session %@ got IKE error %@ with state %@", v8, v5, SessionStateString];

LABEL_4:
      v11 = nr_absolute_time();
      v12 = *(WeakRetained + 2007);
      if (v12)
      {
        *(v12 + 128) = v11;
      }

      if (WeakRetained[274])
      {
        [WeakRetained reportEvent:3009 details:v10];
      }

      else
      {
        sub_10016B844(NRDLocalDevice, -2013, v10, *(WeakRetained + 4));
        [WeakRetained cancelWithReason:{@"%@", v10}];
      }

LABEL_9:

      goto LABEL_10;
    }

    v13 = *(a1 + 32);
    v14 = NEIKEv2CreateSessionStateString();
    [WeakRetained reportEvent:3009 detailsFormat:@"pairing session %@ changed state to %@", v13, v14];

    if (a2 == 3)
    {
      v10 = [[NSString alloc] initWithFormat:@"pairing session IKE %@ disconnected", *(a1 + 32)];
      goto LABEL_4;
    }

    if (a2 == 2)
    {
      v15 = nr_absolute_time();
      v16 = *(WeakRetained + 2007);
      if (v16)
      {
        *(v16 + 128) = v15;
      }

      WeakRetained[274] = 1;
      if ((WeakRetained[289] & 1) == 0)
      {
        if (*(WeakRetained + 1375))
        {
          v17 = sub_100083C40(WeakRetained, 0);
          [WeakRetained reportEvent:3402 details:@"ClassD"];
          v39 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50401 notifyData:*(WeakRetained + 1375)];
          [v17 addObject:?];
          v18 = [WeakRetained nrUUID];
          v19 = sub_10016D388(NRDLocalDevice, v18);

          if (v19)
          {
            [WeakRetained reportEvent:3400 details:@"Identity"];
            v20 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50351 notifyData:v19];
            [v17 addObject:v20];
          }

          v21 = *(WeakRetained + 1375);
          *(WeakRetained + 1375) = 0;

          v22 = [*(WeakRetained + 1335) description];
          v23 = *(WeakRetained + 1335);
          v24 = *(WeakRetained + 1);
          v42[0] = _NSConcreteStackBlock;
          v42[1] = 3221225472;
          v42[2] = sub_10008E354;
          v42[3] = &unk_1001FB060;
          v25 = WeakRetained;
          v43 = v25;
          v44 = v22;
          v26 = v22;
          [v23 sendPrivateNotifies:v17 maxRetries:10 retryIntervalInMilliseconds:10000 callbackQueue:v24 callback:v42];
          sub_10008448C(v25);
          sub_1000846C0(v25);
        }

        v10 = objc_alloc_init(NSMutableArray);
        if (*(WeakRetained + 1351))
        {
          [WeakRetained reportEvent:3400 details:@"ClassD"];
          v27 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50411 notifyData:*(WeakRetained + 1351)];
          [v10 addObject:v27];
          v28 = *(WeakRetained + 1351);
          *(WeakRetained + 1351) = 0;
        }

        if (*(WeakRetained + 1359))
        {
          [WeakRetained reportEvent:3400 details:@"ClassC"];
          v29 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50412 notifyData:*(WeakRetained + 1359)];
          [v10 addObject:v29];
          v30 = *(WeakRetained + 1359);
          *(WeakRetained + 1359) = 0;
        }

        if (*(WeakRetained + 1367))
        {
          [WeakRetained reportEvent:3400 details:@"ClassA"];
          v31 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50413 notifyData:*(WeakRetained + 1367)];
          [v10 addObject:v31];
          v32 = *(WeakRetained + 1367);
          *(WeakRetained + 1367) = 0;
        }

        if ([v10 count])
        {
          v33 = [WeakRetained nrUUID];
          v34 = sub_10016D388(NRDLocalDevice, v33);

          if (v34)
          {
            [WeakRetained reportEvent:3400 details:@"Identity"];
            v35 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50351 notifyData:v34];
            [v10 addObject:v35];
          }

          v36 = sub_100083C40(WeakRetained, 0);
          [v10 addObjectsFromArray:v36];

          v37 = *(WeakRetained + 1335);
          v38 = *(WeakRetained + 1);
          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = sub_10008E454;
          v40[3] = &unk_1001FB2D8;
          v41 = WeakRetained;
          [v37 sendPrivateNotifies:v10 maxRetries:10 retryIntervalInMilliseconds:10000 callbackQueue:v38 callback:v40];
        }

        goto LABEL_9;
      }
    }
  }

LABEL_10:
}

void sub_10008C2F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v15 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained[4];
    v8 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (v15)
    {
      if (!IsLevelEnabled)
      {
        goto LABEL_7;
      }
    }

    else if (!IsLevelEnabled)
    {
      goto LABEL_7;
    }

    v10 = v6[4];
    v11 = _NRCopyLogObjectForNRUUID();
    v12 = [v6 copyDescription];
    v13 = *(a1 + 32);
    SessionStateString = NEIKEv2CreateSessionStateString();
    _NRLogWithArgs();
  }

LABEL_7:
}

void sub_10008C454(uint64_t a1, void *a2)
{
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[4];
    v6 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = v4[4];
      v9 = _NRCopyLogObjectForNRUUID();
      v10 = [v4 copyDescription];
      v11 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }
}

void sub_10008C530(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v16 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[4];
    v10 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v12 = v8[4];
      v13 = _NRCopyLogObjectForNRUUID();
      v14 = [v8 copyDescription];
      v15 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }
}

void sub_10008C630(uint64_t a1, void *a2)
{
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[4];
    v6 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = v4[4];
      v9 = _NRCopyLogObjectForNRUUID();
      v10 = [v4 copyDescription];
      v11 = *(a1 + 32);
      _NRLogWithArgs();
    }
  }
}

void sub_10008C70C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v3 = WeakRetained[4];
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    WeakRetained = v10;
    if (IsLevelEnabled)
    {
      v6 = v10[4];
      v7 = _NRCopyLogObjectForNRUUID();
      v8 = [v10 copyDescription];
      v9 = *(a1 + 32);
      _NRLogWithArgs();

      WeakRetained = v10;
    }
  }
}

void sub_10008C7E0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v40 = v3;
    v5 = [v3 sortedArrayUsingComparator:&stru_1001FC4F0];
    v6 = WeakRetained[4];
    v7 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = WeakRetained[4];
      v10 = _NRCopyLogObjectForNRUUID();
      v11 = [WeakRetained copyDescription];
      v38 = *(a1 + 32);
      v39 = v5;
      v36 = 9435;
      v37 = v11;
      v34 = "";
      v35 = "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_9";
      _NRLogWithArgs();
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v12 = v5;
    v13 = [v12 countByEnumeratingWithState:&v55 objects:v59 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v56;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v56 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v20 = *(*(&v55 + 1) + 8 * i);
          if ([v20 notifyStatus] == 50351)
          {
            [WeakRetained reportEvent:3401 details:@"Identity"];
            v17 = [v20 notifyData];
            v18 = WeakRetained[4];
            v53[0] = _NSConcreteStackBlock;
            v53[1] = 3221225472;
            v53[2] = sub_10008CE9C;
            v53[3] = &unk_1001FC068;
            v54 = WeakRetained;
            sub_10016E894(NRDLocalDevice, v17, v18, v53);

            v19 = v54;
          }

          else if ([v20 notifyStatus] == 50411)
          {
            [WeakRetained reportEvent:3401 details:@"ClassD"];
            v21 = [v20 notifyData];
            v22 = WeakRetained[4];
            v51[0] = _NSConcreteStackBlock;
            v51[1] = 3221225472;
            v51[2] = sub_10008D0EC;
            v51[3] = &unk_1001FC068;
            v52 = WeakRetained;
            sub_10016F27C(NRDLocalDevice, v21, 0, v22, v51);

            v19 = v52;
          }

          else if ([v20 notifyStatus] == 50412)
          {
            [WeakRetained reportEvent:3401 details:@"ClassC"];
            v23 = [v20 notifyData];
            v24 = WeakRetained[4];
            v49[0] = _NSConcreteStackBlock;
            v49[1] = 3221225472;
            v49[2] = sub_10008D3FC;
            v49[3] = &unk_1001FC068;
            v50 = WeakRetained;
            sub_10016F524(NRDLocalDevice, v23, 0, v24, v49);

            v19 = v50;
          }

          else if ([v20 notifyStatus] == 50413)
          {
            [WeakRetained reportEvent:3401 details:@"ClassA"];
            v25 = [v20 notifyData];
            v26 = WeakRetained[4];
            v47[0] = _NSConcreteStackBlock;
            v47[1] = 3221225472;
            v47[2] = sub_10008D708;
            v47[3] = &unk_1001FC068;
            v48 = WeakRetained;
            sub_10016F8AC(NRDLocalDevice, v25, v26, v47);

            v19 = v48;
          }

          else if ([v20 notifyStatus] == 50401)
          {
            [WeakRetained reportEvent:3403 details:@"ClassD"];
            v27 = [v20 notifyData];
            v28 = WeakRetained[4];
            v45[0] = _NSConcreteStackBlock;
            v45[1] = 3221225472;
            v45[2] = sub_10008DA14;
            v45[3] = &unk_1001FC068;
            v46 = WeakRetained;
            sub_10016FC30(NRDLocalDevice, v27, v28, v45);

            v19 = v46;
          }

          else if ([v20 notifyStatus] == 50402)
          {
            [WeakRetained reportEvent:3403 details:@"ClassC"];
            v29 = [v20 notifyData];
            v30 = WeakRetained[4];
            v43[0] = _NSConcreteStackBlock;
            v43[1] = 3221225472;
            v43[2] = sub_10008DD24;
            v43[3] = &unk_1001FC068;
            v44 = WeakRetained;
            sub_100170110(NRDLocalDevice, v29, v30, v43);

            v19 = v44;
          }

          else if ([v20 notifyStatus] == 50403)
          {
            [WeakRetained reportEvent:3403 details:@"ClassA"];
            v31 = [v20 notifyData];
            v32 = WeakRetained[4];
            v41[0] = _NSConcreteStackBlock;
            v41[1] = 3221225472;
            v41[2] = sub_10008E034;
            v41[3] = &unk_1001FC068;
            v42 = WeakRetained;
            sub_1001707C4(NRDLocalDevice, v31, v32, v41);

            v19 = v42;
          }

          else
          {
            v33 = [v20 notifyStatus];
            v19 = [v20 notifyData];
            sub_100087300(WeakRetained, v33, v19, 0);
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v55 objects:v59 count:16];
      }

      while (v14);
    }

    v3 = v40;
  }
}

void sub_10008CE9C(uint64_t a1, void *a2)
{
  v31 = a2;
  v3 = *(*(a1 + 32) + 32);
  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v6 = *(*(a1 + 32) + 32);
    v7 = _NRCopyLogObjectForNRUUID();
    v28 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs();
  }

  v8 = *(*(a1 + 32) + 32);
  v9 = _NRCopyLogObjectForNRUUID();
  v10 = _NRLogIsLevelEnabled();

  if (v10)
  {
    v11 = *(*(a1 + 32) + 32);
    v12 = _NRCopyLogObjectForNRUUID();
    v13 = [*(a1 + 32) copyDescription];
    if (v31)
    {
      v14 = v31[8];
      v15 = v14;
      if (v14)
      {
        v16 = *(v14 + 1);
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    v17 = v16;
    v29 = [v17 UUIDString];
    _NRLogWithArgs();
  }

  v18 = *(*(a1 + 32) + 32);
  v19 = _NRCopyLogObjectForNRUUID();
  v20 = _NRLogIsLevelEnabled();

  if (v20)
  {
    v21 = *(*(a1 + 32) + 32);
    v22 = _NRCopyLogObjectForNRUUID();
    v23 = [*(a1 + 32) copyDescription];
    if (v31)
    {
      v24 = v31[8];
      v25 = v24;
      if (v24)
      {
        v26 = *(v24 + 2);
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }

    v27 = v26;
    LogString = _NRKeyCreateLogString();
    _NRLogWithArgs();
  }
}

void sub_10008D0EC(uint64_t a1, void *a2)
{
  v43 = a2;
  v3 = *(*(a1 + 32) + 32);
  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v6 = *(*(a1 + 32) + 32);
    v7 = _NRCopyLogObjectForNRUUID();
    v39 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs();
  }

  if (v43)
  {
    v8 = v43[9];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = *(*(a1 + 32) + 32);
  v11 = _NRCopyLogObjectForNRUUID();
  v12 = _NRLogIsLevelEnabled();

  if (v12)
  {
    v13 = *(*(a1 + 32) + 32);
    v14 = _NRCopyLogObjectForNRUUID();
    v15 = [*(a1 + 32) copyDescription];
    if (v9)
    {
      v16 = *(v9 + 1);
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v18 = sub_10015E4BC(v17);
    LogString = _NRKeyCreateLogString();
    _NRLogWithArgs();
  }

  v19 = *(*(a1 + 32) + 32);
  v20 = _NRCopyLogObjectForNRUUID();
  v21 = _NRLogIsLevelEnabled();

  if (v21)
  {
    v22 = *(*(a1 + 32) + 32);
    v23 = _NRCopyLogObjectForNRUUID();
    v24 = [*(a1 + 32) copyDescription];
    if (v9)
    {
      v25 = *(v9 + 2);
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;
    v27 = sub_10015E4BC(v26);
    v41 = _NRKeyCreateLogString();
    _NRLogWithArgs();
  }

  v28 = *(*(a1 + 32) + 32);
  v29 = _NRCopyLogObjectForNRUUID();
  v30 = _NRLogIsLevelEnabled();

  if (v30)
  {
    v31 = *(*(a1 + 32) + 32);
    v32 = _NRCopyLogObjectForNRUUID();
    v33 = [*(a1 + 32) copyDescription];
    if (v9)
    {
      v34 = *(v9 + 3);
      v35 = v34;
      if (v34)
      {
        v36 = *(v34 + 2);
LABEL_17:
        v37 = v36;
        v42 = _NRKeyCreateLogString();
        _NRLogWithArgs();

        goto LABEL_18;
      }
    }

    else
    {
      v35 = 0;
    }

    v36 = 0;
    goto LABEL_17;
  }

LABEL_18:
  v38 = *(a1 + 32);
  if (v38)
  {
    sub_100084C80(v38, 4, 0, 0);
  }
}

void sub_10008D3FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v44 = v3;
  if (v3)
  {
    v4 = *(v3 + 10);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = *(*(a1 + 32) + 32);
  v7 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v9 = *(*(a1 + 32) + 32);
    v10 = _NRCopyLogObjectForNRUUID();
    v40 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs();
  }

  v11 = *(*(a1 + 32) + 32);
  v12 = _NRCopyLogObjectForNRUUID();
  v13 = _NRLogIsLevelEnabled();

  if (v13)
  {
    v14 = *(*(a1 + 32) + 32);
    v15 = _NRCopyLogObjectForNRUUID();
    v16 = [*(a1 + 32) copyDescription];
    if (v5)
    {
      v17 = *(v5 + 1);
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
    v19 = sub_10015E4BC(v18);
    LogString = _NRKeyCreateLogString();
    _NRLogWithArgs();
  }

  v20 = *(*(a1 + 32) + 32);
  v21 = _NRCopyLogObjectForNRUUID();
  v22 = _NRLogIsLevelEnabled();

  if (v22)
  {
    v23 = *(*(a1 + 32) + 32);
    v24 = _NRCopyLogObjectForNRUUID();
    v25 = [*(a1 + 32) copyDescription];
    if (v5)
    {
      v26 = *(v5 + 2);
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;
    v28 = sub_10015E4BC(v27);
    v42 = _NRKeyCreateLogString();
    _NRLogWithArgs();
  }

  v29 = *(*(a1 + 32) + 32);
  v30 = _NRCopyLogObjectForNRUUID();
  v31 = _NRLogIsLevelEnabled();

  if (v31)
  {
    v32 = *(*(a1 + 32) + 32);
    v33 = _NRCopyLogObjectForNRUUID();
    v34 = [*(a1 + 32) copyDescription];
    if (v5)
    {
      v35 = *(v5 + 3);
      v36 = v35;
      if (v35)
      {
        v37 = *(v35 + 2);
LABEL_17:
        v38 = v37;
        v43 = _NRKeyCreateLogString();
        _NRLogWithArgs();

        goto LABEL_18;
      }
    }

    else
    {
      v36 = 0;
    }

    v37 = 0;
    goto LABEL_17;
  }

LABEL_18:
  v39 = *(a1 + 32);
  if (v39)
  {
    sub_100084C80(v39, 3, 0, 0);
  }
}

void sub_10008D708(uint64_t a1, void *a2)
{
  v3 = a2;
  v44 = v3;
  if (v3)
  {
    v4 = *(v3 + 11);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = *(*(a1 + 32) + 32);
  v7 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v9 = *(*(a1 + 32) + 32);
    v10 = _NRCopyLogObjectForNRUUID();
    v40 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs();
  }

  v11 = *(*(a1 + 32) + 32);
  v12 = _NRCopyLogObjectForNRUUID();
  v13 = _NRLogIsLevelEnabled();

  if (v13)
  {
    v14 = *(*(a1 + 32) + 32);
    v15 = _NRCopyLogObjectForNRUUID();
    v16 = [*(a1 + 32) copyDescription];
    if (v5)
    {
      v17 = *(v5 + 1);
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
    v19 = sub_10015E4BC(v18);
    LogString = _NRKeyCreateLogString();
    _NRLogWithArgs();
  }

  v20 = *(*(a1 + 32) + 32);
  v21 = _NRCopyLogObjectForNRUUID();
  v22 = _NRLogIsLevelEnabled();

  if (v22)
  {
    v23 = *(*(a1 + 32) + 32);
    v24 = _NRCopyLogObjectForNRUUID();
    v25 = [*(a1 + 32) copyDescription];
    if (v5)
    {
      v26 = *(v5 + 2);
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;
    v28 = sub_10015E4BC(v27);
    v42 = _NRKeyCreateLogString();
    _NRLogWithArgs();
  }

  v29 = *(*(a1 + 32) + 32);
  v30 = _NRCopyLogObjectForNRUUID();
  v31 = _NRLogIsLevelEnabled();

  if (v31)
  {
    v32 = *(*(a1 + 32) + 32);
    v33 = _NRCopyLogObjectForNRUUID();
    v34 = [*(a1 + 32) copyDescription];
    if (v5)
    {
      v35 = *(v5 + 3);
      v36 = v35;
      if (v35)
      {
        v37 = *(v35 + 2);
LABEL_17:
        v38 = v37;
        v43 = _NRKeyCreateLogString();
        _NRLogWithArgs();

        goto LABEL_18;
      }
    }

    else
    {
      v36 = 0;
    }

    v37 = 0;
    goto LABEL_17;
  }

LABEL_18:
  v39 = *(a1 + 32);
  if (v39)
  {
    sub_100084C80(v39, 1, 0, 0);
  }
}

void sub_10008DA14(uint64_t a1, void *a2)
{
  v43 = a2;
  v3 = *(*(a1 + 32) + 32);
  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v6 = *(*(a1 + 32) + 32);
    v7 = _NRCopyLogObjectForNRUUID();
    v39 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs();
  }

  if (v43)
  {
    v8 = v43[9];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = *(*(a1 + 32) + 32);
  v11 = _NRCopyLogObjectForNRUUID();
  v12 = _NRLogIsLevelEnabled();

  if (v12)
  {
    v13 = *(*(a1 + 32) + 32);
    v14 = _NRCopyLogObjectForNRUUID();
    v15 = [*(a1 + 32) copyDescription];
    if (v9)
    {
      v16 = *(v9 + 1);
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v18 = sub_10015E4BC(v17);
    LogString = _NRKeyCreateLogString();
    _NRLogWithArgs();
  }

  v19 = *(*(a1 + 32) + 32);
  v20 = _NRCopyLogObjectForNRUUID();
  v21 = _NRLogIsLevelEnabled();

  if (v21)
  {
    v22 = *(*(a1 + 32) + 32);
    v23 = _NRCopyLogObjectForNRUUID();
    v24 = [*(a1 + 32) copyDescription];
    if (v9)
    {
      v25 = *(v9 + 2);
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;
    v27 = sub_10015E4BC(v26);
    v41 = _NRKeyCreateLogString();
    _NRLogWithArgs();
  }

  v28 = *(*(a1 + 32) + 32);
  v29 = _NRCopyLogObjectForNRUUID();
  v30 = _NRLogIsLevelEnabled();

  if (v30)
  {
    v31 = *(*(a1 + 32) + 32);
    v32 = _NRCopyLogObjectForNRUUID();
    v33 = [*(a1 + 32) copyDescription];
    if (v9)
    {
      v34 = *(v9 + 3);
      v35 = v34;
      if (v34)
      {
        v36 = *(v34 + 2);
LABEL_17:
        v37 = v36;
        v42 = _NRKeyCreateLogString();
        _NRLogWithArgs();

        goto LABEL_18;
      }
    }

    else
    {
      v35 = 0;
    }

    v36 = 0;
    goto LABEL_17;
  }

LABEL_18:
  v38 = *(a1 + 32);
  if (v38)
  {
    sub_100084C80(v38, 4, 0, 0);
  }
}

void sub_10008DD24(uint64_t a1, void *a2)
{
  v43 = a2;
  v3 = *(*(a1 + 32) + 32);
  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v6 = *(*(a1 + 32) + 32);
    v7 = _NRCopyLogObjectForNRUUID();
    v39 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs();
  }

  if (v43)
  {
    v8 = v43[10];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = *(*(a1 + 32) + 32);
  v11 = _NRCopyLogObjectForNRUUID();
  v12 = _NRLogIsLevelEnabled();

  if (v12)
  {
    v13 = *(*(a1 + 32) + 32);
    v14 = _NRCopyLogObjectForNRUUID();
    v15 = [*(a1 + 32) copyDescription];
    if (v9)
    {
      v16 = *(v9 + 1);
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v18 = sub_10015E4BC(v17);
    LogString = _NRKeyCreateLogString();
    _NRLogWithArgs();
  }

  v19 = *(*(a1 + 32) + 32);
  v20 = _NRCopyLogObjectForNRUUID();
  v21 = _NRLogIsLevelEnabled();

  if (v21)
  {
    v22 = *(*(a1 + 32) + 32);
    v23 = _NRCopyLogObjectForNRUUID();
    v24 = [*(a1 + 32) copyDescription];
    if (v9)
    {
      v25 = *(v9 + 2);
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;
    v27 = sub_10015E4BC(v26);
    v41 = _NRKeyCreateLogString();
    _NRLogWithArgs();
  }

  v28 = *(*(a1 + 32) + 32);
  v29 = _NRCopyLogObjectForNRUUID();
  v30 = _NRLogIsLevelEnabled();

  if (v30)
  {
    v31 = *(*(a1 + 32) + 32);
    v32 = _NRCopyLogObjectForNRUUID();
    v33 = [*(a1 + 32) copyDescription];
    if (v9)
    {
      v34 = *(v9 + 3);
      v35 = v34;
      if (v34)
      {
        v36 = *(v34 + 2);
LABEL_17:
        v37 = v36;
        v42 = _NRKeyCreateLogString();
        _NRLogWithArgs();

        goto LABEL_18;
      }
    }

    else
    {
      v35 = 0;
    }

    v36 = 0;
    goto LABEL_17;
  }

LABEL_18:
  v38 = *(a1 + 32);
  if (v38)
  {
    sub_100084C80(v38, 3, 0, 0);
  }
}

void sub_10008E034(uint64_t a1, void *a2)
{
  v3 = a2;
  v45 = v3;
  if (v3)
  {
    v4 = *(v3 + 11);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = *(*(a1 + 32) + 32);
  v7 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v9 = *(*(a1 + 32) + 32);
    v10 = _NRCopyLogObjectForNRUUID();
    v41 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs();
  }

  v11 = *(*(a1 + 32) + 32);
  v12 = _NRCopyLogObjectForNRUUID();
  v13 = _NRLogIsLevelEnabled();

  if (v13)
  {
    v14 = *(*(a1 + 32) + 32);
    v15 = _NRCopyLogObjectForNRUUID();
    v16 = [*(a1 + 32) copyDescription];
    if (v5)
    {
      v17 = *(v5 + 1);
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
    v19 = sub_10015E4BC(v18);
    LogString = _NRKeyCreateLogString();
    _NRLogWithArgs();
  }

  v20 = *(*(a1 + 32) + 32);
  v21 = _NRCopyLogObjectForNRUUID();
  v22 = _NRLogIsLevelEnabled();

  if (v22)
  {
    v23 = *(*(a1 + 32) + 32);
    v24 = _NRCopyLogObjectForNRUUID();
    v25 = [*(a1 + 32) copyDescription];
    if (v5)
    {
      v26 = *(v5 + 2);
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;
    v28 = sub_10015E4BC(v27);
    v43 = _NRKeyCreateLogString();
    _NRLogWithArgs();
  }

  v29 = *(*(a1 + 32) + 32);
  v30 = _NRCopyLogObjectForNRUUID();
  v31 = _NRLogIsLevelEnabled();

  if (v31)
  {
    v32 = *(*(a1 + 32) + 32);
    v33 = _NRCopyLogObjectForNRUUID();
    v34 = [*(a1 + 32) copyDescription];
    if (v5)
    {
      v35 = *(v5 + 3);
      v36 = v35;
      if (v35)
      {
        v37 = *(v35 + 2);
LABEL_17:
        v38 = v37;
        v44 = _NRKeyCreateLogString();
        _NRLogWithArgs();

        goto LABEL_18;
      }
    }

    else
    {
      v36 = 0;
    }

    v37 = 0;
    goto LABEL_17;
  }

LABEL_18:
  v39 = *(a1 + 32);
  if (v39)
  {
    *(v39 + 275) = 0;
    v40 = *(a1 + 32);
    if (v40)
    {
      sub_100084C80(v40, 1, 0, 0);
    }
  }
}

void sub_10008E354(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = v3[4];
    v5 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = *(*(a1 + 32) + 32);
      v8 = _NRCopyLogObjectForNRUUID();
      v10 = [*(a1 + 32) copyDescription];
      v11 = *(a1 + 40);
      _NRLogWithArgs();
    }

    v9 = *(a1 + 32);
    if (v9)
    {

      sub_100084C80(v9, 4, 0, 0);
    }
  }

  else
  {
    [v3 cancelWithReason:{@"initiatorLocalPublicClassDKeysEncryptedWithIDS was not received on %@", *(a1 + 40)}];
  }
}

void sub_10008E454(uint64_t a1, int a2)
{
  v4 = *(*(a1 + 32) + 32);
  v5 = _NRCopyLogObjectForNRUUID();
  if (a2)
  {
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = *(*(a1 + 32) + 32);
      v8 = _NRCopyLogObjectForNRUUID();
      v12 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs();
    }

    v9 = *(a1 + 32);
    if (v9)
    {

      sub_100084C80(v9, 4, 0, 0);
    }
  }

  else
  {
    v10 = _NRLogIsLevelEnabled();

    if (v10)
    {
      v11 = *(*(a1 + 32) + 32);
      v14 = _NRCopyLogObjectForNRUUID();
      v13 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs();
    }
  }
}

void sub_10008E7E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008E814(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    --*(WeakRetained + 359);
    v21 = WeakRetained;
    if ((*(WeakRetained + 359) & 0x80000000) != 0)
    {
      v4 = *(WeakRetained + 4);
      v5 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v7 = *(v21 + 4);
        v8 = _NRCopyLogObjectForNRUUID();
        v17 = [v21 copyDescription];
        v18 = *(v21 + 359);
        _NRLogWithArgs();
      }

      WeakRetained = v21;
      *(v21 + 359) = 0;
    }

    v9 = *(WeakRetained + 4);
    v10 = _NRCopyLogObjectForNRUUID();
    if (!a2)
    {
      v14 = _NRLogIsLevelEnabled();

      WeakRetained = v21;
      if (!v14)
      {
        goto LABEL_15;
      }

      v15 = *(v21 + 4);
      v16 = _NRCopyLogObjectForNRUUID();
      v20 = [v21 copyDescription];
      _NRLogWithArgs();

      goto LABEL_14;
    }

    v11 = _NRLogIsLevelEnabled();

    if (v11)
    {
      v12 = *(v21 + 4);
      v13 = _NRCopyLogObjectForNRUUID();
      v19 = [v21 copyDescription];
      _NRLogWithArgs();
    }

    WeakRetained = v21;
    if (v21[271] == 1 && !*(v21 + 359))
    {
      sub_10008EA14(v21, 1);
LABEL_14:
      WeakRetained = v21;
    }
  }

LABEL_15:
}

void sub_10008EA14(uint64_t a1, int a2)
{
  if (a1)
  {
    v2 = a2;
    *(a1 + 271) = 0;
    if (*(a1 + 272) != a2)
    {
      v4 = *(a1 + 32);
      v5 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v7 = *(a1 + 32);
        v8 = _NRCopyLogObjectForNRUUID();
        v9 = [a1 copyDescription];
        v10 = *(a1 + 272);
        _NRLogWithArgs();
      }

      *(a1 + 272) = v2;

      sub_10008EB24(a1);
    }
  }
}

void sub_10008EB24(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  if (*(a1 + 272) == 1)
  {
    v2 = *(a1 + 32);
    v3 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v5 = *(a1 + 32);
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [a1 copyDescription];
      [*(a1 + 1479) availability];
      _NRLogWithArgs();
    }

    v8 = *(a1 + 1479);

    [v8 setAvailability:0];
    return;
  }

  v9 = [a1 shoesProxyAgentRegistration];
  if (v9)
  {
    v10 = [a1 state] == 8;
  }

  else
  {
    v11 = [a1 publishedMasqueProxyConfig];
    if (v11)
    {
      v10 = [a1 state] == 8;
    }

    else
    {
      v10 = 0;
    }
  }

  v12 = [a1 hasCompanionDatapath];
  v13 = [a1 nrUUID];
  v40 = sub_100163A30(NRDLocalDevice, v13);

  if ((v12 & 1) == 0)
  {
    if (v40)
    {
      v20 = *(v40 + 144);
      if (v20)
      {
        v21 = 0;
      }

      else
      {
        v21 = v10;
      }

      if (!v21)
      {
        v22 = *(v40 + 144);
        if (v22 && (v23 = v22, v24 = *(v40 + 144), v25 = [v24 requiresReachability] & v10, v24, v23, v25 == 1))
        {
          [a1 virtualInterface];
          NEVirtualInterfaceSetRankLast();
          [a1 virtualInterface];
          NEVirtualInterfaceSetRankPrimaryEligible();
        }

        else
        {
          [a1 virtualInterface];
          NEVirtualInterfaceSetRankLast();
        }
      }

      [a1 virtualInterface];
      NEVirtualInterfaceUpdateAdHocService();
      goto LABEL_35;
    }

    v35 = sub_10007CF34();
    v36 = _NRLogIsLevelEnabled();

    if (v36)
    {
      v37 = sub_10007CF34();
      _NRLogWithArgs();
    }

LABEL_43:
    _os_log_pack_size();
    v38 = *__error();
    v39 = _os_log_pack_fill();
    *v39 = 136446210;
    *(v39 + 4) = "[NRLinkBluetooth setPacketNexusAvailability]";
    sub_10007CF34();
    _NRLogAbortWithPack();
    return;
  }

  if (!v40)
  {
    v32 = sub_10007CF34();
    v33 = _NRLogIsLevelEnabled();

    if (v33)
    {
      v34 = sub_10007CF34();
      _NRLogWithArgs();
    }

    goto LABEL_43;
  }

  v14 = *(v40 + 144);

  if (v14 && (v15 = *(v40 + 144)) != 0)
  {
    v16 = v15;
    v17 = *(v40 + 144);
    v18 = [v17 requiresReachability] & v10;

    if (v18)
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 1;
  }

  v26 = *(a1 + 32);
  v27 = _NRCopyLogObjectForNRUUID();
  v28 = _NRLogIsLevelEnabled();

  if (v28)
  {
    v29 = *(a1 + 32);
    v30 = _NRCopyLogObjectForNRUUID();
    v31 = [a1 copyDescription];
    [*(a1 + 1479) availability];
    _NRLogWithArgs();
  }

  [*(a1 + 1479) setAvailability:{v19, v40}];
LABEL_35:
}

void sub_10008F50C(uint64_t a1, uint64_t a2)
{
  if (!a1 || [a1 state] == 255)
  {
    return;
  }

  if (gNRPacketLoggingEnabled == 1)
  {
    v22 = sub_10007CF34();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v24 = sub_10007CF34();
      _NRLogWithArgs();
    }
  }

  if (a2 != 2)
  {
    if (a2 != 1)
    {
      return;
    }

    v4 = 285;
    goto LABEL_10;
  }

  if (*(a1 + 286) == 1)
  {
    if (gNRPacketLoggingEnabled == 1)
    {
      v25 = sub_10007CF34();
      v26 = _NRLogIsLevelEnabled();

      if (v26)
      {
        v27 = sub_10007CF34();
        _NRLogWithArgs();
      }
    }

    v4 = 287;
LABEL_10:
    *(a1 + v4) = 1;
    return;
  }

  *(a1 + 287) = 0;
  if (gNRPacketLoggingEnabled == 1)
  {
    v28 = sub_10007CF34();
    v29 = _NRLogIsLevelEnabled();

    if (v29)
    {
      v30 = sub_10007CF34();
      _NRLogWithArgs();
    }
  }

  bzero(v65, 0x5DCuLL);
  v64 = 0;
  v5 = *(a1 + 1439);
  if (!v5)
  {
    *(a1 + 1447) = 0x4000;
    v31 = malloc_type_malloc(0x4000uLL, 0x7F334A19uLL);
    if (!v31)
    {
      goto LABEL_77;
    }

    v5 = v31;
    *(a1 + 1439) = v31;
  }

  v6 = *(a1 + 363);
  if (v6)
  {
    v7 = v6 - *(a1 + 367);
    if (v7 >= 0x5DC)
    {
      v8 = 1500;
    }

    else
    {
      v8 = v7;
    }

    __memcpy_chk();
    if (gNRPacketLoggingEnabled == 1)
    {
      v9 = sub_10007CF34();
      v59 = _NRLogIsLevelEnabled();

      if (v59)
      {
        v10 = sub_10007CF34();
        _NRLogWithArgs();
      }
    }
  }

  else
  {
    v8 = [*(a1 + 1423) read:v65 maxLength:1500];
    if ((v8 & 0x8000000000000000) != 0)
    {
      if (gNRPacketLoggingEnabled)
      {
        v19 = sub_10007CF34();
        v20 = _NRLogIsLevelEnabled();

        if (v20)
        {
          v21 = sub_10007CF34();
          _NRLogWithArgs();
        }
      }

      return;
    }

    if (gNRPacketLoggingEnabled)
    {
      v35 = sub_10007CF34();
      v62 = _NRLogIsLevelEnabled();

      if (v62)
      {
        v36 = sub_10007CF34();
        _NRLogWithArgs();
      }
    }

    *(a1 + 743) += v8;
  }

  v11 = *(a1 + 1407);
  if (!v11)
  {
    return;
  }

  v12 = (*(v11 + 8))(*v11, v65, v8, &v64, 0, 0);
  if (gNRPacketLoggingEnabled == 1)
  {
    v60 = sub_10007CF34();
    v58 = _NRLogIsLevelEnabled();

    if (v58)
    {
      v61 = sub_10007CF34();
      _NRLogWithArgs();
    }
  }

  v13 = v64;
  if (v6)
  {
    v14 = *(a1 + 367) + v64;
    *(a1 + 367) = v14;
    if (*(a1 + 363) == v14)
    {
      if (gNRPacketLoggingEnabled == 1)
      {
        v37 = sub_10007CF34();
        v63 = _NRLogIsLevelEnabled();

        if (v63)
        {
          v38 = sub_10007CF34();
          _NRLogWithArgs();
        }
      }

      *(a1 + 367) = 0;
      *(a1 + 363) = 0;
      v13 = v64;
    }
  }

  v15 = v8 > v13;
  v16 = v8 - v13;
  if (!v15)
  {
    if (v12)
    {
      if ([*(a1 + 1423) hasBytesAvailable])
      {
        sub_10008F50C(a1, 2);
      }

      else
      {
        (*(*(a1 + 1407) + 16))(**(a1 + 1407));
      }

      return;
    }

    goto LABEL_38;
  }

  v17 = *(a1 + 363);
  v18 = *(a1 + 1447);
  if (v16 + v17 >= v18)
  {
    if (v16 + v17 >= 0x8000)
    {
      [a1 cancelWithReason:{@"unexpected buffer size requirement for pending %u bytes", v16 + v17}];
      return;
    }

    *(a1 + 1447) = v18 + 0x7FFF;
    if (v18 + 0x7FFF >= 0x1FFFD)
    {
      [a1 cancelWithReason:{@"unexpected buffer size requirement %u bytes", v18 + 0x7FFF}];
      return;
    }

    if (gNRPacketLoggingEnabled == 1)
    {
      v41 = sub_10007CF34();
      v42 = _NRLogIsLevelEnabled();

      if (v42)
      {
        v43 = sub_10007CF34();
        v57 = *(a1 + 1447);
        _NRLogWithArgs();
      }
    }

    v39 = *(a1 + 1447);
    if (!v39)
    {
      v44 = sub_10007CF34();
      v45 = _NRLogIsLevelEnabled();

      if (v45)
      {
        v46 = sub_10007CF34();
        _NRLogWithArgs();
      }

      goto LABEL_72;
    }

    v40 = reallocf(*(a1 + 1439), v39);
    if (!v40)
    {
      v49 = sub_10007CF34();
      v50 = _NRLogIsLevelEnabled();

      if (v50)
      {
        v51 = sub_10007CF34();
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      v52 = *__error();
      v53 = _os_log_pack_fill();
      *v53 = 136446466;
      *(v53 + 4) = "[NRLinkBluetooth handleReadStreamEvent:]";
      *(v53 + 12) = 2048;
      *(v53 + 14) = v39;
      while (1)
      {
        sub_10007CF34();
        _NRLogAbortWithPack();
LABEL_77:
        v54 = sub_10007CF34();
        v55 = _NRLogIsLevelEnabled();

        if (v55)
        {
          v56 = sub_10007CF34();
          _NRLogWithArgs();
        }

LABEL_72:
        _os_log_pack_size();
        v47 = *__error();
        v48 = _os_log_pack_fill();
        *v48 = 136446210;
        *(v48 + 4) = "[NRLinkBluetooth handleReadStreamEvent:]";
      }
    }

    v5 = v40;
    *(a1 + 1439) = v40;
    v17 = *(a1 + 363);
    v13 = v64;
  }

  memcpy(&v5[v17], &v65[v13], v16);
  *(a1 + 363) += v16;
  (*(*(a1 + 1407) + 16))(**(a1 + 1407));
  if ((v12 & 1) == 0)
  {
LABEL_38:
    if (gNRPacketLoggingEnabled == 1)
    {
      v32 = sub_10007CF34();
      v33 = _NRLogIsLevelEnabled();

      if (v33)
      {
        v34 = sub_10007CF34();
        _NRLogWithArgs();
      }
    }

    *(a1 + 286) = 1;
    *(a1 + 287) = [*(a1 + 1423) hasBytesAvailable];
  }
}

uint64_t sub_100090058(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 407))
    {
      if (!*(result + 1399))
      {
        v2 = [[NRDeviceIdentifier alloc] initWithUUID:*(result + 32)];
        v3 = [[NRBluetoothPacketParser alloc] initWithDeviceIdentifier:v2 queue:*(v1 + 8)];
        [v3 setDirect:1];
        [v3 setIsNotEncapsulated:*(v1 + 128)];
        if ([v3 isNotEncapsulated])
        {
          [v3 setUses6LoWPAN:*(v1 + 282)];
        }

        if (*(v1 + 282) == 1)
        {
          [v3 setDatagramMode:1];
          v4 = 3;
        }

        else
        {
          v4 = 1;
        }

        v10 = [v3 createReadContextForPriority:v4 readAvailableCallback:sub_1000ACA88 readAvailableContext:v1];
        v11 = [v3 createWriteContextForPriority:v4 writeOutputCallback:sub_1000AC608 writeOutputContext:v1];
        objc_initWeak(&location, v1);
        v31 = _NSConcreteStackBlock;
        v32 = 3221225472;
        v33 = sub_100090E30;
        v34 = &unk_1001FAF98;
        objc_copyWeak(&v35, &location);
        [v3 setReceiveXPCCommDictionaryHandler:&v31];
        [v3 start];
        objc_storeStrong((v1 + 1399), v3);
        *(v1 + 1407) = v10;
        *(v1 + 1415) = v11;
        if (*(v1 + 282) == 1)
        {
          *(v1 + 285) = 1;
          *(v1 + 288) = 1;
          sub_100090EA4(v1);
        }

        else
        {
          v12 = [*(v1 + 407) inputStream];
          v13 = *(v1 + 1423);
          *(v1 + 1423) = v12;

          CFReadStreamSetDispatchQueue(*(v1 + 1423), *(v1 + 8));
          [*(v1 + 1423) setDelegate:v1];
          *(v1 + 285) = 0;
          if (qword_100229088 != -1)
          {
            dispatch_once(&qword_100229088, &stru_1001FB1C0);
          }

          v14 = qword_100229080;
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            if (qword_100229088 != -1)
            {
              dispatch_once(&qword_100229088, &stru_1001FB1C0);
            }

            v16 = qword_100229080;
            v26 = 3302;
            v28 = *(v1 + 1423);
            v22 = "";
            v24 = "[NRLinkBluetooth setupParserForL2CAPChannel]";
            _NRLogWithArgs();
          }

          [*(v1 + 1423) open];
          v17 = [*(v1 + 407) outputStream];
          v18 = *(v1 + 1431);
          *(v1 + 1431) = v17;

          CFWriteStreamSetDispatchQueue(*(v1 + 1431), *(v1 + 8));
          [*(v1 + 1431) setDelegate:v1];
          *(v1 + 288) = 0;
          if (qword_100229088 != -1)
          {
            dispatch_once(&qword_100229088, &stru_1001FB1C0);
          }

          v19 = qword_100229080;
          v20 = _NRLogIsLevelEnabled();

          if (v20)
          {
            if (qword_100229088 != -1)
            {
              dispatch_once(&qword_100229088, &stru_1001FB1C0);
            }

            v21 = qword_100229080;
            v27 = 3309;
            v30 = *(v1 + 1431);
            v23 = "";
            v25 = "[NRLinkBluetooth setupParserForL2CAPChannel]";
            _NRLogWithArgs();
          }

          [*(v1 + 1431) open];
        }

        objc_destroyWeak(&v35);
        objc_destroyWeak(&location);
      }

      return 1;
    }

    else
    {
      v5 = *(result + 32);
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = _NRLogIsLevelEnabled();

      if (v7)
      {
        v8 = *(v1 + 32);
        v9 = _NRCopyLogObjectForNRUUID();
        v29 = [v1 copyDescription];
        _NRLogWithArgs();
      }

      return 0;
    }
  }

  return result;
}

void sub_100090518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100090538(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ([result virtualInterface])
    {
      return 1;
    }

    else
    {
      if ([v1 subtype] != 121)
      {
        objc_opt_self();
        if (qword_1002290C0 == -1)
        {
          goto LABEL_7;
        }

        goto LABEL_26;
      }

      v2 = [v1 queue];
      [v1 setVirtualInterface:NEVirtualInterfaceCreateNexus()];

      while ([v1 virtualInterface])
      {
        [v1 virtualInterface];
        NEVirtualInterfaceEnableFlowswitch();
        v7 = [v1 nrUUID];
        v8 = sub_100163A30(NRDLocalDevice, v7);

        if (v8)
        {
          if (sub_10008A218(v1))
          {
            [v1 virtualInterface];
            v9 = NEVirtualInterfaceCopyName();
            v10 = v1[4];
            v11 = _NRCopyLogObjectForNRUUID();
            IsLevelEnabled = _NRLogIsLevelEnabled();

            if (IsLevelEnabled)
            {
              v13 = v1[4];
              v14 = _NRCopyLogObjectForNRUUID();
              v25 = [v1 copyDescription];
              _NRLogWithArgs();
            }

            v15 = 1;
LABEL_18:
          }

          else
          {
            v15 = 0;
          }

          return v15;
        }

        v20 = sub_10007CF34();
        v21 = _NRLogIsLevelEnabled();

        if (v21)
        {
          v22 = sub_10007CF34();
          _NRLogWithArgs();
        }

        v1 = _os_log_pack_size();
        __chkstk_darwin();
        v23 = *__error();
        v24 = _os_log_pack_fill();
        *v24 = 136446210;
        *(v24 + 4) = "[NRLinkBluetooth setupUTUN]";
        sub_10007CF34();
        _NRLogAbortWithPack();
LABEL_26:
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
LABEL_7:
        v3 = qword_1002290B8;
        v4 = v3;
        if (v3)
        {
          v5 = v3[33];
        }

        else
        {
          v5 = 0;
        }

        v26[0] = 0;
        v26[1] = 0;
        [v5 getUUIDBytes:v26];
        v6 = [v1 queue];
        [v1 setVirtualInterface:NEVirtualInterfaceCreateNexusExtended()];
      }

      v16 = v1[4];
      v17 = _NRCopyLogObjectForNRUUID();
      v18 = _NRLogIsLevelEnabled();

      if (v18)
      {
        v19 = v1[4];
        v8 = _NRCopyLogObjectForNRUUID();
        v9 = [v1 copyDescription];
        _NRLogWithArgs();
        v15 = 0;
        goto LABEL_18;
      }

      return 0;
    }
  }

  return result;
}

void sub_100090978(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = objc_alloc_init(NSMutableArray);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v21 + 1) + 8 * i) UUIDString];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    [v4 setObject:v5 forKeyedSubscript:@"nexus-instances"];
    if ([a1 virtualInterface])
    {
      [a1 virtualInterface];
      if (NEVirtualInterfaceGetType() == 1)
      {
        v12 = [[NSNumber alloc] initWithUnsignedShort:4];
        [v4 setObject:v12 forKeyedSubscript:@"ip-header-offset"];
      }
    }

    v13 = v4;
    v14 = *(a1 + 1399);
    if (v14 && [v14 direct])
    {
      [*(a1 + 1399) sendXPCCommDictionary:v13];
    }

    else
    {
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v15 = qword_1002290B8;
      v16 = v15;
      if (v15)
      {
        v17 = *(a1 + 32);
        v18 = *(v15 + 28);
        v19 = v13;
        v20 = [v18 objectForKeyedSubscript:v17];
        sub_100114680(v20, v19);
      }
    }

    sub_1000896EC(a1);
  }
}

void sub_100090BF4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v25 = v5;
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = [[NSNumber alloc] initWithUnsignedInt:a2];
    [v6 setObject:v7 forKeyedSubscript:@"activate-datapath-offset"];

    [v6 setObject:v25 forKeyedSubscript:@"channel-id"];
    v8 = objc_alloc_init(NSMutableDictionary);
    [v8 setObject:v6 forKeyedSubscript:@"activate-datapath"];
    v9 = v8;
    v10 = *(a1 + 1399);
    if (v10 && [v10 direct])
    {
      [*(a1 + 1399) sendXPCCommDictionary:v9];
    }

    else
    {
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v11 = qword_1002290B8;
      v12 = v11;
      if (v11)
      {
        v13 = *(a1 + 32);
        v14 = *(v11 + 28);
        v15 = v9;
        v16 = [v14 objectForKeyedSubscript:v13];
        sub_100114680(v16, v15);
      }
    }

    v17 = [v25 integerValue];
    if (v17 == 3)
    {
      v18 = 296;
    }

    else if (v17 == 2)
    {
      v18 = 295;
    }

    else
    {
      if (v17 != 1)
      {
        v19 = *(a1 + 32);
        v20 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v22 = *(a1 + 32);
          v23 = _NRCopyLogObjectForNRUUID();
          v24 = [a1 copyDescription];
          _NRLogWithArgs();
        }

        goto LABEL_17;
      }

      v18 = 294;
    }

    *(a1 + v18) = 1;
LABEL_17:

    v5 = v25;
  }
}

void sub_100090E30(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && [WeakRetained state] != 255)
  {
    sub_100091434(v4, v5);
  }
}

void sub_100090EA4(char *val)
{
  if (*(val + 407) && val[285] == 1 && (val[286] & 1) == 0 && (val[284] & 1) == 0)
  {
    val[284] = 1;
    objc_initWeak(&location, val);
    v2 = *(val + 407);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100090FB4;
    v3[3] = &unk_1001FAFC0;
    objc_copyWeak(&v4, &location);
    [v2 readPacketsWithCompletionHandler:v3];
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

void sub_100090F98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100090FB4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained && [WeakRetained state] != 255)
  {
    v8[284] = 0;
    if (v6)
    {
      if (qword_100229088 != -1)
      {
        dispatch_once(&qword_100229088, &stru_1001FB1C0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229088 != -1)
        {
          dispatch_once(&qword_100229088, &stru_1001FB1C0);
        }

        _NRLogWithArgs();
      }
    }

    else
    {
      if (gNRPacketLoggingEnabled == 1)
      {
        v26 = sub_10007CF34();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v28 = sub_10007CF34();
          v31 = 3342;
          v32 = [v5 count];
          v29 = "";
          v30 = "[NRLinkBluetooth readPacketsFromL2CAPChannel]_block_invoke";
          _NRLogWithArgs();
        }
      }

      if (*(v8 + 1407))
      {
        v35 = v5;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v9 = v5;
        v10 = [v9 countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v38;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v38 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v37 + 1) + 8 * i);
              v36 = 0;
              v15 = [v14 bytes];
              v16 = [v14 length];
              *(v8 + 743) += v16;
              v17 = (*(*(v8 + 1407) + 8))(**(v8 + 1407), v15, v16, &v36, 0, 0);
              if (gNRPacketLoggingEnabled == 1)
              {
                if (qword_100229088 != -1)
                {
                  dispatch_once(&qword_100229088, &stru_1001FB1C0);
                }

                v21 = qword_100229080;
                v34 = _NRLogIsLevelEnabled();

                if (v34)
                {
                  v22 = sub_10007CF34();
                  v32 = v36;
                  v33 = v16;
                  v31 = 3355;
                  v29 = "";
                  v30 = "[NRLinkBluetooth readPacketsFromL2CAPChannel]_block_invoke";
                  _NRLogWithArgs();
                }
              }

              if (v36 < v16 && (gNRPacketLoggingEnabled & 1) != 0)
              {
                v23 = sub_10007CF34();
                v24 = _NRLogIsLevelEnabled();

                if (v24)
                {
                  v25 = sub_10007CF34();
                  v31 = 3357;
                  v29 = "";
                  v30 = "[NRLinkBluetooth readPacketsFromL2CAPChannel]_block_invoke";
                  _NRLogWithArgs();
                }
              }

              if ((v17 & 1) == 0)
              {
                if (gNRPacketLoggingEnabled == 1)
                {
                  v18 = sub_10007CF34();
                  v19 = _NRLogIsLevelEnabled();

                  if (v19)
                  {
                    v20 = sub_10007CF34();
                    v31 = 3360;
                    v29 = "";
                    v30 = "[NRLinkBluetooth readPacketsFromL2CAPChannel]_block_invoke";
                    _NRLogWithArgs();
                  }
                }

                v8[286] = 1;
                v8[287] = 1;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v37 objects:v41 count:16];
          }

          while (v11);
        }

        (*(*(v8 + 1407) + 16))(**(v8 + 1407));
        v6 = 0;
        v5 = v35;
      }

      sub_100090EA4(v8);
    }
  }
}

void sub_100091434(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [a1 state];
  if (!v3 || v4 == 255)
  {
    goto LABEL_56;
  }

  v5 = [v3 objectForKeyedSubscript:@"checkin"];
  if ([v5 BOOLValue] && objc_msgSend(a1, "state") == 8)
  {
    sub_100090BF4(a1, 0, &off_100209B90);
    if (*(a1 + 1199) && *(a1 + 269) == 1)
    {
      sub_100090BF4(a1, 0, &off_100209BA8);
    }

    if (*(a1 + 1119))
    {
      sub_100090BF4(a1, 0, &off_100209BC0);
    }

    v6 = [*(a1 + 1479) nexusInstances];
    sub_100090978(a1, v6);
  }

  v7 = [v3 objectForKeyedSubscript:@"message"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:@"message-data"];
    if (!v9)
    {
LABEL_30:

      goto LABEL_31;
    }

    v10 = [v8 objectForKeyedSubscript:@"channel-id"];
    v11 = [v8 objectForKeyedSubscript:@"message-pre-act"];
    v12 = [v11 BOOLValue];
    if ([v10 integerValue] == 1)
    {
      if (v12 && *(a1 + 294) == 1)
      {
        v13 = *(a1 + 32);
        v14 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v16 = *(a1 + 32);
          v17 = _NRCopyLogObjectForNRUUID();
          v18 = [a1 copyDescription];
          v50 = 6716;
          v51 = v18;
          v48 = "";
          v49 = "[NRLinkBluetooth processXPCCommDictionary:]";
LABEL_26:
          _NRLogWithArgs();

          goto LABEL_29;
        }

        goto LABEL_29;
      }

      v23 = a1;
      v24 = v9;
      v25 = 0;
    }

    else
    {
      if ([v10 integerValue] != 2)
      {
        v26 = *(a1 + 32);
        v27 = _NRCopyLogObjectForNRUUID();
        v28 = _NRLogIsLevelEnabled();

        if (v28)
        {
          v29 = *(a1 + 32);
          v17 = _NRCopyLogObjectForNRUUID();
          v18 = [a1 copyDescription];
          v48 = v18;
          v49 = v10;
          goto LABEL_26;
        }

        goto LABEL_29;
      }

      if (v12 && *(a1 + 295) == 1)
      {
        v19 = *(a1 + 32);
        v20 = _NRCopyLogObjectForNRUUID();
        v21 = _NRLogIsLevelEnabled();

        if (v21)
        {
          v22 = *(a1 + 32);
          v17 = _NRCopyLogObjectForNRUUID();
          v18 = [a1 copyDescription];
          v50 = 6722;
          v51 = v18;
          v48 = "";
          v49 = "[NRLinkBluetooth processXPCCommDictionary:]";
          goto LABEL_26;
        }

LABEL_29:

        goto LABEL_30;
      }

      v23 = a1;
      v24 = v9;
      v25 = 1;
    }

    sub_100091A38(v23, v24, v25);
    goto LABEL_29;
  }

LABEL_31:
  v30 = [v3 objectForKeyedSubscript:{@"datapath-report", v48, v49, v50, v51}];
  v31 = v30;
  if (v30)
  {
    v32 = [v30 objectForKeyedSubscript:@"datapath-report-stall"];
    if ([v32 BOOLValue])
    {
      v33 = [v31 objectForKeyedSubscript:@"channel-id-list"];
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v34 = [v33 countByEnumeratingWithState:&v52 objects:v59 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v53;
        do
        {
          for (i = 0; i != v35; i = i + 1)
          {
            if (*v53 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = [*(*(&v52 + 1) + 8 * i) integerValue] - 1;
            if (v38 <= 2)
            {
              sub_100091F34(a1, (&off_1001FB220)[v38]);
            }
          }

          v35 = [v33 countByEnumeratingWithState:&v52 objects:v59 count:16];
        }

        while (v35);
      }
    }

    v39 = [v31 objectForKeyedSubscript:@"datapath-report-remediate"];
    if ([v39 BOOLValue])
    {
      sub_100092178(a1);
    }
  }

  v40 = [v3 objectForKeyedSubscript:@"error"];
  v41 = v40;
  if (v40)
  {
    [a1 cancelWithReason:{@"parser internal error: %@", v40}];
  }

  v42 = [v3 objectForKeyedSubscript:@"wake-pkt-sn"];
  v43 = [v3 objectForKeyedSubscript:@"wake-pkt-spi"];
  if (v42)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v43)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v44 = [v42 unsignedIntValue];
          v45 = [v43 unsignedIntValue];
          v46 = v5;
          if (qword_100229268 != -1)
          {
            dispatch_once(&qword_100229268, &stru_1001FC3A0);
          }

          v47 = qword_100229260;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000922D0;
          block[3] = &unk_1001FCDD8;
          v57 = v45;
          v58 = v44;
          dispatch_async(v47, block);

          v5 = v46;
        }
      }
    }
  }

LABEL_56:
}

void sub_100091A38(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v40 = v5;
  if (!a3)
  {
    if (*(a1 + 16) - 1 > 1)
    {
      sub_100094EDC(a1, v5);
      v6 = 371;
      goto LABEL_18;
    }

    v7 = *(a1 + 371);
    v8 = v7 + [v5 length];
    if (*(a1 + 315) < v8)
    {
      v9 = *(a1 + 32);
      v10 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v12 = *(a1 + 32);
        v13 = _NRCopyLogObjectForNRUUID();
        v14 = [a1 copyDescription];
        v38 = *(a1 + 315);
        _NRLogWithArgs();
      }

      v15 = reallocf(*(a1 + 1455), v8);
      if (!v15)
      {
        v30 = sub_10007CF34();
        v31 = _NRLogIsLevelEnabled();

        if (v31)
        {
          v32 = sub_10007CF34();
          _NRLogWithArgs();
        }

        goto LABEL_27;
      }

      *(a1 + 1455) = v15;
      *(a1 + 315) = v8;
      *(a1 + 323) = (*(a1 + 315) + 1) >> 1;
    }

    v16 = *(a1 + 1455);
    v17 = *(a1 + 371);
    v18 = [v40 bytes];
    memcpy((v16 + v17), v18, [v40 length]);
    *(a1 + 371) += [v40 length];
    sub_100092390(a1, 0);
    goto LABEL_19;
  }

  if ((*(a1 + 269) & 1) == 0)
  {
    v19 = *(a1 + 379);
    v8 = v19 + [v5 length];
    if (*(a1 + 319) >= v8)
    {
LABEL_16:
      v27 = *(a1 + 1463);
      v28 = *(a1 + 379);
      v29 = [v40 bytes];
      memcpy((v27 + v28), v29, [v40 length]);
      *(a1 + 379) += [v40 length];
      sub_100092390(a1, 1);
      goto LABEL_19;
    }

    v20 = *(a1 + 32);
    v21 = _NRCopyLogObjectForNRUUID();
    v22 = _NRLogIsLevelEnabled();

    if (v22)
    {
      v23 = *(a1 + 32);
      v24 = _NRCopyLogObjectForNRUUID();
      v25 = [a1 copyDescription];
      v39 = *(a1 + 319);
      _NRLogWithArgs();
    }

    v26 = reallocf(*(a1 + 1463), v8);
    if (v26)
    {
      *(a1 + 1463) = v26;
      *(a1 + 319) = v8;
      *(a1 + 327) = (*(a1 + 319) + 1) >> 1;
      goto LABEL_16;
    }

    v33 = sub_10007CF34();
    v34 = _NRLogIsLevelEnabled();

    if (v34)
    {
      v35 = sub_10007CF34();
      _NRLogWithArgs();
    }

LABEL_27:
    _os_log_pack_size();
    v36 = *__error();
    v37 = _os_log_pack_fill();
    *v37 = 136446466;
    *(v37 + 4) = "[NRLinkBluetooth processXPCCommMessage:isUrgentLink:]";
    *(v37 + 12) = 2048;
    *(v37 + 14) = v8;
    sub_10007CF34();
    _NRLogAbortWithPack();
  }

  sub_100094EDC(a1, v5);
  v6 = 379;
LABEL_18:
  *(a1 + v6) = 0;
LABEL_19:
}

BOOL sub_100091F34(void *a1, const char *a2)
{
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v4 = qword_1002290B8;
  if (v4)
  {
    v5 = v4;
    v6 = sub_100003490();
    dispatch_assert_queue_V2(v6);

    v7 = v5[34];
    nr_absolute_time();
    NRDiffMachTimeInSeconds();
    v9 = v8;

    if (v9 > 0.0 && v9 < 3600.0)
    {
      return 0;
    }
  }

  v11 = a2 != 0;
  if (a2)
  {
    v26 = a2;
    v12 = [[NSString alloc] initWithFormat:@"%sOutput"];
    v13 = a1[4];
    v14 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v19 = a1[4];
      v20 = _NRCopyLogObjectForNRUUID();
      v27 = [a1 copyDescription];
      v26 = "";
      _NRLogWithArgs();
    }

    sub_10013C2A8(@"NRLinkBluetooth", @"Data stall", v12, 0, 0, v16, v17, v18, v26);
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v21 = qword_1002290B8;
    if (v21)
    {
      v22 = sub_100003490();
      dispatch_assert_queue_V2(v22);

      v21[34] = nr_absolute_time();
    }

    goto LABEL_16;
  }

  v23 = sub_10007CF34();
  v24 = _NRLogIsLevelEnabled();

  if (!v24)
  {
    return 0;
  }

  v12 = sub_10007CF34();
  _NRLogWithArgs();
LABEL_16:

  return v11;
}

uint64_t sub_100092178(uint64_t a1)
{
  if (*(a1 + 1119))
  {
    return 0;
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v4 = qword_1002290B8;
  if (v4)
  {
    v5 = v4;
    v6 = sub_100003490();
    dispatch_assert_queue_V2(v6);

    v7 = v5[35];
    nr_absolute_time();
    NRDiffMachTimeInSeconds();
    v9 = v8;

    if (v9 > 0.0 && v9 < 3600.0)
    {
      return 0;
    }
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v11 = qword_1002290B8;
  if (v11)
  {
    v12 = sub_100003490();
    dispatch_assert_queue_V2(v12);

    v11[35] = nr_absolute_time();
  }

  sub_100080EB4(a1, @"LinkStats - Remediating data stall", v13, v14, v15, v16, v17, v18, v1);
  return 1;
}

void sub_1000922D0(uint64_t a1)
{
  v4 = objc_alloc_init(NSMutableDictionary);
  v2 = [NSNumber numberWithUnsignedInt:*(a1 + 32)];
  [v4 setObject:v2 forKeyedSubscript:@"Packet SPI"];

  v3 = [NSNumber numberWithUnsignedInt:*(a1 + 36)];
  [v4 setObject:v3 forKeyedSubscript:@"Packet sequence number"];

  sub_100008D1C(@"NetworkRelay waking packet", v4);
}

void sub_100092390(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v5 = &OBJC_IVAR___NRLinkBluetooth__filledInUrgentLinkReadBufferBytes;
  if (!a2)
  {
    v5 = &OBJC_IVAR___NRLinkBluetooth__filledInLinkReadBufferBytes;
  }

  v6 = &OBJC_IVAR___NRLinkBluetooth__handledUrgentLinkReadBufferBytes;
  if (!a2)
  {
    v6 = &OBJC_IVAR___NRLinkBluetooth__handledLinkReadBufferBytes;
  }

  v7 = &OBJC_IVAR___NRLinkBluetooth__linkReadBuffer;
  if (a2)
  {
    v7 = &OBJC_IVAR___NRLinkBluetooth__urgentLinkReadBuffer;
  }

  v8 = *v6;
  v9 = *v5;
  if (*(a1 + v8) > *(a1 + v9))
  {
    v258 = sub_10007CF34();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v260 = sub_10007CF34();
      v329 = *(v4 + v8);
      v339 = *(v4 + v9);
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v10 = &v349 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v261 = *__error();
    v262 = _os_log_pack_fill();
    v263 = *(v4 + v8);
    v264 = *(v4 + v9);
    *v262 = 136446722;
    *(v262 + 4) = "[NRLinkBluetooth handleReadData:]";
    *(v262 + 12) = 1024;
    *(v262 + 14) = v263;
    *(v262 + 18) = 1024;
    *(v262 + 20) = v264;
LABEL_327:
    sub_10007CF34();
    _NRLogAbortWithPack();
  }

  else
  {
    v10 = *(a1 + *v7);
    v3 = &gNRPacketLoggingEnabled;
    if (gNRPacketLoggingEnabled != 1)
    {
      goto LABEL_9;
    }
  }

  v265 = *(v4 + 32);
  v2 = a2;
  v266 = _NRCopyLogObjectForNRUUID();
  v267 = _NRLogIsLevelEnabled();

  LODWORD(a2) = v2;
  if (v267)
  {
    v268 = *(v4 + 32);
    v269 = _NRCopyLogObjectForNRUUID();
    v270 = [v4 copyDescription];
    v340 = *(v4 + v9);
    v348 = *(v4 + v8);
    _NRLogWithArgs();

    LODWORD(a2) = v2;
  }

LABEL_9:
  if (a2)
  {
    if (*(v4 + 269) == 1)
    {
      v11 = *(v4 + 16);
LABEL_16:
      if ((v11 - 4) <= 5)
      {
        v20 = *(v4 + 371);
        v21 = (v4 + 375);
        v22 = *(v4 + 375);
        v23 = v22 + 1;
        if (v20 < v22 + 1)
        {
LABEL_18:
          v24 = v4;
          v25 = 1;
LABEL_19:

          sub_100096520(v24, v25);
          return;
        }

        while (1)
        {
          v36 = (*(v4 + 1455) + v22);
          v37 = *v36;
          if (*v36)
          {
            break;
          }

          *v21 = v23;
          v46 = *(v4 + 32);
          v47 = _NRCopyLogObjectForNRUUID();
          v48 = _NRLogIsLevelEnabled();

          if (v48)
          {
            v49 = *(v4 + 32);
            v50 = _NRCopyLogObjectForNRUUID();
            v51 = [v4 copyDescription];
            HIWORD(v348) = HIWORD(v51);
            _NRLogWithArgs();

LABEL_61:
          }

LABEL_35:
          v20 = *(v4 + 371);
          v21 = (v4 + 375);
          v22 = *(v4 + 375);
          v23 = v22 + 1;
          if (v20 < v22 + 1)
          {
            goto LABEL_18;
          }
        }

        if (v20 < v22 + 3)
        {
          v24 = v4;
          v25 = 3;
          goto LABEL_19;
        }

        v38 = bswap32(*(v36 + 1)) >> 16;
        v39 = v22 + v38 + 5;
        v40 = *v3;
        if (v20 < v39)
        {
          if (*v3)
          {
            v277 = *(v4 + 32);
            v278 = *v36;
            v279 = _NRCopyLogObjectForNRUUID();
            v280 = _NRLogIsLevelEnabled();

            if (v280)
            {
              v281 = *(v4 + 32);
              v282 = _NRCopyLogObjectForNRUUID();
              v283 = [v4 copyDescription];
              StringFromNRTLVType = createStringFromNRTLVType();
              v341 = (*(v4 + 371) - *(v4 + 375));
              _NRLogWithArgs();
            }
          }

          v25 = v38 + 5;
          v24 = v4;
          goto LABEL_19;
        }

        if (*v3)
        {
          v64 = *(v4 + 32);
          v65 = *v36;
          v66 = _NRCopyLogObjectForNRUUID();
          v67 = _NRLogIsLevelEnabled();

          v37 = v65;
          if (v67)
          {
            v68 = *(v4 + 32);
            v69 = _NRCopyLogObjectForNRUUID();
            v70 = [v4 copyDescription];
            v71 = createStringFromNRTLVType();
            v335 = (*(v4 + 371) - *(v4 + 375));
            _NRLogWithArgs();

            v37 = v65;
          }
        }

        v41 = *(v4 + 375);
        v42 = (*(v4 + 1455) + v41);
        v43 = v42 + 3;
        if (v37 < 100)
        {
          v52 = v37;
          v356 = &v349;
          v53 = *&v43[v38];
          if (v53 != ~os_inet_checksum())
          {
            v72 = v38;
            v109 = &qword_100229000;
            if (qword_100229088 != -1)
            {
              goto LABEL_351;
            }

            goto LABEL_114;
          }

          *(v4 + 375) += v38 + 5;
          v43 = v42 + 3;
          v37 = v52;
          if (v52 <= 3)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v44 = *&v43[v38];
          v45 = (*v42 << 12) ^ (v42[2] << 8) | v42[1] ^ (*v42 >> 4);
          *(v4 + 375) = v38 + v41 + 5;
          if (v44 != v45)
          {
            goto LABEL_119;
          }

          if (v37 <= 3)
          {
LABEL_48:
            if (v37 == 1)
            {
              v54 = *(v4 + 32);
              v55 = _NRCopyLogObjectForNRUUID();
              v56 = _NRLogIsLevelEnabled();

              if (v56)
              {
                v57 = *(v4 + 32);
                v58 = _NRCopyLogObjectForNRUUID();
                v324 = [v4 copyDescription];
                _NRLogWithArgs();
              }

              goto LABEL_35;
            }

            if (v37 == 2)
            {
              ++*(v4 + 1735);
              v59 = *(v4 + 32);
              v60 = _NRCopyLogObjectForNRUUID();
              v61 = _NRLogIsLevelEnabled();

              if (v61)
              {
                v62 = *(v4 + 32);
                v63 = _NRCopyLogObjectForNRUUID();
                v325 = [v4 copyDescription];
                _NRLogWithArgs();
              }

              v50 = [[NSData alloc] initWithBytes:v43 length:v38];
              sub_10009674C(v4, v50);
              goto LABEL_61;
            }

            if (v37 != 3)
            {
              goto LABEL_35;
            }

            goto LABEL_34;
          }
        }

        if ((v37 - 100) >= 6)
        {
          if (v37 != 4)
          {
            if (v37 == 5)
            {
              sub_100096BD0(v4, v43, v38);
            }

            goto LABEL_35;
          }

          v50 = [[NSData alloc] initWithBytes:v43 length:v38];
          sub_100094EDC(v4, v50);
          goto LABEL_61;
        }

LABEL_34:
        sub_100096834(v4, v42, (v38 + 5), v38, v37);
        goto LABEL_35;
      }

      v30 = *(v4 + 32);
      v31 = _NRCopyLogObjectForNRUUID();
      v32 = _NRLogIsLevelEnabled();

      if (!v32)
      {
        return;
      }

      v33 = *(v4 + 32);
      v356 = _NRCopyLogObjectForNRUUID();
      v34 = [v4 copyDescription];
      HIWORD(v348) = HIWORD(v34);
      _NRLogWithArgs();

LABEL_29:
      v35 = v356;

      return;
    }
  }

  else
  {
    v11 = *(v4 + 16);
    if ((v11 - 1) > 1)
    {
      goto LABEL_16;
    }
  }

  v12 = *(v4 + v8);
  if ((*(v4 + v9) - v12) <= 0xB)
  {
    v13 = *(v4 + 32);
    v14 = _NRCopyLogObjectForNRUUID();
    v15 = _NRLogIsLevelEnabled();

    if (!v15)
    {
      return;
    }

    v16 = *(v4 + 32);
    v356 = _NRCopyLogObjectForNRUUID();
    v17 = [v4 copyDescription];
    v18 = sub_1001415A0(*(v4 + 16));
    v19 = *(v4 + v9);
    v334 = *(v4 + v8);
    HIWORD(v348) = 0;
    _NRLogWithArgs();

    goto LABEL_26;
  }

  v26 = &v10[v12];
  if (*&v10[v12] != 0x53554E494D524554)
  {
    v27 = a2;
    v356 = [[NSData alloc] initWithBytes:v26 length:8];
    v28 = [[NSData alloc] initWithBytes:&unk_100196530 length:8];
    v17 = v28;
    v29 = "";
    if (v27)
    {
      v29 = "urgent ";
    }

    [v4 cancelWithReason:{@"invalid %sprelude: received %@, expected %@, filledIn=%u, handled=%u", v29, v356, v28, *(v4 + v9), *(v4 + v8)}];
LABEL_26:

    goto LABEL_29;
  }

  v72 = *(v26 + 5);
  v73 = __rev16(v72) + 14;
  if (a2)
  {
    *(v4 + 269) = 1;
    [v4 reportEvent:4217];
    v74 = *(v4 + v9) - *(v4 + v8);
    if (v74 > v73)
    {
      if (*v3 == 1)
      {
        v285 = *(v4 + 32);
        v286 = _NRCopyLogObjectForNRUUID();
        v287 = _NRLogIsLevelEnabled();

        if (v287)
        {
          v288 = *(v4 + 32);
          v289 = _NRCopyLogObjectForNRUUID();
          v290 = [v4 copyDescription];
          v330 = *(v4 + 371);
          v342 = *(v4 + 375);
          _NRLogWithArgs();
        }
      }

      memmove(v10, &v26[v73], *(v4 + v9) - *(v4 + v8) - v73);
      v75 = *(v4 + v9) - *(v4 + v8) - v73;
      goto LABEL_81;
    }

    if (v74 != v73)
    {
      v291 = sub_10007CF34();
      v292 = _NRLogIsLevelEnabled();

      if (v292)
      {
        v293 = sub_10007CF34();
        v343 = *(v4 + v9);
        v348 = *(v4 + v8);
        _NRLogWithArgs();
      }

      _os_log_pack_size();
      v26 = &v349 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v294 = *__error();
      v295 = _os_log_pack_fill();
      sub_100095124(v295, "[NRLinkBluetooth handleReadData:]", v73, *(v4 + v9), *(v4 + v8));
      sub_10007CF34();
      _NRLogAbortWithPack();
      goto LABEL_345;
    }

    if (*v3 == 1)
    {
      v296 = *(v4 + 32);
      v297 = _NRCopyLogObjectForNRUUID();
      v298 = _NRLogIsLevelEnabled();

      if (!v298)
      {
        v75 = 0;
        goto LABEL_81;
      }

      v299 = *(v4 + 32);
      v300 = _NRCopyLogObjectForNRUUID();
      v301 = [v4 copyDescription];
      v331 = *(v4 + v9);
      v344 = *(v4 + v8);
      _NRLogWithArgs();
    }

    v75 = 0;
LABEL_81:
    *(v4 + v9) = v75;
    *(v4 + v8) = 0;
    v81 = *(v4 + 32);
    v82 = _NRCopyLogObjectForNRUUID();
    v83 = _NRLogIsLevelEnabled();

    if (v83)
    {
      v84 = *(v4 + 32);
      v85 = _NRCopyLogObjectForNRUUID();
      v86 = [v4 copyDescription];
      HIWORD(v348) = HIWORD(v86);
      _NRLogWithArgs();
    }

    if (*(v4 + 293) == 1)
    {

      sub_100090BF4(v4, v73, &off_100209BA8);
    }

    else
    {
      v102 = *(v4 + 32);
      v103 = _NRCopyLogObjectForNRUUID();
      v104 = _NRLogIsLevelEnabled();

      if (v104)
      {
        v105 = *(v4 + 32);
        v106 = _NRCopyLogObjectForNRUUID();
        v107 = [v4 copyDescription];
        HIWORD(v348) = HIWORD(v107);
        _NRLogWithArgs();
      }

      v108 = *(v4 + 8);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100095154;
      block[3] = &unk_1001FD3C8;
      block[4] = v4;
      dispatch_async(v108, block);
    }

    return;
  }

  v8 = v26[8];
  v3 = &qword_100229000;
  v2 = &qword_100229000;
  v9 = &dispatch_group_enter_ptr;
  v355 = v73;
  if (v8 != 1)
  {
    if (qword_100229088 == -1)
    {
LABEL_88:
      v87 = v2[16];
      v88 = _NRLogIsLevelEnabled();

      if (v88)
      {
        v89 = sub_10007CF34();
        _NRLogWithArgs();
      }

      v80 = [objc_alloc(*(v9 + 3752)) initWithFormat:@"localVersion %u remoteVersion %u", 1, v8];
      goto LABEL_91;
    }

LABEL_345:
    dispatch_once(&qword_100229088, &stru_1001FB1C0);
    goto LABEL_88;
  }

  if (qword_100229088 != -1)
  {
    dispatch_once(&qword_100229088, &stru_1001FB1C0);
  }

  v76 = qword_100229080;
  v77 = _NRLogIsLevelEnabled();

  if (v77)
  {
    v78 = sub_10007CF34();
    v348 = 1;
    _NRLogWithArgs();
  }

  v79 = [NSString alloc];
  v80 = [v79 initWithFormat:@"version %u", 1, v348];
LABEL_91:
  v356 = v80;
  *(v4 + 249) = v26[9];
  v90 = v3[17];
  if (*(v4 + 248) == *(v4 + 249))
  {
    if (v90 != -1)
    {
      dispatch_once(&qword_100229088, &stru_1001FB1C0);
    }

    v91 = v2[16];
    if (_NRLogIsLevelEnabled())
    {
      v92 = sub_10007CF34();
      v93 = sub_100095210(*(v4 + 249));
      v348 = v93;
      _NRLogWithArgs();
    }

    v94 = objc_alloc(*(v9 + 3752));
    v95 = *(v4 + 249);
    if (v95 > 0xB)
    {
      switch(v95)
      {
        case 0xC:
          v96 = @"PairWithOOBKeyOrIDSKeys";
          goto LABEL_139;
        case 0xD:
          v96 = @"ModernPairingKeyConfirmation";
          goto LABEL_139;
        case 0x14:
          v96 = @"HasCompletedPairing";
          goto LABEL_139;
      }
    }

    else
    {
      if (!*(v4 + 249))
      {
        v96 = @"Invalid";
        goto LABEL_139;
      }

      if (v95 == 10)
      {
        v96 = @"PairWithOOBKey";
        goto LABEL_139;
      }

      if (v95 == 11)
      {
        v96 = @"PairWithIDSKeys";
LABEL_139:
        v120 = [v94 initWithFormat:@"state %@", v96];
        goto LABEL_156;
      }
    }

    v118 = v94;
    v96 = [objc_alloc(*(v9 + 3752)) initWithFormat:@"Unknown(%lld)", v95];
    v94 = v118;
    goto LABEL_139;
  }

  if (v90 != -1)
  {
    dispatch_once(&qword_100229088, &stru_1001FB1C0);
  }

  v97 = v2[16];
  v98 = _NRLogIsLevelEnabled();

  if (v98)
  {
    v99 = sub_10007CF34();
    v326 = sub_100095210(*(v4 + 249));
    v336 = sub_100095210(*(v4 + 248));
    _NRLogWithArgs();
  }

  v100 = objc_alloc(*(v9 + 3752));
  v101 = *(v4 + 248);
  if (v101 > 0xB)
  {
    if (v101 == 12)
    {
      v96 = @"PairWithOOBKeyOrIDSKeys";
      goto LABEL_141;
    }

    if (v101 != 13)
    {
      if (v101 == 20)
      {
        v96 = @"HasCompletedPairing";
        goto LABEL_141;
      }

      goto LABEL_135;
    }

    v96 = @"ModernPairingKeyConfirmation";
  }

  else
  {
    if (!*(v4 + 248))
    {
      v96 = @"Invalid";
      goto LABEL_141;
    }

    if (v101 != 10)
    {
      if (v101 == 11)
      {
        v96 = @"PairWithIDSKeys";
        goto LABEL_141;
      }

LABEL_135:
      v119 = v100;
      v96 = [objc_alloc(*(v9 + 3752)) initWithFormat:@"Unknown(%lld)", v101];
      v100 = v119;
      goto LABEL_141;
    }

    v96 = @"PairWithOOBKey";
  }

LABEL_141:
  v121 = *(v4 + 249);
  if (v121 > 0xB)
  {
    switch(v121)
    {
      case 0xC:
        v122 = @"PairWithOOBKeyOrIDSKeys";
        goto LABEL_155;
      case 0xD:
        v122 = @"ModernPairingKeyConfirmation";
        goto LABEL_155;
      case 0x14:
        v122 = @"HasCompletedPairing";
        goto LABEL_155;
    }

LABEL_152:
    v123 = *(v9 + 3752);
    v124 = v100;
    v122 = [[v123 alloc] initWithFormat:@"Unknown(%lld)", v121];
    v100 = v124;
    v9 = 0x1001F9000;
    goto LABEL_155;
  }

  if (!*(v4 + 249))
  {
    v122 = @"Invalid";
    goto LABEL_155;
  }

  if (v121 == 10)
  {
    v122 = @"PairWithOOBKey";
    goto LABEL_155;
  }

  if (v121 != 11)
  {
    goto LABEL_152;
  }

  v122 = @"PairWithIDSKeys";
LABEL_155:
  v120 = [v100 initWithFormat:@"localState %@ remoteState %@", v96, v122];

LABEL_156:
  v125 = *(v4 + 249);
  v126 = *(v4 + 248);
  if (v125 != v126)
  {
    if (v125 == 10 && v126 != 12 || v125 != 12 && (v126 == 10 || !*(v4 + 249) || v125 == 13 && v126 != 13))
    {
      [v4 cancelWithReason:{@"Incompatible pairing prelude states %@, %@", v120, v356}];
      goto LABEL_336;
    }

    if (v126 < v125)
    {
      LOBYTE(v125) = *(v4 + 248);
    }
  }

  *(v4 + 250) = v125;
  v127 = *(v4 + 250);
  if (*(v4 + 250) > 0xBu)
  {
    switch(v127)
    {
      case 0xC:
        v128 = @"PairWithOOBKeyOrIDSKeys";
        goto LABEL_182;
      case 0xD:
        v128 = @"ModernPairingKeyConfirmation";
        goto LABEL_182;
      case 0x14:
        v128 = @"HasCompletedPairing";
        goto LABEL_182;
    }

LABEL_179:
    v128 = [objc_alloc(*(v9 + 3752)) initWithFormat:@"Unknown(%lld)", v127];
    goto LABEL_182;
  }

  if (!*(v4 + 250))
  {
    v128 = @"Invalid";
    goto LABEL_182;
  }

  if (v127 == 10)
  {
    v128 = @"PairWithOOBKey";
    goto LABEL_182;
  }

  if (v127 != 11)
  {
    goto LABEL_179;
  }

  v128 = @"PairWithIDSKeys";
LABEL_182:
  [v4 reportEvent:3010 detailsFormat:@"%@, %@, using %@", v356, v120, v128];

  v129 = v355;
  v130 = v355;
  if (*(v4 + 371) - *(v4 + 375) < v355)
  {
    v131 = *(v4 + 32);
    v132 = _NRCopyLogObjectForNRUUID();
    v133 = _NRLogIsLevelEnabled();

    if (v133)
    {
      v134 = *(v4 + 32);
      v135 = _NRCopyLogObjectForNRUUID();
      v136 = [v4 copyDescription];
      v137 = sub_1001415A0(*(v4 + 16));
      v138 = *(v4 + 371);
      v338 = *(v4 + 375);
      HIWORD(v348) = HIWORD(v130);
      _NRLogWithArgs();
    }

    goto LABEL_336;
  }

  v354 = v120;
  v109 = v355;
  v139 = [[NSData alloc] initWithBytes:v26 length:v129];
  sub_1000952D8(v4, v139);

  v353 = v130;
  if (v130 == 2)
  {
    v302 = sub_10007CF34();
    v303 = _NRLogIsLevelEnabled();

    if (v303)
    {
      v304 = sub_10007CF34();
      _NRLogWithArgs();
    }

    v4 = _os_log_pack_size();
    __chkstk_darwin();
    v305 = *__error();
    v306 = _os_log_pack_fill();
    *v306 = 136446210;
    *(v306 + 4) = "nrChecksumVerify";
    sub_10007CF34();
    _NRLogAbortWithPack();
LABEL_351:
    dispatch_once(&qword_100229088, &stru_1001FB1C0);
LABEL_114:
    if (_NRLogIsLevelEnabled())
    {
      if (*(v109 + 136) != -1)
      {
        dispatch_once(&qword_100229088, &stru_1001FB1C0);
      }

      _NRLogWithArgs();
    }

    *(v4 + 375) += v72 + 5;
LABEL_119:
    v110 = *(v4 + 2007);
    if (v110)
    {
      *(v110 + 106) = 1;
    }

    v111 = createStringFromNRTLVType();
    v337 = *(v4 + 371);
    v348 = *(v4 + 375);
    v356 = v111;
    sub_100080EB4(v4, @"Invalid checksum detected in buffer on read type %@ len %u filledIn=%u handled=%u", v112, v113, v114, v115, v116, v117, v111);
    goto LABEL_29;
  }

  v352 = &v26[v109];
  v3 = &v26[v109 - 2];
  v140 = *v3;
  if (v140 != ~os_inet_checksum())
  {
    v151 = v3;
    v152 = sub_10007CF34();
    v153 = _NRLogIsLevelEnabled();

    if (v153)
    {
      v154 = sub_10007CF34();
      _NRLogWithArgs();
    }

    v155 = os_inet_checksum();
    v156 = *v151;
    v157 = *(v4 + 2007);
    if (v157)
    {
      *(v157 + 107) = 1;
    }

    v158 = ~v155;
    v159 = *(v4 + 32);
    v160 = _NRCopyLogObjectForNRUUID();
    v161 = _NRLogIsLevelEnabled();

    v162 = &OBJC_IVAR___BTPResolver__sdRefResolve;
    if (v161)
    {
      v163 = *(v4 + 32);
      v355 = _NRCopyLogObjectForNRUUID();
      v352 = [v4 copyDescription];
      v353 = *(v4 + 431);
      [v353 length];
      v164 = *(v4 + 431);
      v165 = _NRCreateDataString();
      v166 = *(v4 + 371);
      v167 = *(v4 + 375);

      v168 = v158;
      HIWORD(v348) = 0;
      v162 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      v169 = v352;
      v170 = v355;
      _NRLogWithArgs();
    }

    else
    {
      v168 = v158;
    }

    v120 = v354;
    v171 = *(v4 + v162[609]);
    [v4 cancelWithReason:{@"prelude checksum failed: received %llu bytes, filledIn=%u, handled=%u, receivedChecksum=0x%04x expectedChecksum=0x%04x", objc_msgSend(v171, "length"), *(v4 + 371), *(v4 + 375), v156, v168}];

    goto LABEL_336;
  }

  v141 = *(v4 + 32);
  v8 = _NRCopyLogObjectForNRUUID();
  v142 = _NRLogIsLevelEnabled();

  if (v142)
  {
    v143 = *(v4 + 32);
    v8 = _NRCopyLogObjectForNRUUID();
    v144 = [v4 copyDescription];
    v145 = *(v4 + 431);
    [v145 length];
    v146 = v3;
    v147 = *(v4 + 431);
    v148 = _NRCreateDataString();
    v348 = v148;
    _NRLogWithArgs();

    v3 = v146;
  }

  if (!v72)
  {
    v209 = 0;
    v9 = 0x100224000;
    goto LABEL_285;
  }

  v9 = 0x100224000;
  v149 = 0;
  if (v355 < 0xFu)
  {
    goto LABEL_284;
  }

  v150 = (v26 + 12);
  v351 = v3;
  while (1)
  {
    v172 = *v150;
    if (!*v150)
    {
      goto LABEL_202;
    }

    if (v150 + 2 > v3)
    {
      v210 = v3;
      v211 = *(v4 + 32);
      v212 = _NRCopyLogObjectForNRUUID();
      v3 = _NRLogIsLevelEnabled();

      if (!v3)
      {
        goto LABEL_284;
      }

      v213 = *(v4 + 32);
      v8 = _NRCopyLogObjectForNRUUID();
      v214 = [v4 copyDescription];
      v348 = v210 - v26;
      _NRLogWithArgs();
      goto LABEL_283;
    }

    v173 = *(v150 + 1);
    v174 = __rev16(v173);
    v8 = (v150 + 3);
    if (&v150[v174 + 3] > v3)
    {
      break;
    }

    if (v172 == 4)
    {
      if (v173 != 4096)
      {
        v8 = v3;
        v191 = *(v4 + 32);
        v192 = _NRCopyLogObjectForNRUUID();
        v193 = _NRLogIsLevelEnabled();

        if (v193)
        {
          v194 = *(v4 + 32);
          v195 = _NRCopyLogObjectForNRUUID();
          v327 = [v4 copyDescription];
          _NRLogWithArgs();
        }

        v3 = v8;
        goto LABEL_201;
      }

      [*(v4 + 1503) getUUIDBytes:&v359];
      v175 = *v8;
      v375.i8[0] = v175 ^ v359;
      if (v359 == v175)
      {
        v176 = v150[4];
        v375.i8[1] = v176 ^ v360;
        if (v360 == v176)
        {
          v177 = v150[5];
          v375.i8[2] = v177 ^ v361;
          if (v361 == v177)
          {
            v178 = v150[6];
            v375.i8[3] = v178 ^ v362;
            if (v362 == v178)
            {
              v179 = v150[7];
              v375.i8[4] = v179 ^ v363;
              if (v363 == v179)
              {
                v180 = v150[8];
                v375.i8[5] = v180 ^ v364;
                if (v364 == v180)
                {
                  v181 = v150[9];
                  v375.i8[6] = v181 ^ v365;
                  if (v365 == v181)
                  {
                    v182 = v150[10];
                    v375.i8[7] = v182 ^ v366;
                    if (v366 == v182)
                    {
                      v183 = v150[11];
                      v375.i8[8] = v183 ^ v367;
                      if (v367 == v183)
                      {
                        v184 = v150[12];
                        v375.i8[9] = v184 ^ v368;
                        if (v368 == v184)
                        {
                          v185 = v150[13];
                          v375.i8[10] = v185 ^ v369;
                          if (v369 == v185)
                          {
                            v186 = v150[14];
                            v375.i8[11] = v186 ^ v370;
                            if (v370 == v186)
                            {
                              v187 = v150[15];
                              v375.i8[12] = v187 ^ v371;
                              if (v371 == v187)
                              {
                                v188 = v150[16];
                                v375.i8[13] = v188 ^ v372;
                                if (v372 == v188)
                                {
                                  v189 = v150[17];
                                  v375.i8[14] = v189 ^ v373;
                                  if (v373 == v189)
                                  {
                                    v190 = v150[18];
                                    v375.i8[15] = v190 ^ v374;
                                    v9 = 0x100224000;
                                    if (v374 > v190)
                                    {
                                      *(v4 + 289) = 1;
                                    }

                                    goto LABEL_248;
                                  }

                                  v9 = 0x100224000;
                                  if (v373 > v189)
                                  {
                                    *(v4 + 289) = 1;
                                  }

LABEL_247:
                                  v375.i8[15] = v150[18] ^ v374;
LABEL_248:
                                  v196 = [NSString alloc];
                                  v197 = sub_100145F4C(&v375);
                                  v198 = [v196 initWithFormat:@" %@", v197];
                                  v199 = *(v4 + 1511);
                                  *(v4 + 1511) = v198;

                                  v200 = *(v4 + 32);
                                  v201 = _NRCopyLogObjectForNRUUID();
                                  LODWORD(v197) = _NRLogIsLevelEnabled();

                                  if (v197)
                                  {
                                    v202 = *(v4 + 32);
                                    v203 = _NRCopyLogObjectForNRUUID();
                                    LODWORD(v355) = v149;
                                    v204 = v203;
                                    v205 = [v4 copyDescription];
                                    v350 = [[NSUUID alloc] initWithUUIDBytes:v150 + 3];
                                    v8 = [v350 UUIDString];
                                    v206 = [*(v4 + 1503) UUIDString];
                                    v207 = [[NSUUID alloc] initWithUUIDBytes:&v375];
                                    v208 = [v207 UUIDString];
                                    *(v4 + 289);
                                    v328 = *(v4 + 1511);
                                    _NRLogWithArgs();

                                    v9 = 0x100224000;
                                    v149 = v355;
                                  }

                                  v3 = v351;
                                  goto LABEL_201;
                                }

                                v9 = 0x100224000;
                                if (v372 > v188)
                                {
                                  *(v4 + 289) = 1;
                                }

LABEL_246:
                                v375.i8[14] = v150[17] ^ v373;
                                goto LABEL_247;
                              }

                              v9 = 0x100224000;
                              if (v371 > v187)
                              {
                                *(v4 + 289) = 1;
                              }

LABEL_245:
                              v375.i8[13] = v150[16] ^ v372;
                              goto LABEL_246;
                            }

                            v9 = 0x100224000;
                            if (v370 > v186)
                            {
                              *(v4 + 289) = 1;
                            }

LABEL_244:
                            v375.i8[12] = v150[15] ^ v371;
                            goto LABEL_245;
                          }

                          v9 = 0x100224000;
                          if (v369 > v185)
                          {
                            *(v4 + 289) = 1;
                          }

LABEL_243:
                          v375.i8[11] = v150[14] ^ v370;
                          goto LABEL_244;
                        }

                        v9 = 0x100224000;
                        if (v368 > v184)
                        {
                          *(v4 + 289) = 1;
                        }

LABEL_242:
                        v375.i8[10] = v150[13] ^ v369;
                        goto LABEL_243;
                      }

                      v9 = 0x100224000;
                      if (v367 > v183)
                      {
                        *(v4 + 289) = 1;
                      }

LABEL_241:
                      v375.i8[9] = v150[12] ^ v368;
                      goto LABEL_242;
                    }

                    v9 = 0x100224000;
                    if (v366 > v182)
                    {
                      *(v4 + 289) = 1;
                    }

LABEL_240:
                    v375.i8[8] = v150[11] ^ v367;
                    goto LABEL_241;
                  }

                  v9 = 0x100224000;
                  if (v365 > v181)
                  {
                    *(v4 + 289) = 1;
                  }

LABEL_239:
                  v375.i8[7] = v150[10] ^ v366;
                  goto LABEL_240;
                }

                if (v364 > v180)
                {
                  *(v4 + 289) = 1;
                }

LABEL_238:
                v375.i8[6] = v150[9] ^ v365;
                goto LABEL_239;
              }

              if (v363 > v179)
              {
                *(v4 + 289) = 1;
              }

LABEL_237:
              v375.i8[5] = v150[8] ^ v364;
              goto LABEL_238;
            }

            if (v362 > v178)
            {
              *(v4 + 289) = 1;
            }

LABEL_236:
            v375.i8[4] = v150[7] ^ v363;
            goto LABEL_237;
          }

          if (v361 > v177)
          {
            *(v4 + 289) = 1;
          }

LABEL_235:
          v375.i8[3] = v150[6] ^ v362;
          goto LABEL_236;
        }

        if (v360 > v176)
        {
          *(v4 + 289) = 1;
        }
      }

      else
      {
        if (v359 > v175)
        {
          *(v4 + 289) = 1;
        }

        v375.i8[1] = v150[4] ^ v360;
      }

      v375.i8[2] = v150[5] ^ v361;
      goto LABEL_235;
    }

    if (v172 == 5 && v173 == 512)
    {
      v149 = bswap32(*v8) >> 16;
    }

LABEL_201:
    v150 += (v174 + 3);
LABEL_202:
    if (v150 >= v3)
    {
      goto LABEL_284;
    }
  }

  v215 = *(v4 + 32);
  v216 = _NRCopyLogObjectForNRUUID();
  v3 = _NRLogIsLevelEnabled();

  if (!v3)
  {
    goto LABEL_284;
  }

  v217 = *(v4 + 32);
  v8 = _NRCopyLogObjectForNRUUID();
  v214 = [v4 copyDescription];
  v348 = v351 - v26;
  _NRLogWithArgs();
LABEL_283:

  v9 = &OBJC_IVAR___BTPResolver__sdRefResolve;
LABEL_284:
  v209 = v149;
LABEL_285:
  v218 = sub_1000952E8(v4);
  v219 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  if ((v218 | v209))
  {
    if (v218 & 1) != 0 && (v209)
    {
      v222 = v218;
      v223 = *(v4 + 32);
      v224 = _NRCopyLogObjectForNRUUID();
      v225 = _NRLogIsLevelEnabled();

      if (v225)
      {
        v226 = *(v4 + 32);
        v227 = _NRCopyLogObjectForNRUUID();
        v228 = [v4 copyDescription];
        v348 = v228;
        _NRLogWithArgs();
      }

      if (v222 >= 2 && (v209 & 2) != 0)
      {
        v229 = *(v4 + 32);
        v230 = _NRCopyLogObjectForNRUUID();
        v231 = _NRLogIsLevelEnabled();

        v219 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        if (!v231)
        {
          goto LABEL_286;
        }

LABEL_312:
        v242 = *(v4 + 32);
        v243 = _NRCopyLogObjectForNRUUID();
        v8 = [v4 copyDescription];
        v348 = v8;
        _NRLogWithArgs();

        goto LABEL_286;
      }

      if (v222 <= 1 && (v209 & 2) != 0)
      {
        v252 = *(v4 + 32);
        v253 = _NRCopyLogObjectForNRUUID();
        v254 = _NRLogIsLevelEnabled();

        v120 = v354;
        if (v254)
        {
          v255 = *(v4 + 32);
          v256 = _NRCopyLogObjectForNRUUID();
          v257 = [v4 copyDescription];
          HIWORD(v348) = HIWORD(v257);
          _NRLogWithArgs();
        }

        sub_100095388(v4);
        goto LABEL_336;
      }

      if (v222 >= 2 && (v209 & 2) == 0)
      {
        v271 = *(v4 + 32);
        v272 = _NRCopyLogObjectForNRUUID();
        v273 = _NRLogIsLevelEnabled();

        v120 = v354;
        if (v273)
        {
          v274 = *(v4 + 32);
          v275 = _NRCopyLogObjectForNRUUID();
          v276 = [v4 copyDescription];
          HIWORD(v348) = HIWORD(v276);
          _NRLogWithArgs();
        }

        goto LABEL_336;
      }

      sub_100095388(v4);
    }

    else
    {
      if ((v218 & 1) == 0)
      {
        v239 = *(v4 + 32);
        v240 = _NRCopyLogObjectForNRUUID();
        v241 = _NRLogIsLevelEnabled();

        if (!v241)
        {
          goto LABEL_286;
        }

        goto LABEL_312;
      }

      if (v209)
      {
        goto LABEL_286;
      }

      v244 = v218;
      v245 = *(v4 + 32);
      v246 = _NRCopyLogObjectForNRUUID();
      v247 = _NRLogIsLevelEnabled();

      if (v247)
      {
        v248 = *(v4 + 32);
        v249 = _NRCopyLogObjectForNRUUID();
        v250 = [v4 copyDescription];
        v348 = v250;
        _NRLogWithArgs();
      }

      if (v244 < 2)
      {
        goto LABEL_286;
      }

      v251 = sub_1000BA648();
      sub_1000CA5A8(v251, 0, *(v4 + 32));
    }

    v120 = v354;
    goto LABEL_336;
  }

LABEL_286:
  v220 = *(v4 + *(v9 + 1704)) - *(v4 + v219[427]);
  if (v220 > v353)
  {
    if (gNRPacketLoggingEnabled == 1)
    {
      v307 = *(v4 + 32);
      v308 = _NRCopyLogObjectForNRUUID();
      v309 = _NRLogIsLevelEnabled();

      if (v309)
      {
        v310 = *(v4 + 32);
        v311 = _NRCopyLogObjectForNRUUID();
        v312 = [v4 copyDescription];
        v332 = *(v4 + *(v9 + 1704));
        v345 = *(v4 + v219[427]);
        _NRLogWithArgs();
      }
    }

    v221 = v353;
    memmove(*(v4 + 1455), v352, (*(v4 + *(v9 + 1704)) - (*(v4 + v219[427]) + v353)));
    *(v4 + *(v9 + 1704)) -= *(v4 + v219[427]) + v221;
    v120 = v354;
    goto LABEL_301;
  }

  if (v220 != v353)
  {
    v313 = sub_10007CF34();
    v314 = _NRLogIsLevelEnabled();

    if (v314)
    {
      v315 = sub_10007CF34();
      v346 = *(v4 + 371);
      v348 = *(v4 + 375);
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v10 = &v349 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v316 = *__error();
    v317 = _os_log_pack_fill();
    sub_100095124(v317, "[NRLinkBluetooth handleReadData:]", v353, *(v4 + 371), *(v4 + 375));
    goto LABEL_327;
  }

  if (gNRPacketLoggingEnabled == 1)
  {
    v318 = *(v4 + 32);
    v319 = _NRCopyLogObjectForNRUUID();
    v320 = _NRLogIsLevelEnabled();

    if (v320)
    {
      v321 = *(v4 + 32);
      v322 = _NRCopyLogObjectForNRUUID();
      v323 = [v4 copyDescription];
      v333 = *(v4 + *(v9 + 1704));
      v347 = *(v4 + v219[427]);
      _NRLogWithArgs();
    }
  }

  *(v4 + *(v9 + 1704)) = 0;
  v221 = v353;
  v120 = v354;
LABEL_301:
  *(v4 + v219[427]) = 0;
  if (*(v4 + 16) == 1)
  {
    [v4 changeStateTo:3];
LABEL_304:
    if (*(v4 + 293) == 1)
    {
      if (*(v4 + 16) == 4)
      {
        sub_100090BF4(v4, v221, &off_100209B90);
      }
    }

    else
    {
      v232 = *(v4 + 32);
      v233 = _NRCopyLogObjectForNRUUID();
      v234 = _NRLogIsLevelEnabled();

      if (v234)
      {
        v235 = *(v4 + 32);
        v236 = _NRCopyLogObjectForNRUUID();
        v237 = [v4 copyDescription];
        HIWORD(v348) = HIWORD(v237);
        _NRLogWithArgs();
      }

      v238 = *(v4 + 8);
      v357[0] = _NSConcreteStackBlock;
      v357[1] = 3221225472;
      v357[2] = sub_100096464;
      v357[3] = &unk_1001FD3C8;
      v357[4] = v4;
      dispatch_async(v238, v357);
    }
  }

  else
  {
    [v4 changeStateTo:4];
    if (sub_10009542C(v4))
    {
      goto LABEL_304;
    }

    [v4 cancelWithReason:@"failed to setup nexus"];
  }

LABEL_336:
}

void sub_100094EDC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v29 = v3;
    if (v3)
    {
      v4 = *(a1 + 1799);
      IKEv2PacketString = createIKEv2PacketString();
      [a1 reportEvent:3007 detailsFormat:@"Receiving IKEv2 packet #%llu %@ len %llu", v4, IKEv2PacketString, objc_msgSend(v29, "length")];

      ++*(a1 + 1799);
      if (gNRPacketLoggingEnabled == 1)
      {
        v15 = *(a1 + 32);
        v16 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v18 = *(a1 + 32);
          v19 = _NRCopyLogObjectForNRUUID();
          v20 = [a1 copyDescription];
          v21 = *(a1 + 1799);
          v27 = [v29 length];
          v28 = sub_10007D69C(v29);
          v25 = v20;
          v26 = v21;
          v23 = "[NRLinkBluetooth handleIncomingIKEData:]";
          v24 = 8071;
          v22 = "";
          _NRLogWithArgs();
        }
      }

      v6 = *(a1 + 1343);
      if (v6)
      {
        [v6 receivePacketData:v29];
      }

      else
      {
        v7 = *(a1 + 32);
        v8 = _NRCopyLogObjectForNRUUID();
        v9 = _NRLogIsLevelEnabled();

        if (v9)
        {
          v10 = *(a1 + 32);
          v11 = _NRCopyLogObjectForNRUUID();
          v24 = 8074;
          v25 = [a1 copyDescription];
          v22 = "";
          v23 = "[NRLinkBluetooth handleIncomingIKEData:]";
          _NRLogWithArgs();
        }

        [*(a1 + 1287) addObject:{v29, v22, v23, v24, v25, v26, v27, v28}];
      }

      goto LABEL_9;
    }

    v12 = sub_10007CF34();
    v13 = _NRLogIsLevelEnabled();

    v3 = 0;
    if (v13)
    {
      v14 = sub_10007CF34();
      _NRLogWithArgs();

LABEL_9:
      v3 = v29;
    }
  }
}

double sub_100095124(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  *&result = 136446978;
  *a1 = 136446978;
  *(a1 + 4) = a2;
  *(a1 + 12) = 1024;
  *(a1 + 14) = a3;
  *(a1 + 18) = 1024;
  *(a1 + 20) = a4;
  *(a1 + 24) = 1024;
  *(a1 + 26) = a5;
  return result;
}

void sub_100095154(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v5 = *(*(a1 + 32) + 32);
    v6 = _NRCopyLogObjectForNRUUID();
    v8 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs();
  }

  v7 = *(a1 + 32);

  sub_1000A2C50(v7);
}

const __CFString *sub_100095210(int a1)
{
  if (a1 > 11)
  {
    if (a1 == 12)
    {
      return @"PairWithOOBKeyOrIDSKeys";
    }

    if (a1 != 13)
    {
      if (a1 == 20)
      {
        return @"HasCompletedPairing";
      }

      return [[NSString alloc] initWithFormat:@"Unknown(%lld)", a1];
    }

    return @"ModernPairingKeyConfirmation";
  }

  else
  {
    if (!a1)
    {
      return @"Invalid";
    }

    if (a1 != 10)
    {
      if (a1 == 11)
      {
        return @"PairWithIDSKeys";
      }

      return [[NSString alloc] initWithFormat:@"Unknown(%lld)", a1];
    }

    return @"PairWithOOBKey";
  }
}

uint64_t sub_1000952E8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  LODWORD(v2) = sub_1000B794C();
  v3 = [a1 nrUUID];
  v4 = sub_100163A30(NRDLocalDevice, v3);

  if (v4)
  {
    v5 = v4[18];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 usesTLS];

  if (v7)
  {
    v2 = v2 | 2;
  }

  else
  {
    v2 = v2;
  }

  return v2;
}

void sub_100095388(void *a1)
{
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v3 = qword_1002290B8;
  v2 = [a1 nrUUID];
  sub_1000CA5A8(v3, 1, v2);
}

uint64_t sub_10009542C(char *a1)
{
  v1 = a1;
  v2 = *(a1 + 4);
  v3 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v5 = *(v1 + 4);
    v6 = _NRCopyLogObjectForNRUUID();
    v123 = [v1 copyDescription];
    _NRLogWithArgs();
  }

  v7 = *(v1 + 415);
  v8 = [*(v1 + 399) peer];
  v9 = [v8 identifier];
  v10 = [v9 UUIDString];
  v11 = [NSString stringWithFormat:@"Terminus Bluetooth link to %@ <%@>", v7, v10];

  v12 = *(v1 + 4);
  v13 = _NRCopyLogObjectForNRUUID();
  LODWORD(v9) = _NRLogIsLevelEnabled();

  if (v9)
  {
    v14 = *(v1 + 4);
    v15 = _NRCopyLogObjectForNRUUID();
    v16 = [v1 copyDescription];
    _NRLogWithArgs();
  }

  if ([v1 hasCompanionDatapath])
  {
    if (v1[293] == 1)
    {
      v17 = v1[18];
      v18 = [NEIPsecNexus alloc];
      v19 = qword_100228A78;
      v20 = HIDWORD(qword_100228A78);
      v21 = unk_100228A80;
      if (v17 == 121)
      {
        v22 = [v18 initWithName:v11 delegate:v1 enableWithChannelCount:1 netifRingSize:qword_100228A78 kernelPipeTxRingSize:HIDWORD(qword_100228A78) kernelPipeRxRingSize:unk_100228A80];
        v23 = *(v1 + 1479);
        *(v1 + 1479) = v22;
      }

      else
      {
        v33 = v18;
        objc_opt_self();
        if (qword_1002290C0 != -1)
        {
          dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
        }

        v34 = qword_1002290B8;
        v23 = v34;
        if (v34)
        {
          v35 = v34[33];
        }

        else
        {
          v35 = 0;
        }

        v36 = [v33 initWithName:v11 delegate:v1 enableWithChannelCount:4 netifRingSize:v19 kernelPipeTxRingSize:v20 kernelPipeRxRingSize:v21 execUUID:v35];
        v37 = *(v1 + 1479);
        *(v1 + 1479) = v36;
      }

      v32 = [*(v1 + 1479) nexusInstances];
      sub_100090978(v1, v32);
    }

    else
    {
      v31 = sub_1001482F4(v11, v1, 4, qword_100228A78, HIDWORD(qword_100228A78), unk_100228A80);
      v32 = *(v1 + 1479);
      *(v1 + 1479) = v31;
    }

    [v1 setVirtualInterface:{objc_msgSend(*(v1 + 1479), "virtualInterface")}];
  }

  else
  {
    if (!sub_100090538(v1))
    {
      goto LABEL_99;
    }

    if (v1[293] == 1)
    {
      v1[18];
      v24 = sub_10013F0B0([v1 virtualInterface]);
      v25 = [v24 count];
      v26 = *(v1 + 4);
      v27 = _NRCopyLogObjectForNRUUID();
      if (!v25)
      {
        v71 = _NRLogIsLevelEnabled();

        if (v71)
        {
          v72 = *(v1 + 4);
          v73 = _NRCopyLogObjectForNRUUID();
          v125 = [v1 copyDescription];
          _NRLogWithArgs();
        }

        goto LABEL_46;
      }

      v28 = _NRLogIsLevelEnabled();

      if (v28)
      {
        v29 = *(v1 + 4);
        v30 = _NRCopyLogObjectForNRUUID();
        v120 = [v1 copyDescription];
        _NRLogWithArgs();
      }

      sub_100090978(v1, v24);
    }
  }

  [v1 virtualInterface];
  v38 = NEVirtualInterfaceCopyName();
  [v1 setLocalInterfaceName:v38];

  if (([v1 setInterfaceSubfamily] & 1) == 0 && objc_msgSend(v1, "hasCompanionDatapath"))
  {
    goto LABEL_42;
  }

  if ((sub_10009C0A8(v1) & 1) == 0)
  {
    v62 = *(v1 + 4);
    v63 = _NRCopyLogObjectForNRUUID();
    v64 = _NRLogIsLevelEnabled();

    if (!v64)
    {
      goto LABEL_99;
    }

    goto LABEL_45;
  }

  if (([v1 setNoACKPrioritization] & 1) == 0)
  {
LABEL_42:
    v59 = *(v1 + 4);
    v60 = _NRCopyLogObjectForNRUUID();
    v61 = _NRLogIsLevelEnabled();

    if (!v61)
    {
      goto LABEL_99;
    }

    goto LABEL_45;
  }

  if (![v1 virtualInterface] && !*(v1 + 1479))
  {
    v84 = *(v1 + 4);
    v85 = _NRCopyLogObjectForNRUUID();
    v86 = _NRLogIsLevelEnabled();

    if (!v86)
    {
      goto LABEL_99;
    }

    goto LABEL_45;
  }

  if (v1[293] == 1)
  {
    v39 = *(v1 + 4);
    v40 = _NRCopyLogObjectForNRUUID();
    v41 = _NRLogIsLevelEnabled();

    if (!v41)
    {
      goto LABEL_33;
    }

    v42 = *(v1 + 4);
    v43 = _NRCopyLogObjectForNRUUID();
    v44 = [v1 copyDescription];
    _NRLogWithArgs();
    goto LABEL_32;
  }

  v68 = v1[18];
  if (v68 == 121)
  {
    v69 = 1;
  }

  else
  {
    v69 = 4;
  }

  if ([v1 hasCompanionDatapath])
  {
    v70 = [*(v1 + 1479) nexusInstances];
  }

  else
  {
    v70 = sub_10013F0B0([v1 virtualInterface]);
  }

  v43 = v70;
  v74 = *(v1 + 4);
  v75 = _NRCopyLogObjectForNRUUID();
  if (!v43)
  {
    v81 = _NRLogIsLevelEnabled();

    if (!v81)
    {
      v43 = 0;
      goto LABEL_84;
    }

    v82 = *(v1 + 4);
    v44 = _NRCopyLogObjectForNRUUID();
    v83 = [v1 copyDescription];
    _NRLogWithArgs();
    v43 = 0;
    goto LABEL_71;
  }

  v76 = _NRLogIsLevelEnabled();

  if (v76)
  {
    v77 = *(v1 + 4);
    v78 = _NRCopyLogObjectForNRUUID();
    v121 = [v1 copyDescription];
    _NRLogWithArgs();
  }

  if ([v43 count] == v69)
  {
    if (v68 == 121)
    {
      v79 = [v43 firstObject];
      v80 = sub_10009F6F4(v1, v79);

      if (v80)
      {
LABEL_33:
        if (v1[289] != 1)
        {
          if (v1[250] - 10 > 2)
          {
            sub_1000850B4(v1, 4);
            objc_initWeak(&location, v1);
            objc_opt_self();
            if (qword_1002294C8 != -1)
            {
              goto LABEL_95;
            }

            goto LABEL_74;
          }

          sub_10009E6A4(v1);
          goto LABEL_75;
        }

        if (*(v1 + 1303))
        {
LABEL_75:
          while (1)
          {
            v92 = sub_100163A30(NRDLocalDevice, *(v1 + 4));
            if (v92)
            {
              break;
            }

            v107 = sub_10007CF34();
            v108 = _NRLogIsLevelEnabled();

            if (v108)
            {
              v109 = sub_10007CF34();
              _NRLogWithArgs();
            }

            v11 = _os_log_pack_size();
            v1 = &handler - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
            v110 = *__error();
            v111 = _os_log_pack_fill();
            *v111 = 136446210;
            *(v111 + 4) = "[NRLinkBluetooth setupNexus]";
            sub_10007CF34();
            _NRLogAbortWithPack();
            __break(1u);
LABEL_95:
            dispatch_once(&qword_1002294C8, &stru_1001FD250);
LABEL_74:
            v91 = qword_1002294C0;
            handler = _NSConcreteStackBlock;
            v127 = 3221225472;
            v128 = sub_10009E9F0;
            v129 = &unk_1001FC730;
            objc_copyWeak(v130, &location);
            sub_1001816DC(v91, &handler);

            objc_destroyWeak(v130);
            objc_destroyWeak(&location);
          }

          v24 = v92;
          if ([v1 hasCompanionDatapath])
          {
            v93 = sub_100173200(v24);
            [*(v1 + 1479) setLocalAddresses:v93];
            v94 = *(v1 + 4);
            v95 = _NRCopyLogObjectForNRUUID();
            v96 = _NRLogIsLevelEnabled();

            if (v96)
            {
              v97 = *(v1 + 4);
              v98 = _NRCopyLogObjectForNRUUID();
              v99 = [v1 copyDescription];
              v119 = [*(v1 + 1479) interfaceName];
              _NRLogWithArgs();
            }
          }

          sub_100089A48(v1);
          sub_10009C854(v1, 0);
          if (!*(v1 + 1871))
          {
            v100 = [v1 queue];
            v101 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v100);
            v102 = *(v1 + 1871);
            *(v1 + 1871) = v101;

            dispatch_source_set_timer(*(v1 + 1871), 0, 0x12A05F200uLL, 0x2FAF080uLL);
            objc_initWeak(&location, v1);
            v103 = *(v1 + 1871);
            handler = _NSConcreteStackBlock;
            v127 = 3221225472;
            v128 = sub_1000043C0;
            v129 = &unk_1001FD0B0;
            objc_copyWeak(v130, &location);
            v130[1] = 5;
            dispatch_source_set_event_handler(v103, &handler);
            dispatch_resume(*(v1 + 1871));
            objc_destroyWeak(v130);
            objc_destroyWeak(&location);
          }

          v67 = 1;
          goto LABEL_47;
        }

        v45 = sub_100146840(1);
        [v45 setMaximumPacketSize:2000];
        [v45 setHeaderOverhead:5];

        v46 = sub_100163A30(NRDLocalDevice, *(v1 + 4));
        v47 = v46;
        if (v46 && (*(v46 + 48) & 0x20) != 0)
        {
          v48 = [v45 extraSupportedSignatureHashes];
          v49 = [[NEIKEv2SignatureHashProtocol alloc] initWithHashType:2];
          v50 = [v48 setByAddingObject:v49];
          [v45 setExtraSupportedSignatureHashes:v50];
        }

        v51 = [[NEIKEv2Listener alloc] initWithListenerIKEConfig:v45 kernelSASessionName:@"terminusIKE-Bluetooth-Listener" packetDelegate:v1 listenerQueue:*(v1 + 1) delegate:v1 delegateQueue:*(v1 + 1)];
        v52 = *(v1 + 1303);
        *(v1 + 1303) = v51;

        v53 = *(v1 + 1303);
        v54 = *(v1 + 4);
        v55 = _NRCopyLogObjectForNRUUID();
        if (v53)
        {
          v56 = _NRLogIsLevelEnabled();

          if (v56)
          {
            v57 = *(v1 + 4);
            v58 = _NRCopyLogObjectForNRUUID();
            v124 = [v1 copyDescription];
            _NRLogWithArgs();
          }

          goto LABEL_75;
        }

        v112 = _NRLogIsLevelEnabled();

        if (v112)
        {
          v113 = *(v1 + 4);
          v114 = _NRCopyLogObjectForNRUUID();
          v122 = [v1 copyDescription];
          _NRLogWithArgs();
        }

        v115 = *(v1 + 4);
        v116 = _NRCopyLogObjectForNRUUID();
        v117 = _NRLogIsLevelEnabled();

        if (!v117)
        {
LABEL_99:
          v67 = 0;
          goto LABEL_100;
        }

        goto LABEL_45;
      }

      goto LABEL_85;
    }

    v44 = [v43 objectAtIndexedSubscript:0];
    if (sub_10009FED4(v1, v44))
    {

      v44 = [v43 objectAtIndexedSubscript:1];
      if (sub_1000A06B4(v1, v44))
      {

        v44 = [v43 objectAtIndexedSubscript:2];
        if (sub_10009F6F4(v1, v44))
        {

          v44 = [v43 objectAtIndexedSubscript:3];
          if (sub_1000A0E94(v1, v44))
          {
LABEL_32:

            goto LABEL_33;
          }
        }
      }
    }

    goto LABEL_72;
  }

  v87 = *(v1 + 4);
  v88 = _NRCopyLogObjectForNRUUID();
  v89 = _NRLogIsLevelEnabled();

  if (v89)
  {
    v90 = *(v1 + 4);
    v44 = _NRCopyLogObjectForNRUUID();
    v83 = [v1 copyDescription];
    _NRLogWithArgs();
LABEL_71:

LABEL_72:
  }

LABEL_84:

LABEL_85:
  v104 = *(v1 + 4);
  v105 = _NRCopyLogObjectForNRUUID();
  v106 = _NRLogIsLevelEnabled();

  if (!v106)
  {
    goto LABEL_99;
  }

LABEL_45:
  v65 = *(v1 + 4);
  v24 = _NRCopyLogObjectForNRUUID();
  v66 = [v1 copyDescription];
  _NRLogWithArgs();

LABEL_46:
  v67 = 0;
LABEL_47:

LABEL_100:
  return v67;
}

void sub_100096438(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_100096464(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v5 = *(*(a1 + 32) + 32);
    v6 = _NRCopyLogObjectForNRUUID();
    v8 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs();
  }

  v7 = *(a1 + 32);

  sub_100097378(v7);
}

void *sub_100096520(void *result, unsigned int a2)
{
  v2 = *(result + 375);
  if (a2 <= 0x800)
  {
    v3 = 2048;
  }

  else
  {
    v3 = a2;
  }

  v4 = *(result + 371);
  if (v2 == v4)
  {
    if (gNRPacketLoggingEnabled == 1)
    {
      v7 = result[4];
      v8 = result;
      v9 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      result = v8;
      if (IsLevelEnabled)
      {
        v11 = v8[4];
        v12 = _NRCopyLogObjectForNRUUID();
        v18 = [v8 copyDescription];
        _NRLogWithArgs();

        result = v8;
      }
    }

    *(result + 375) = 0;
    v5 = &OBJC_IVAR___NRLinkBluetooth__filledInLinkReadBufferBytes;
LABEL_7:
    *(result + *v5) = 0;
    return result;
  }

  if (v4 > v2 && v2 + v3 >= *(result + 315))
  {
    if (gNRPacketLoggingEnabled == 1)
    {
      v13 = result[4];
      v21 = result;
      v14 = _NRCopyLogObjectForNRUUID();
      v15 = _NRLogIsLevelEnabled();

      result = v21;
      if (v15)
      {
        v16 = v21[4];
        v17 = _NRCopyLogObjectForNRUUID();
        v19 = [v21 copyDescription];
        v20 = *(v21 + 375);
        _NRLogWithArgs();

        result = v21;
      }
    }

    v5 = &OBJC_IVAR___NRLinkBluetooth__handledLinkReadBufferBytes;
    v6 = result;
    memmove(*(result + 1455), (*(result + 1455) + *(result + 375)), (*(result + 371) - *(result + 375)));
    result = v6;
    *(v6 + 371) -= *(v6 + 375);
    goto LABEL_7;
  }

  return result;
}

void sub_10009674C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 455);
  if (os_channel_get_next_slot())
  {
    v5 = [v3 length];
    v6 = v10;
    if (v10 > v5)
    {
      v6 = [v3 length];
    }

    memcpy(0, [v3 bytes], v6);
    v7 = *(a1 + 455);
    os_channel_set_slot_properties();
    v8 = *(a1 + 455);
    os_channel_advance_slot();
    v9 = *(a1 + 439);
    os_channel_sync();
  }
}

void sub_100096834(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = nrMaxPacketLengthForTLV();
  if (!v7)
  {
    v18 = sub_10007CF34();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v20 = sub_10007CF34();
      _NRLogWithArgs();
    }

    goto LABEL_26;
  }

  v8 = malloc_type_malloc(v7, 0x4497EEA5uLL);
  if (!v8)
  {
    while (1)
    {
      v23 = sub_10007CF34();
      v24 = _NRLogIsLevelEnabled();

      if (v24)
      {
        v25 = sub_10007CF34();
        _NRLogWithArgs();
      }

LABEL_26:
      _os_log_pack_size();
      v21 = *__error();
      v22 = _os_log_pack_fill();
      *v22 = 136446210;
      *(v22 + 4) = "[NRLinkBluetooth handleIncoming6LoWPANData:tlvBufferLength:length:tlvType:]";
      sub_10007CF34();
      _NRLogAbortWithPack();
    }
  }

  v9 = v8;
  v10 = nrTLVToPacket();
  if (v10)
  {
    v11 = [[NSData alloc] initWithBytes:v9 length:v10];
    if (a5 <= 101)
    {
      switch(a5)
      {
        case 3:
          v12 = 1743;
          goto LABEL_21;
        case 100:
          v12 = 1751;
          goto LABEL_21;
        case 101:
          v12 = 1759;
LABEL_21:
          ++*(a1 + v12);
LABEL_22:
          sub_10009674C(a1, v11);

          goto LABEL_23;
      }
    }

    else
    {
      if (a5 <= 103)
      {
        if (a5 == 102)
        {
          v12 = 1783;
        }

        else
        {
          v12 = 1791;
        }

        goto LABEL_21;
      }

      if (a5 == 104)
      {
        v12 = 1767;
        goto LABEL_21;
      }

      if (a5 == 105)
      {
        v12 = 1775;
        goto LABEL_21;
      }
    }

    v13 = a1[4];
    v14 = _NRCopyLogObjectForNRUUID();
    v15 = _NRLogIsLevelEnabled();

    if (v15)
    {
      v16 = a1[4];
      v17 = _NRCopyLogObjectForNRUUID();
      v26 = [a1 copyDescription];
      StringFromNRTLVType = createStringFromNRTLVType();
      _NRLogWithArgs();
    }

    goto LABEL_22;
  }

LABEL_23:
  free(v9);
}

void sub_100096BD0(void *a1, unsigned __int8 *a2, unsigned int a3)
{
  v5 = a1;
  if (a2 && a3)
  {
    v6 = *a2;
    v21 = v5;
    if (v6 == 2)
    {
      v7 = mach_absolute_time();
      if (a3 < 9)
      {
        v8 = 0;
      }

      else
      {
        v8 = *(a2 + 1);
      }

      v14 = v21[4];
      v15 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v17 = v21[4];
        v18 = _NRCopyLogObjectForNRUUID();
        v20 = [v21 copyDescription];
        _NRLogWithArgs();
      }

      sub_100097198(v21, bswap64(v8), v7);
    }

    else if (v6 == 1)
    {
      *a2 = 2;
      sub_100096D88(v5, a2, a3, 0);
    }

    else
    {
      v9 = v5[4];
      v10 = _NRCopyLogObjectForNRUUID();
      v11 = _NRLogIsLevelEnabled();

      v5 = v21;
      if (!v11)
      {
        goto LABEL_15;
      }

      v12 = v21[4];
      v13 = _NRCopyLogObjectForNRUUID();
      v19 = [v21 copyDescription];
      _NRLogWithArgs();
    }

    v5 = v21;
  }

LABEL_15:
}

uint64_t sub_100096D88(void *a1, const void *a2, unsigned int a3, int a4)
{
  v7 = a1;
  v8 = v7;
  if (!a2)
  {
    v28 = sub_10007CF34();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v24 = sub_10007CF34();
      _NRLogWithArgs();
      goto LABEL_16;
    }

    goto LABEL_23;
  }

  if (v7[16] == 255)
  {
    v14 = *(v7 + 4);
    v15 = _NRCopyLogObjectForNRUUID();
    v16 = _NRLogIsLevelEnabled();

    if (v16)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  if (!*(v7 + 1063))
  {
    v17 = *(v7 + 4);
    v18 = _NRCopyLogObjectForNRUUID();
    v19 = _NRLogIsLevelEnabled();

    if (v19)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  v9 = *(v7 + 339);
  if (v9 <= *(v7 + 343))
  {
    os_channel_get_next_slot();
    v9 = *(v8 + 339);
  }

  v10 = *(v8 + 331) - v9;
  if (v10 <= 4)
  {
    v11 = *(v8 + 4);
    v12 = _NRCopyLogObjectForNRUUID();
    v13 = _NRLogIsLevelEnabled();

    if (v13)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  if (v10 - 5 < a3)
  {
    v20 = *(v8 + 4);
    v21 = _NRCopyLogObjectForNRUUID();
    v22 = _NRLogIsLevelEnabled();

    if (v22)
    {
LABEL_15:
      v23 = *(v8 + 4);
      v24 = _NRCopyLogObjectForNRUUID();
      v25 = [v8 copyDescription];
      _NRLogWithArgs();

LABEL_16:
      v26 = 0;
      goto LABEL_24;
    }

LABEL_23:
    v26 = 0;
    goto LABEL_24;
  }

  v27 = *(v8 + 519) + v9;
  *v27 = 5;
  *(v27 + 1) = __rev16(a3);
  memcpy((v27 + 3), a2, a3);
  *(v27 + a3 + 3) = ~os_inet_checksum();
  *(v8 + 339) += a3;
  if (a4)
  {
    v26 = mach_absolute_time();
  }

  else
  {
    v26 = 0;
  }

  sub_10007D9C4(v8, *(v8 + 439));
LABEL_24:

  return v26;
}

void sub_100097198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (qword_100229078 != -1)
    {
      dispatch_once(&qword_100229078, &stru_1001FAF70);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [*(a1 + 1295) copy];
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if (v13)
          {
            if (v13[2] == a2)
            {
              v14 = v13[1];
              if (v14)
              {
                if (a3)
                {
                  v11 = (a3 - v13[3]) * dword_100229070 / *algn_100229074;
                }

                else
                {
                  v11 = 0;
                }

                (*(v14 + 16))(v14, v11);
                objc_setProperty_nonatomic_copy(v13, v12, 0, 8);
              }

LABEL_10:
              [*(a1 + 1295) removeObject:v13];
              continue;
            }
          }

          else if (!a2)
          {
            goto LABEL_10;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    if (![*(a1 + 1295) count])
    {
      v15 = *(a1 + 1295);
      *(a1 + 1295) = 0;
    }
  }
}

void sub_100097378(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = v1[16];
  if (v3 == 255)
  {
    v4 = *(v1 + 4);
    v5 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_12;
    }

LABEL_9:
    v13 = *(v2 + 4);
    StringFromNRTLVType = _NRCopyLogObjectForNRUUID();
    IOVecStringWithContents = [v2 copyDescription];
    _NRLogWithArgs();
    goto LABEL_10;
  }

  if (!*(v1 + 1055))
  {
    v10 = *(v1 + 4);
    v11 = _NRCopyLogObjectForNRUUID();
    v12 = _NRLogIsLevelEnabled();

    if (!v12)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((v3 - 1) < 2)
  {
    v7 = *(v1 + 4);
    v8 = _NRCopyLogObjectForNRUUID();
    v9 = _NRLogIsLevelEnabled();

    if (!v9)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v624 = 0;
  v625 = 0;
  v622[2] = &v656;
  v623 = &v662 + 8;
  v627 = &v661 + 2;
  v16 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  v17 = "NRLinkLinkToNexusLoop";
  v18 = 0x100224000;
  v19 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  v638 = v1;
  while (2)
  {
    v20 = 0;
    LODWORD(v643) = 0;
    v639 = 0;
    v631 = 0uLL;
    v21 = 0;
    v652 = 0u;
    v653 = 0u;
    v650 = 0u;
    v651 = 0u;
    v648 = 0;
    v649 = 0;
    LODWORD(v637) = v2[v16[621]];
    while (1)
    {
LABEL_18:
      v641 = 2015;
      *(v2 + 2015) = 4;
      if (v20 && v20 >= v643)
      {
        if (v20 != v643)
        {
          goto LABEL_491;
        }

        v22 = v641;
        *&v2[v641] = 12;
      }

      else
      {
        v22 = v641;
        if (v20)
        {
          *&v2[v641] = 36;
          if (!v21)
          {
            goto LABEL_378;
          }

          v636 = v21;
          goto LABEL_30;
        }
      }

      v23 = *(v2 + 1055);
      next_slot = os_channel_get_next_slot();
      *&v2[v22] |= 0x10uLL;
      if (!next_slot)
      {
LABEL_378:
        if (v2[261] == 1 && *(v2 + 1071))
        {
          v2[261] = 0;
          ++*(v2 + 1087);
          if (gNRPacketLoggingEnabled == 1)
          {
            v357 = *(v2 + 4);
            v358 = _NRCopyLogObjectForNRUUID();
            v359 = _NRLogIsLevelEnabled();

            if (v359)
            {
              v360 = *(v2 + 4);
              v361 = _NRCopyLogObjectForNRUUID();
              v610 = [v2 copyDescription];
              _NRLogWithArgs();
            }
          }

          dispatch_resume(*(v2 + 1071));
        }

        if ((v2[253] & 1) == 0 && *(v2 + 471))
        {
          v2[253] = 1;
          ++*(v2 + 495);
          if (gNRPacketLoggingEnabled == 1)
          {
            v362 = *(v2 + 4);
            v363 = _NRCopyLogObjectForNRUUID();
            v364 = _NRLogIsLevelEnabled();

            if (v364)
            {
              v365 = *(v2 + 4);
              v366 = _NRCopyLogObjectForNRUUID();
              v611 = [v2 copyDescription];
              _NRLogWithArgs();
            }
          }

          dispatch_suspend(*(v2 + 471));
        }

        *&v2[v641] |= 0x40uLL;
        goto LABEL_406;
      }

      v25 = next_slot;
      v26 = *(v2 + 1055);
      v636 = v25;
      os_channel_slot_get_packet();
      os_packet_get_next_buflet();
      object_address = os_buflet_get_object_address();
      data_offset = os_buflet_get_data_offset();
      data_length = os_buflet_get_data_length();
      if (data_length >= 0x10000)
      {
        v417 = sub_10007CF34();
        v418 = _NRLogIsLevelEnabled();

        if (v418)
        {
          v419 = sub_10007CF34();
          _NRLogWithArgs();
        }

        goto LABEL_552;
      }

      LODWORD(v643) = data_length;
      v639 = (object_address + data_offset);
      os_packet_get_flow_uuid();
      v20 = 0;
      if (v2[292] == 1)
      {
        v2[292] = 0;
        LODWORD(v637) = 1;
      }

      else
      {
        LODWORD(v637) = v637 | BYTE2(v648);
      }

LABEL_30:
      if ((v2[261] & 1) == 0 && *(v2 + 1071))
      {
        v2[261] = 1;
        ++*(v2 + 1087);
        if (gNRPacketLoggingEnabled == 1)
        {
          v246 = *(v2 + 4);
          v247 = _NRCopyLogObjectForNRUUID();
          v248 = _NRLogIsLevelEnabled();

          if (v248)
          {
            v249 = *(v2 + 4);
            v250 = _NRCopyLogObjectForNRUUID();
            v605 = [v2 copyDescription];
            _NRLogWithArgs();
          }
        }

        dispatch_suspend(*(v2 + 1071));
      }

      v30 = *&v2[*(v18 + 1704)];
      v31 = *&v2[v19[427]];
      if (v30 <= v31)
      {
        break;
      }

      v32 = *(v2 + 1455);
      v33 = *(v32 + v31);
      v34 = v639;
      if (*(v32 + v31))
      {
        goto LABEL_47;
      }

      while (1)
      {
        v35 = *(v2 + 4);
        v36 = _NRCopyLogObjectForNRUUID();
        v37 = _NRLogIsLevelEnabled();

        if (v37)
        {
          v38 = *(v2 + 4);
          v39 = _NRCopyLogObjectForNRUUID();
          v602 = [v2 copyDescription];
          _NRLogWithArgs();
        }

        ++*&v2[v19[427]];
        v30 = *&v2[*(v18 + 1704)];
        v31 = *&v2[v19[427]];
        if (v30 <= v31)
        {
          break;
        }

        v40 = *(v2 + 1455);
        v33 = *(v40 + v31);
        if (*(v40 + v31))
        {
          goto LABEL_47;
        }
      }

      if (v30 != v31)
      {
        v509 = sub_10007CF34();
        v510 = _NRLogIsLevelEnabled();

        if (v510)
        {
          v511 = sub_10007CF34();
          _NRLogWithArgs();
        }

        goto LABEL_552;
      }

      v68 = *(v2 + 4);
      v69 = _NRCopyLogObjectForNRUUID();
      v70 = _NRLogIsLevelEnabled();

      v21 = v636;
      if (v70)
      {
        v71 = *(v2 + 4);
        v72 = _NRCopyLogObjectForNRUUID();
        v73 = [v2 copyDescription];
        v585 = *&v2[v19[427]];
        v603 = *&v2[*(v18 + 1704)];
        _NRLogWithArgs();

        v21 = v636;
      }
    }

    v34 = v639;
    while (1)
    {
      v33 = v34[v20];
      if (v34[v20])
      {
        break;
      }

      v41 = *(v2 + 4);
      v42 = _NRCopyLogObjectForNRUUID();
      v43 = _NRLogIsLevelEnabled();

      if (v43)
      {
        v44 = *(v2 + 4);
        v45 = _NRCopyLogObjectForNRUUID();
        v567 = [v2 copyDescription];
        _NRLogWithArgs();
      }

      v20 = (v20 + 1);
      if (v20 >= v643)
      {
        if (v20 == v643)
        {
          v273 = *(v2 + 4);
          v274 = _NRCopyLogObjectForNRUUID();
          v275 = _NRLogIsLevelEnabled();

          if (v275)
          {
            v276 = *(v2 + 4);
            v277 = _NRCopyLogObjectForNRUUID();
            v278 = [v2 copyDescription];
            v589 = *&v2[v19[427]];
            v607 = *&v2[*(v18 + 1704)];
            _NRLogWithArgs();
          }

          goto LABEL_406;
        }

        v457 = sub_10007CF34();
        v458 = _NRLogIsLevelEnabled();

        if (v458)
        {
          v459 = sub_10007CF34();
          _NRLogWithArgs();
        }

LABEL_552:
        _os_log_pack_size();
        __chkstk_darwin();
        v512 = *__error();
        v513 = _os_log_pack_fill();
        *v513 = 136446210;
        *(v513 + 4) = v17;
LABEL_480:
        sub_10007CF34();
        _NRLogAbortWithPack();
        goto LABEL_481;
      }
    }

    v31 = *&v2[v19[427]];
    v30 = *&v2[*(v18 + 1704)];
LABEL_47:
    if (v30 <= v31 + 2)
    {
      if (v30 == v31 + 2)
      {
        v48 = *(*(v2 + 1455) + v31 + 1);
        if (v20 >= v643)
        {
          v47 = 0;
          v49 = 0;
          v50 = 512;
        }

        else
        {
          v47 = v34[v20];
          v49 = 1;
          v50 = 256;
        }
      }

      else
      {
        if (v30 == v31 + 1)
        {
          v65 = v20;
        }

        else
        {
          v65 = v20 + 1;
        }

        if (v65 + 2 >= v643)
        {
          v48 = 0;
          v47 = 0;
          v49 = 0;
          v50 = 2048;
        }

        else
        {
          v66 = bswap32(*&v34[v65]);
          v47 = BYTE2(v66);
          v48 = HIBYTE(v66);
          v49 = 1;
          v50 = 1024;
        }
      }
    }

    else
    {
      v46 = bswap32(*(*(v2 + 1455) + v31 + 1));
      v47 = BYTE2(v46);
      v48 = HIBYTE(v46);
      v49 = 1;
      v50 = 128;
    }

    v632 = v33;
    v51 = *&v2[v641] | v50;
    *&v2[v641] = v51;
    v675 = 0u;
    v676 = 0u;
    v673 = 0u;
    v674 = 0u;
    v671 = 0u;
    v672 = 0u;
    v669 = 0u;
    v670 = 0u;
    v667 = 0u;
    v668 = 0u;
    v665 = 0u;
    v666 = 0u;
    v663 = 0u;
    v664 = 0u;
    v661 = 0u;
    v662 = 0u;
    v52 = v30 - v31;
    v628 = v31;
    v629 = v30;
    if (v30 <= v31)
    {
      v54 = 0;
      v56 = 0;
      v55 = v641;
    }

    else
    {
      *&v661 = *(v2 + 1455) + v31;
      v53 = v47 | (v48 << 8);
      if (v53 + 5 >= v52)
      {
        v54 = v52;
      }

      else
      {
        v54 = (v53 + 5);
      }

      if (!v54)
      {
        v429 = sub_10007CF34();
        v430 = _NRLogIsLevelEnabled();

        if (v430)
        {
          v431 = sub_10007CF34();
          v598 = *&v2[*(v18 + 1704)];
          v615 = *&v2[v19[427]];
          _NRLogWithArgs();
        }

        v80 = _os_log_pack_size();
        __chkstk_darwin();
        v432 = *__error();
        v433 = _os_log_pack_fill();
        sub_100095124(v433, "NRLinkLinkToNexusLoop", v53, *&v2[*(v18 + 1704)], *&v2[v19[427]]);
        goto LABEL_535;
      }

      DWORD2(v661) = v54;
      v51 |= 0x1000uLL;
      v55 = v641;
      *&v2[v641] = v51;
      v56 = 1;
    }

    v57 = v643;
    if (v20 >= v643)
    {
      v640 = v54;
      v64 = 0;
      v63 = 0;
      if (v49)
      {
        goto LABEL_98;
      }

      goto LABEL_104;
    }

    if (v49 && (v47 | (v48 << 8)) + 5 <= v54)
    {
      v640 = v54;
      v64 = 0;
      goto LABEL_98;
    }

    v58 = &v661 + v56;
    *v58 = &v34[v20];
    v59 = v57 - v20;
    *(v58 + 2) = v59;
    v60 = (v54 + v59);
    *&v2[v55] = v51 | 0x2000;
    v61 = (v56 + 1);
    if (v60 < 3)
    {
      v62 = 1;
    }

    else
    {
      v62 = v49;
    }

    if ((v62 & 1) == 0)
    {
      if (DWORD2(v661) < 3)
      {
        if (DWORD2(v661) == 2)
        {
          if (v629 <= v628)
          {
            goto LABEL_556;
          }

          v74 = *(v661 + 1);
          v75 = *v662;
          goto LABEL_92;
        }

        if (DWORD2(v661) != 1)
        {
          v525 = sub_10007CF34();
          v526 = _NRLogIsLevelEnabled();

          if (v526)
          {
            v527 = sub_10007CF34();
            IOVecString = createIOVecString();
            _NRLogWithArgs();
          }

          goto LABEL_522;
        }

        if (DWORD2(v662) < 2)
        {
          v548 = sub_10007CF34();
          v549 = _NRLogIsLevelEnabled();

          if (v549)
          {
            v550 = sub_10007CF34();
            v621 = createIOVecString();
            _NRLogWithArgs();
          }

          goto LABEL_522;
        }

        if (v629 <= v628)
        {
          v528 = sub_10007CF34();
          v529 = _NRLogIsLevelEnabled();

          if (v529)
          {
            v530 = sub_10007CF34();
            v619 = createIOVecString();
            _NRLogWithArgs();
          }

          goto LABEL_522;
        }

        v67 = *v662;
      }

      else
      {
        v67 = *(v661 + 1);
      }

      v74 = v67;
      v75 = v67 >> 8;
LABEL_92:
      v76 = bswap32(v74 | (v75 << 8));
      v47 = BYTE2(v76);
      v48 = HIBYTE(v76);
      goto LABEL_93;
    }

    if (!v49)
    {
      v640 = v60;
      v63 = 0;
      *&v2[v55] = v51 | 0xA000;
      v64 = 1;
      v56 = (v56 + 1);
      v20 = v643;
      v17 = "NRLinkLinkToNexusLoop";
      goto LABEL_104;
    }

LABEL_93:
    v77 = (v47 | (v48 << 8)) + 5;
    if (v77 >= v60)
    {
      v640 = v60;
      v51 = *&v2[v55] | 0x8000;
      *&v2[v55] = v51;
      v64 = 1;
      v20 = v643;
      v56 = (v56 + 1);
    }

    else
    {
      v78 = v56;
      v79 = v56;
      v80 = v60 - v77;
      v51 = *&v2[v55] | 0x4000;
      *&v2[v55] = v51;
      v81 = &v661 + v78;
      v82 = *(v81 + 2) - (v60 - v77);
      *(v81 + 2) = v82;
      if (!v82)
      {
        v2 = v60;
        v514 = v79;
        v515 = sub_10007CF34();
        v516 = _NRLogIsLevelEnabled();

        if (v516)
        {
          v517 = sub_10007CF34();
          v584 = createIOVecString();
          _NRLogWithArgs();
        }

        _os_log_pack_size();
        __chkstk_darwin();
        v518 = *__error();
        v519 = _os_log_pack_fill();
        v520 = createIOVecString();
        sub_10009C064(v519, "NRLinkLinkToNexusLoop", v514, v80, v520, v2, v57);
        goto LABEL_535;
      }

      v20 = v643 - v80;
      v64 = 1;
      v56 = v61;
      v640 = ((v47 | (v48 << 8)) + 5);
    }

    v17 = "NRLinkLinkToNexusLoop";
LABEL_98:
    v83 = v20;
    v84 = v632;
    if ((v632 - 100) >= 6 && (v632 - 2) >= 4)
    {
      if (v632 == 1)
      {
        v85 = 255;
        goto LABEL_101;
      }
    }

    else
    {
      v85 = 2000;
LABEL_101:
      v86 = v47 | (v48 << 8);
      if (v86 > v85)
      {
        StringFromNRTLVType = createStringFromNRTLVType();
        IOVecStringWithContents = createIOVecStringWithContents();
        v564 = v86;
        v2 = v638;
        sub_100080EB4(v638, @"Received invalid TLV len %u for %@ (max=%u) %@", v385, v386, v387, v388, v389, v390, v564);
        goto LABEL_10;
      }
    }

    if ((v47 | (v48 << 8)) + 5 <= v640)
    {
      v99 = v636;
      v2 = v638;
      v20 = v83;
      goto LABEL_187;
    }

    v63 = 1;
    v2 = v638;
    v20 = v83;
LABEL_104:
    LODWORD(v635) = v63;
    v87 = v48;
    v633 = v56;
    v88 = v47;
    v646 = 0uLL;
    v647 = 0uLL;
    v644 = 0uLL;
    v645 = 0uLL;
    v89 = *(v2 + 1055);
    v90 = v636;
    v91 = os_channel_get_next_slot();
    if (v91)
    {
      v92 = v91;
      v642 = v20;
      v93 = *(v2 + 1055);
      v94 = v92;
      os_channel_slot_get_packet();
      os_packet_get_next_buflet();
      v95 = os_buflet_get_object_address();
      v96 = os_buflet_get_data_offset();
      v97 = os_buflet_get_data_length();
      if (HIWORD(v97))
      {
LABEL_466:
        if (qword_100229088 != -1)
        {
          dispatch_once(&qword_100229088, &stru_1001FB1C0);
        }

        v393 = "NRLinkLinkToNexusLoop";
        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229088 != -1)
          {
            dispatch_once(&qword_100229088, &stru_1001FB1C0);
          }

          _NRLogWithArgs();
        }
      }

      else
      {
        v98 = v97;
        os_packet_get_flow_uuid();
        if (v2[292] == 1)
        {
          v2[292] = 0;
          LODWORD(v637) = 1;
        }

        else
        {
          LODWORD(v637) = v637 | BYTE2(v648);
        }

        v20 = v642;
        v100 = v640;
        v47 = v88;
        v48 = v87;
        v101 = v94;
        v102 = v635;
        v103 = v633;
        v34 = (v95 + v96);
        v104 = &v661 + v633;
        *v104 = v34;
        if (v98)
        {
          *(v104 + 2) = v98;
          v2 = v638;
          v105 = *&v638[v641] | 0x20000;
          *&v638[v641] = v105;
          v106 = v98 + v100;
          if (v106 < 3)
          {
            v107 = 1;
          }

          else
          {
            v107 = v102;
          }

          if (v107)
          {
            if (!v102)
            {
              v111 = 0;
              v108 = &OBJC_IVAR___BTPResolver__sdRefResolve;
              goto LABEL_141;
            }

            v108 = &OBJC_IVAR___BTPResolver__sdRefResolve;
LABEL_139:
            v117 = (v47 | (v48 << 8)) + 5;
            v105 = *&v2[v641];
            if (v117 <= v106)
            {
              v51 = v105 | 0x40000;
              *&v2[v641] = v51;
              v118 = v106 - v117;
              v119 = v103;
              v120 = &v661 + v103;
              v121 = *(v120 + 2) - (v106 - v117);
              *(v120 + 2) = v121;
              if (!v121)
              {
                v636 = (v103 + 1);
                v411 = v106;
LABEL_484:
                v412 = sub_10007CF34();
                v413 = _NRLogIsLevelEnabled();

                v2 = "NRLinkLinkToNexusLoop";
                if (v413)
                {
                  v414 = sub_10007CF34();
                  v17 = v636;
                  v415 = createIOVecString();
                  v416 = v642;
                  _NRLogWithArgs();
                }

                else
                {
                  v416 = v642;
                  v17 = v636;
                }

                _os_log_pack_size();
                __chkstk_darwin();
                v420 = *__error();
                v421 = _os_log_pack_fill();
                v422 = createIOVecString();
                sub_10009C064(v421, "NRLinkLinkToNexusLoop", v119, v118, v422, v411, v416);

                sub_10007CF34();
                _NRLogAbortWithPack();
LABEL_491:
                v423 = sub_10007CF34();
                v424 = _NRLogIsLevelEnabled();

                if (v424)
                {
                  v425 = sub_10007CF34();
                  _NRLogWithArgs();
                }

                goto LABEL_552;
              }

              v20 = v98 - v118;
              v650 = v644;
              v651 = v645;
              v111 = 1;
              v652 = v646;
              v653 = v647;
              v106 = (v47 | (v48 << 8)) + 5;
              LODWORD(v643) = v98;
              v630 = v101;
              goto LABEL_144;
            }

            v111 = 1;
            v20 = v642;
LABEL_141:
            v51 = v105 | 0x80000;
            *&v2[v641] = v51;
            v630 = v636;
            v34 = v639;
LABEL_144:
            v122 = (v103 + 2);
            v123 = &v623[16 * v103];
            while (1)
            {
              v56 = (v122 - 1);
              v640 = v106;
              if ((v111 & 1) != 0 && (v48 << 8) + v47 + 5 <= v106)
              {
                v64 = 1;
                v17 = "NRLinkLinkToNexusLoop";
                v84 = v632;
LABEL_186:
                v99 = v630;
                goto LABEL_187;
              }

              v124 = v123;
              v634 = v47;
              v635 = v48;
              v646 = 0u;
              v647 = 0u;
              v644 = 0u;
              v645 = 0u;
              v125 = *&v2[v108[361]];
              v126 = v101;
              v127 = os_channel_get_next_slot();
              if (!v127)
              {
                v56 = (v122 - 1);
                v51 = *&v2[v641] | 0x10000;
                *&v2[v641] = v51;
                v84 = v632;
                if (v111)
                {
                  v64 = 1;
                  v636 = v126;
                  v17 = "NRLinkLinkToNexusLoop";
                  LODWORD(v47) = v634;
                  LODWORD(v48) = v635;
                  goto LABEL_186;
                }

                v636 = v126;
                v17 = "NRLinkLinkToNexusLoop";
LABEL_392:
                v280 = v56;
                if (gNRPacketLoggingEnabled == 1)
                {
                  v350 = *(v2 + 4);
                  v351 = _NRCopyLogObjectForNRUUID();
                  v352 = _NRLogIsLevelEnabled();

                  if (v352)
                  {
                    v353 = *(v2 + 4);
                    v354 = _NRCopyLogObjectForNRUUID();
                    v355 = [v2 copyDescription];
                    v356 = createStringFromNRTLVType();
                    _NRLogWithArgs();
                  }
                }

                v19 = &OBJC_IVAR___BTPResolver__sdRefResolve;
                v18 = &OBJC_IVAR___BTPResolver__sdRefResolve;
                if (v2[261] == 1 && *(v2 + 1071))
                {
                  v2[261] = 0;
                  ++*(v2 + 1087);
                  if (gNRPacketLoggingEnabled == 1)
                  {
                    v367 = *(v2 + 4);
                    v368 = _NRCopyLogObjectForNRUUID();
                    v369 = _NRLogIsLevelEnabled();

                    if (v369)
                    {
                      v370 = *(v2 + 4);
                      v371 = _NRCopyLogObjectForNRUUID();
                      v612 = [v2 copyDescription];
                      _NRLogWithArgs();
                    }
                  }

                  dispatch_resume(*(v2 + 1071));
                }

                if ((v629 > v628) < v280)
                {
                  v281 = v280 - (v629 > v628);
                  v282 = &v627[4 * (v629 > v628)];
                  do
                  {
                    if (gNRPacketLoggingEnabled == 1)
                    {
                      v284 = *(v2 + 4);
                      v285 = _NRCopyLogObjectForNRUUID();
                      v286 = _NRLogIsLevelEnabled();

                      if (v286)
                      {
                        v287 = *(v2 + 4);
                        v288 = _NRCopyLogObjectForNRUUID();
                        v289 = [v2 copyDescription];
                        v590 = *(v2 + 371);
                        v608 = *(v2 + 375);
                        v561 = *v282;
                        v573 = *(v282 - 1);
                        _NRLogWithArgs();
                      }
                    }

                    memcpy((*(v2 + 1455) + *(v2 + 371)), *(v282 - 1), *v282);
                    v283 = *v282;
                    v282 += 16;
                    *(v2 + 371) += v283;
                    --v281;
                  }

                  while (v281);
                }

                *&v2[v641] |= 0x100000uLL;
LABEL_405:
                *(&v631 + 1) = v636;
                goto LABEL_406;
              }

              v128 = v127;
              v636 = v122;
              v633 = (v122 - 1);
              v639 = v34;
              v642 = v20;
              v129 = *&v2[v108[361]];
              v130 = v128;
              os_channel_slot_get_packet();
              os_packet_get_next_buflet();
              v131 = os_buflet_get_object_address();
              v132 = os_buflet_get_data_offset();
              v133 = os_buflet_get_data_length();
              if (v133 >= 0x10000)
              {
                goto LABEL_466;
              }

              v134 = v133;
              os_packet_get_flow_uuid();
              if (v2[292] == 1)
              {
                v2[292] = 0;
                LODWORD(v637) = 1;
              }

              else
              {
                LODWORD(v637) = v637 | BYTE2(v648);
              }

              v135 = v640;
              v47 = v634;
              v48 = v635;
              v136 = v124;
              v101 = v130;
              v34 = (v131 + v132);
              *(v124 - 1) = v34;
              v20 = v642;
              if (!v134)
              {
                goto LABEL_473;
              }

              *v124 = v134;
              v137 = *&v638[v641];
              *&v638[v641] = v137 | 0x20000;
              v106 = v134 + v135;
              if (v111 & 1 | (v106 < 3))
              {
                v108 = &OBJC_IVAR___BTPResolver__sdRefResolve;
                v138 = v636;
                if ((v111 & 1) == 0)
                {
                  v51 = v137 | 0xA0000;
                  v2 = v638;
                  *&v638[v641] = v51;
                  if (v138 == 16)
                  {
                    goto LABEL_482;
                  }

                  v111 = 0;
                  v34 = v639;
                  goto LABEL_146;
                }

                v2 = v638;
                goto LABEL_175;
              }

              v108 = &OBJC_IVAR___BTPResolver__sdRefResolve;
              v138 = v636;
              if (DWORD2(v661) >= 3)
              {
                break;
              }

              if (DWORD2(v661) != 2)
              {
                if (DWORD2(v661) != 1)
                {
                  goto LABEL_494;
                }

                if (DWORD2(v662) <= 1)
                {
                  if (v633 <= 1)
                  {
                    goto LABEL_517;
                  }

                  v2 = v638;
                  if (DWORD2(v662) != 1)
                  {
                    goto LABEL_520;
                  }

                  v140 = *v662;
                  v141 = *v663;
                  goto LABEL_171;
                }

                v139 = *v662;
                goto LABEL_160;
              }

              v140 = *(v661 + 1);
              v141 = *v662;
              v2 = v638;
LABEL_171:
              v142 = v140 | (v141 << 8);
              v143 = bswap32(v142);
              v47 = BYTE2(v143);
              v48 = HIBYTE(v143);
              if ((v632 - 100) >= 6 && (v632 - 2) >= 4)
              {
                if (v632 != 1)
                {
                  goto LABEL_175;
                }

                v144 = 255;
              }

              else
              {
                v144 = 2000;
              }

              v116 = __rev16(v142);
              if (v116 > v144)
              {
                goto LABEL_460;
              }

LABEL_175:
              v145 = (v48 << 8) + v47 + 5;
              v146 = v641;
              v147 = *&v2[v641];
              if (v145 <= v106)
              {
                v51 = v147 | 0x40000;
                *&v2[v641] = v51;
                v118 = v106 - v145;
                v148 = &v661 + v138 - 1;
                v149 = *(v148 + 2) - (v106 - v145);
                *(v148 + 2) = v149;
                if (!v149)
                {
                  v410 = v138;
                  v411 = v106;
                  v119 = v410 - 1;
                  goto LABEL_484;
                }

                v20 = v134 - v118;
                v650 = v644;
                v651 = v645;
                v652 = v646;
                v653 = v647;
                if (v138 == 16)
                {
                  v630 = v101;
                  LODWORD(v643) = v134;
                  v106 = (v48 << 8) + v47 + 5;
                  goto LABEL_194;
                }

                v111 = 1;
                v630 = v101;
                LODWORD(v643) = v134;
                v106 = (v48 << 8) + v47 + 5;
              }

              else
              {
                v51 = v147 | 0x80000;
                *&v2[v641] = v51;
                if (v138 == 16)
                {
                  v152 = v145 > v106;
                  v145 = v106;
                  v20 = v642;
                  v34 = v639;
                  if (!v152)
                  {
LABEL_194:
                    v640 = v106;
                    v634 = (v47 | (v48 << 8));
                    v56 = 16;
                    v150 = v47 | (v48 << 8);
                    v84 = v632;
                    v99 = v630;
LABEL_195:
                    v151 = v51 | 0x200000;
                    v636 = v99;
                    *(&v631 + 1) = v99;
                    goto LABEL_196;
                  }

LABEL_481:
                  v634 = v47;
                  v635 = v48;
LABEL_482:
                  v403 = createIOVecStringWithContents();
                  sub_100080EB4(v2, @"LtN not enough ioVecs %@ for %u", v404, v405, v406, v407, v408, v409, v403);

                  goto LABEL_12;
                }

                v111 = 1;
                v20 = v642;
                v34 = v639;
              }

LABEL_146:
              v122 = v138 + 1;
              v123 = (v136 + 4);
              v636 = v126;
            }

            v139 = *(v661 + 1);
LABEL_160:
            v140 = v139;
            v141 = v139 >> 8;
            v2 = v638;
            goto LABEL_171;
          }

          if (DWORD2(v661) > 2)
          {
            v109 = *(v661 + 1);
            v110 = HIBYTE(*(v661 + 1));
            v108 = &OBJC_IVAR___BTPResolver__sdRefResolve;
LABEL_135:
            v113 = v109 | (v110 << 8);
            v114 = bswap32(v113);
            v47 = BYTE2(v114);
            v48 = HIBYTE(v114);
            if ((v632 - 100) >= 6 && (v632 - 2) >= 4)
            {
              if (v632 != 1)
              {
                goto LABEL_139;
              }

              v115 = 255;
            }

            else
            {
              v115 = 2000;
            }

            v116 = __rev16(v113);
            if (v116 > v115)
            {
LABEL_460:
              v378 = createStringFromNRTLVType();
              v613 = createIOVecStringWithContents();
              sub_100080EB4(v2, @"LookAhead received invalid TLV len %u for %@ (max=%u) %@", v379, v380, v381, v382, v383, v384, v116);

              goto LABEL_12;
            }

            goto LABEL_139;
          }

          v108 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          if (DWORD2(v661) == 2)
          {
            if (v633)
            {
              v112 = v662;
              v109 = *(v661 + 1);
LABEL_134:
              v110 = *v112;
              goto LABEL_135;
            }

LABEL_556:
            v521 = sub_10007CF34();
            v522 = _NRLogIsLevelEnabled();

            if (v522)
            {
              v523 = sub_10007CF34();
              _NRLogWithArgs();
            }

            _os_log_pack_size();
            __chkstk_darwin();
            v524 = *__error();
            v438 = _os_log_pack_fill();
            *v438 = 136446210;
            v439 = "nrReadTLVLenHBOFromIOVec";
LABEL_506:
            *(v438 + 4) = v439;
            goto LABEL_480;
          }

          if (DWORD2(v661) == 1)
          {
            if (DWORD2(v662) <= 1)
            {
              if (v633 < 2)
              {
LABEL_517:
                v460 = sub_10007CF34();
                v461 = _NRLogIsLevelEnabled();

                if (v461)
                {
                  v462 = sub_10007CF34();
                  v616 = createIOVecString();
                  _NRLogWithArgs();
                }
              }

              else
              {
                if (DWORD2(v662) == 1)
                {
                  v112 = v663;
                  v109 = *v662;
                  goto LABEL_134;
                }

LABEL_520:
                v463 = sub_10007CF34();
                v464 = _NRLogIsLevelEnabled();

                if (v464)
                {
                  v465 = sub_10007CF34();
                  v617 = createIOVecString();
                  _NRLogWithArgs();
                }
              }
            }

            else
            {
              if (v633)
              {
                v109 = *v662;
                v110 = HIBYTE(*v662);
                goto LABEL_135;
              }

              v536 = sub_10007CF34();
              v537 = _NRLogIsLevelEnabled();

              if (v537)
              {
                v538 = sub_10007CF34();
                v620 = createIOVecString();
                _NRLogWithArgs();
              }
            }
          }

          else
          {
LABEL_494:
            v426 = sub_10007CF34();
            v427 = _NRLogIsLevelEnabled();

            if (v427)
            {
              v428 = sub_10007CF34();
              v614 = createIOVecString();
              _NRLogWithArgs();
            }
          }

LABEL_522:
          _os_log_pack_size();
          __chkstk_darwin();
          v466 = *__error();
          v467 = _os_log_pack_fill();
          v468 = createIOVecString();
          *v467 = 136446466;
          *(v467 + 4) = "nrReadTLVLenHBOFromIOVec";
          *(v467 + 12) = 2112;
          *(v467 + 14) = v468;
          goto LABEL_480;
        }

LABEL_473:
        if (qword_100229088 != -1)
        {
          dispatch_once(&qword_100229088, &stru_1001FB1C0);
        }

        v393 = "NRLinkLinkToNexusLoop";
        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229088 != -1)
          {
            dispatch_once(&qword_100229088, &stru_1001FB1C0);
          }

          _NRLogWithArgs();
        }
      }

LABEL_479:
      _os_log_pack_size();
      __chkstk_darwin();
      v401 = *__error();
      v402 = _os_log_pack_fill();
      *v402 = 136446210;
      *(v402 + 4) = v393;
      goto LABEL_480;
    }

    v51 = *&v2[v641] | 0x10000;
    *&v2[v641] = v51;
    v99 = v90;
    v56 = v633;
    v84 = v632;
    LODWORD(v47) = v88;
    LODWORD(v48) = v87;
    if ((v635 & 1) == 0)
    {
      goto LABEL_392;
    }

LABEL_187:
    v145 = v640;
    v150 = v47 | (v48 << 8);
    v634 = (v47 | (v48 << 8));
    if (v634 + 5 > v640)
    {
      goto LABEL_392;
    }

    if (v64)
    {
      v146 = v641;
      goto LABEL_195;
    }

    v151 = v51 | 0x400000;
    v636 = v99;
    v146 = v641;
LABEL_196:
    *&v2[v146] = v151;
    *(v2 + 1519) += v145;
    v642 = v20;
    v633 = v56;
    v635 = v150;
    if (v84 < 100)
    {
      if (!v56)
      {
        v440 = sub_10007CF34();
        v441 = _NRLogIsLevelEnabled();

        if (v441)
        {
          v442 = sub_10007CF34();
          _NRLogWithArgs();
        }

        _os_log_pack_size();
        __chkstk_darwin();
        v443 = *__error();
        v438 = _os_log_pack_fill();
        *v438 = 136446210;
        v439 = "nrChecksumIOVecInner";
        goto LABEL_506;
      }

      LODWORD(v626) = v56;
      v630 = v622;
      v161 = 0;
      v162 = 0;
      v163 = 0;
      v164 = 0;
      v165 = v150 + 3;
      v166 = v56;
      v167 = v627;
      do
      {
        if (v165 <= v162)
        {
          v80 = 0;
          goto LABEL_229;
        }

        if (*v167 >= v165 - v162)
        {
          v80 = v165 - v162;
        }

        else
        {
          v80 = *v167;
        }

        if (!v80)
        {
          v391 = sub_10007CF34();
          v392 = _NRLogIsLevelEnabled();

          v393 = "nrChecksumUpdate";
          if (v392)
          {
            v394 = sub_10007CF34();
            _NRLogWithArgs();
          }

          goto LABEL_479;
        }

        v2 = v622;
        v168 = *(v167 - 1);
        if ((v163 & 1) == 0 || (v622[1] = *(v167 - 1), LOWORD(v644) = *v168 << 8, v164 = os_inet_checksum(), v80 != 1))
        {
          v164 = os_inet_checksum();
        }

        if (v80)
        {
          v163 ^= 1u;
        }

        v162 += v80;
        if (v162 >= v165 && v80 < *v167)
        {
          goto LABEL_229;
        }

        ++v161;
        v167 += 4;
      }

      while (v166 != v161);
      LOWORD(v161) = v633;
LABEL_229:
      v17 = "NRLinkLinkToNexusLoop";
      if (v162 != v165)
      {
        v454 = sub_10007CF34();
        v455 = _NRLogIsLevelEnabled();

        v393 = "nrChecksumIOVecInner";
        if (v455)
        {
          v456 = sub_10007CF34();
          _NRLogWithArgs();
        }

        goto LABEL_479;
      }

      v169 = ~v164;
      v170 = (~v164 >> 8);
      v18 = (&v661 + v161);
      v171 = *(v18 + 8);
      if (v171 < v80 + 2)
      {
        if (v171 < v80 + 1)
        {
          v473 = sub_10007CF34();
          v474 = _NRLogIsLevelEnabled();

          if (v474)
          {
            v475 = sub_10007CF34();
            v581 = createIOVecString();
            _NRLogWithArgs();
          }
        }

        else if (v161 + 1 >= v626)
        {
          v476 = sub_10007CF34();
          v477 = _NRLogIsLevelEnabled();

          if (v477)
          {
            v478 = sub_10007CF34();
            v582 = createIOVecString();
            _NRLogWithArgs();
          }
        }

        else
        {
          v2 = (&v661 + v161 + 1);
          if (*(v2 + 2))
          {
            if (*(*v18 + v80) != v169 || **v2 != v170)
            {
              goto LABEL_536;
            }

            goto LABEL_239;
          }

          v479 = sub_10007CF34();
          v480 = _NRLogIsLevelEnabled();

          if (v480)
          {
            v481 = sub_10007CF34();
            v583 = createIOVecString();
            _NRLogWithArgs();
          }
        }

        _os_log_pack_size();
        __chkstk_darwin();
        v482 = *__error();
        v483 = _os_log_pack_fill();
        v449 = createIOVecString();
        sub_10005015C(v483, "nrChecksumIOVecInner", v449, v161, v80);
        goto LABEL_534;
      }

      v172 = v80;
      v173 = (*v18 + v80);
      if (*v173 != v169 || v173[1] != v170)
      {
        v469 = sub_10007CF34();
        v470 = _NRLogIsLevelEnabled();

        if (v470)
        {
          v471 = sub_10007CF34();
          v472 = (*v18 + v172);
          v558 = *v472;
          v565 = v472[1];
          goto LABEL_538;
        }

LABEL_539:
        v2 = v638;
        LOWORD(v20) = v642;
        goto LABEL_540;
      }

LABEL_239:
      v2 = v638;
      v20 = v642;
      v174 = v633;
LABEL_244:
      v646 = 0u;
      v647 = 0u;
      v644 = 0u;
      v645 = 0u;
      v176 = *(v2 + 455);
      v177 = os_channel_get_next_slot();
      v18 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      v639 = v34;
      if (!v177)
      {
        v19 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        v182 = v628;
        v181 = v629;
        if (v2[253] == 1 && *(v2 + 471))
        {
          v2[253] = 0;
          ++*(v2 + 495);
          if (gNRPacketLoggingEnabled == 1)
          {
            v268 = *(v2 + 4);
            v269 = _NRCopyLogObjectForNRUUID();
            v270 = _NRLogIsLevelEnabled();

            if (v270)
            {
              v271 = *(v2 + 4);
              v272 = _NRCopyLogObjectForNRUUID();
              v606 = [v2 copyDescription];
              _NRLogWithArgs();
            }
          }

          dispatch_resume(*(v2 + 471));
          v174 = v633;
          v182 = v628;
          v181 = v629;
        }

        v183 = *&v2[v641] | 0x800000;
        *&v2[v641] = v183;
        if ((v181 > v182) < v174)
        {
          v184 = v181 > v182;
          v185 = v174;
          v186 = &v627[4 * v184];
          while (1)
          {
            if (gNRPacketLoggingEnabled == 1)
            {
              v190 = *(v2 + 4);
              v191 = _NRCopyLogObjectForNRUUID();
              v192 = _NRLogIsLevelEnabled();

              if (v192)
              {
                v193 = *(v2 + 4);
                v194 = _NRCopyLogObjectForNRUUID();
                v195 = [v2 copyDescription];
                v568 = *(v2 + 371);
                v586 = *(v2 + 375);
                v560 = *(v186 - 1);
                v557 = *v186;
                _NRLogWithArgs();
              }
            }

            v187 = *(v2 + 371);
            v188 = *v186;
            if ((v188 + v187) >= *(v2 + 315))
            {
              break;
            }

            memcpy((*(v2 + 1455) + v187), *(v186 - 1), v188);
            v189 = *v186;
            v186 += 16;
            *(v2 + 371) += v189;
            if (v185 == ++v184)
            {
              v20 = v642;
              v183 = *&v2[v641];
              v174 = v633;
              v182 = v628;
              v181 = v629;
              goto LABEL_272;
            }
          }

          *&v2[v641] |= 0x1000000uLL;
          StringFromNRTLVType = createIOVecString();
          v580 = *(v2 + 371);
          v597 = *(v2 + 375);
          sub_100080EB4(v2, @"no nexusOutputSlot and linkReadBuffer is full %@ filledIn=%u handled=%u", v395, v396, v397, v398, v399, v400, StringFromNRTLVType);
          goto LABEL_11;
        }

LABEL_272:
        if (v181 <= v182 || v174 != 1)
        {
          *&v2[v641] = v183 | 0x4000000;
          v21 = v636;
          *(&v631 + 1) = v636;
          goto LABEL_18;
        }

        *&v2[v641] = v183 | 0x2000000;
        if (v20 && v643 > v20)
        {
          v279 = v643 - v20;
          if (gNRPacketLoggingEnabled == 1)
          {
            v372 = *(v2 + 4);
            v373 = _NRCopyLogObjectForNRUUID();
            v374 = _NRLogIsLevelEnabled();

            if (v374)
            {
              v375 = *(v2 + 4);
              v376 = _NRCopyLogObjectForNRUUID();
              v377 = [v2 copyDescription];
              v596 = *(v2 + 375);
              v579 = *(v2 + 371);
              _NRLogWithArgs();
            }
          }

          memcpy((*(v2 + 1455) + *(v2 + 371)), &v639[v20], v279);
          *(v2 + 371) += v279;
          goto LABEL_405;
        }

LABEL_406:
        if (*(&v631 + 1))
        {
          v290 = *&v2[*(v18 + 1704)];
          v291 = *&v2[v19[427]];
          if (v290 <= v291)
          {
            if (v291 != v290)
            {
              v506 = sub_10007CF34();
              v507 = _NRLogIsLevelEnabled();

              if (v507)
              {
                v508 = sub_10007CF34();
                _NRLogWithArgs();
              }

              goto LABEL_552;
            }

            *(v2 + 2015) |= 0x400000000uLL;
            if (gNRPacketLoggingEnabled == 1)
            {
              v339 = *(v2 + 4);
              v340 = _NRCopyLogObjectForNRUUID();
              v341 = _NRLogIsLevelEnabled();

              if (v341)
              {
                v342 = *(v2 + 4);
                v343 = _NRCopyLogObjectForNRUUID();
                v577 = [v2 copyDescription];
                v594 = *&v2[*(v18 + 1704)];
                _NRLogWithArgs();
              }
            }

            *&v2[*(v18 + 1704)] = 0;
LABEL_414:
            *&v2[v19[427]] = 0;
          }

          else
          {
            if (v291 > *(v2 + 323))
            {
              *(v2 + 2015) |= 0x80000000uLL;
              if (gNRPacketLoggingEnabled == 1)
              {
                v344 = *(v2 + 4);
                v345 = _NRCopyLogObjectForNRUUID();
                v346 = _NRLogIsLevelEnabled();

                if (v346)
                {
                  v347 = *(v2 + 4);
                  v348 = _NRCopyLogObjectForNRUUID();
                  v349 = [v2 copyDescription];
                  v578 = *&v2[*(v18 + 1704)];
                  v595 = *(v2 + 323);
                  v563 = *&v2[v19[427]];
                  _NRLogWithArgs();
                }
              }

              v292 = *&v2[v19[427]];
              memmove(*(v2 + 1455), (*(v2 + 1455) + v292), (*&v2[*(v18 + 1704)] - v292));
              *&v2[*(v18 + 1704)] -= *&v2[v19[427]];
              goto LABEL_414;
            }

            v304 = *(v2 + 2015);
            if (v291)
            {
              *(v2 + 2015) = v304 | &_mh_execute_header;
              if (gNRPacketLoggingEnabled == 1)
              {
                v305 = *(v2 + 4);
                v306 = _NRCopyLogObjectForNRUUID();
                v307 = _NRLogIsLevelEnabled();

                if (v307)
                {
                  goto LABEL_437;
                }
              }
            }

            else
            {
              *(v2 + 2015) = v304 | 0x200000000;
              if (gNRPacketLoggingEnabled == 1)
              {
                v308 = *(v2 + 4);
                v309 = _NRCopyLogObjectForNRUUID();
                v310 = _NRLogIsLevelEnabled();

                if (v310)
                {
LABEL_437:
                  v311 = *(v2 + 4);
                  v312 = _NRCopyLogObjectForNRUUID();
                  v313 = [v2 copyDescription];
                  v574 = *&v2[*(v18 + 1704)];
                  v592 = *(v2 + 323);
                  v562 = *&v2[v19[427]];
                  _NRLogWithArgs();
                }
              }
            }
          }

          *(v2 + 2015) |= 0x800000000uLL;
          if (gNRPacketLoggingEnabled == 1)
          {
            v319 = *(v2 + 4);
            v320 = _NRCopyLogObjectForNRUUID();
            v321 = _NRLogIsLevelEnabled();

            if (v321)
            {
              v322 = *(v2 + 4);
              v323 = _NRCopyLogObjectForNRUUID();
              v575 = [v2 copyDescription];
              _NRLogWithArgs();
            }
          }

          if (gNRPacketLoggingEnabled == 1)
          {
            v324 = +[NSDate date];
            v325 = *(v2 + 1823);
            *(v2 + 1823) = v324;
          }

          v293 = *(v2 + 1055);
          os_channel_advance_slot();
          v294 = *(v2 + 1047);
          os_channel_sync();
          ++*(v2 + 1567);
        }

        if (v631)
        {
          if (*(v2 + 455))
          {
            *(v2 + 2015) |= 0x1000000000uLL;
            if (gNRPacketLoggingEnabled == 1)
            {
              v326 = *(v2 + 4);
              v327 = _NRCopyLogObjectForNRUUID();
              v328 = _NRLogIsLevelEnabled();

              if (v328)
              {
                v329 = *(v2 + 4);
                v330 = _NRCopyLogObjectForNRUUID();
                v576 = [v2 copyDescription];
                _NRLogWithArgs();
              }
            }

            if (gNRPacketLoggingEnabled == 1)
            {
              v331 = +[NSDate date];
              v332 = *(v2 + 1815);
              *(v2 + 1815) = v331;
            }

            v295 = *(v2 + 455);
            os_channel_advance_slot();
            v296 = *(v2 + 439);
            os_channel_sync();
            if (gNRPacketLoggingEnabled == 1)
            {
              v333 = *(v2 + 4);
              v334 = _NRCopyLogObjectForNRUUID();
              v335 = _NRLogIsLevelEnabled();

              if (v335)
              {
                v336 = *(v2 + 4);
                v337 = _NRCopyLogObjectForNRUUID();
                v338 = [v2 copyDescription];
                _NRLogWithArgs();
              }
            }

            ++*(v2 + 551);
          }

          else
          {
            v314 = *(v2 + 4);
            v315 = _NRCopyLogObjectForNRUUID();
            v316 = _NRLogIsLevelEnabled();

            if (v316)
            {
              v317 = *(v2 + 4);
              v318 = _NRCopyLogObjectForNRUUID();
              v593 = [v2 copyDescription];
              _NRLogWithArgs();
            }
          }
        }

        if (*(v2 + 2015) && *(v2 + 2023))
        {
          v2[298] = v2[298] % v2[297];
          v297 = *(v2 + 2023);
          v298 = (v297 + 8 * v2[298]);
          if ((v298 + 1) <= v297 + 8 * v2[297])
          {
            if ((v298 & 7) == 0)
            {
              *v298 = *(v2 + 2015);
              ++v2[298];
              *(v2 + 2015) = 0;
            }
          }

          else
          {
            v299 = *(v2 + 4);
            v300 = _NRCopyLogObjectForNRUUID();
            v301 = _NRLogIsLevelEnabled();

            if (v301)
            {
              v302 = *(v2 + 4);
              v303 = _NRCopyLogObjectForNRUUID();
              v591 = [v2 copyDescription];
              v609 = v2[298];
              _NRLogWithArgs();
            }
          }
        }

        v16 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        v2[260] = v637 & 1;
        if (v631 == 0)
        {
          goto LABEL_12;
        }

        continue;
      }

      v178 = v632;
      if (v629 > v628)
      {
        if (gNRPacketLoggingEnabled == 1)
        {
          v251 = v177;
          v252 = *(v2 + 4);
          v253 = _NRCopyLogObjectForNRUUID();
          v254 = _NRLogIsLevelEnabled();

          v177 = v251;
          v178 = v632;
          if (v254)
          {
            v255 = *(v2 + 4);
            v256 = _NRCopyLogObjectForNRUUID();
            v257 = [v2 copyDescription];
            v570 = *(v2 + 375);
            v588 = *(v2 + 371);
            _NRLogWithArgs();

            v177 = v251;
            v178 = v632;
          }
        }

        *(v2 + 375) += DWORD2(v661);
      }

      v179 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      if (v178 > 99)
      {
        if (v178 <= 102)
        {
          if (v178 == 100)
          {
            v180 = &OBJC_IVAR___NRLinkBluetooth__recvKnownIPv6Hdr_ESP;
          }

          else if (v178 == 101)
          {
            v180 = &OBJC_IVAR___NRLinkBluetooth__recvKnownIPv6Hdr_ESP_ECT0;
          }

          else
          {
            v180 = &OBJC_IVAR___NRLinkBluetooth__recvKnownIPv6Hdr_TCP;
          }

LABEL_305:
          ++*&v2[*v180];
          v210 = *(v2 + 311);
          v640 = v177;
          if (v210)
          {
            *v645 = 503316480;
            v211 = *(v2 + 311);
          }

          v212 = nrTLVToPacket();
          if (v212)
          {
            v213 = v212;
            *&v2[v641] |= 0x8000000uLL;
            WORD1(v644) = *(v2 + 311) + v212;
            if (gNRPacketLoggingEnabled == 1)
            {
              getESPSequenceNumberFromPacket();
              if (gNRPacketLoggingEnabled)
              {
                v258 = *(v2 + 4);
                v259 = _NRCopyLogObjectForNRUUID();
                v260 = _NRLogIsLevelEnabled();

                v2 = v638;
                if (v260)
                {
                  v261 = *(v638 + 4);
                  v262 = _NRCopyLogObjectForNRUUID();
                  v571 = [v2 copyDescription];
                  _NRLogWithArgs();
                }

                v20 = v642;
              }
            }

            v196 = v640;
            v214 = *(v2 + 455);
            packet = os_channel_slot_get_packet();
            if (v637)
            {
              memset(v660, 0, sizeof(v660));
              v659 = 1;
              if (packet)
              {
                os_packet_set_flow_uuid();
                *&v2[v641] |= 0x10000000uLL;
                if (gNRPacketLoggingEnabled == 1)
                {
                  v263 = *(v2 + 4);
                  v264 = _NRCopyLogObjectForNRUUID();
                  v265 = _NRLogIsLevelEnabled();

                  if (v265)
                  {
                    v266 = *(v2 + 4);
                    v267 = _NRCopyLogObjectForNRUUID();
                    v572 = [v2 copyDescription];
                    _NRLogWithArgs();
                  }
                }
              }

              ESPSequenceNumberFromPacket = getESPSequenceNumberFromPacket();
              ESPSPIFromPacket = getESPSPIFromPacket();
              if (qword_100229268 != -1)
              {
                dispatch_once(&qword_100229268, &stru_1001FC3A0);
              }

              v218 = qword_100229260;
              v654 = _NSConcreteStackBlock;
              v655 = 3221225472;
              v656 = sub_1000922D0;
              v657 = &unk_1001FCDD8;
              v658 = __PAIR64__(ESPSequenceNumberFromPacket, ESPSPIFromPacket);
              dispatch_async(v218, &v654);

              v20 = v642;
            }

            else if (packet)
            {
              os_packet_clear_flow_uuid();
            }

            v226 = *(v2 + 455);
            os_channel_set_slot_properties();
            LODWORD(v637) = 0;
            ++*(v2 + 567);
            *(v2 + 583) += v213;
            ++v624;
            v625 += v213;
          }

          else
          {
            v219 = *(v2 + 4);
            v220 = _NRCopyLogObjectForNRUUID();
            v221 = _NRLogIsLevelEnabled();

            if (v221)
            {
              v222 = *(v2 + 4);
              v223 = _NRCopyLogObjectForNRUUID();
              v224 = [v2 copyDescription];
              v225 = createStringFromNRTLVType();
              _NRLogWithArgs();

              v20 = v642;
            }

            v196 = v631;
          }

LABEL_351:
          v179 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          goto LABEL_352;
        }

        switch(v178)
        {
          case 'g':
            v180 = &OBJC_IVAR___NRLinkBluetooth__recvKnownIPv6Hdr_TCP_ECT0;
            goto LABEL_305;
          case 'h':
            v180 = &OBJC_IVAR___NRLinkBluetooth__recvKnownIPv6Hdr_ESP_ClassC;
            goto LABEL_305;
          case 'i':
            v180 = &OBJC_IVAR___NRLinkBluetooth__recvKnownIPv6Hdr_ESP_ClassC_ECT0;
            goto LABEL_305;
        }

        goto LABEL_281;
      }

      if (v178 <= 2)
      {
        if (v178 == 1)
        {
          v197 = *(v2 + 4);
          v198 = _NRCopyLogObjectForNRUUID();
          v199 = _NRLogIsLevelEnabled();

          if (v199)
          {
            v200 = *(v2 + 4);
            v201 = _NRCopyLogObjectForNRUUID();
            v569 = [v2 copyDescription];
            _NRLogWithArgs();
          }

          v196 = v631;
          goto LABEL_351;
        }

        v180 = &OBJC_IVAR___NRLinkBluetooth__recvUncompressedIP;
        if (v178 == 2)
        {
          goto LABEL_305;
        }

LABEL_281:
        v196 = v631;
        goto LABEL_352;
      }

      if (v178 == 3)
      {
        v180 = &OBJC_IVAR___NRLinkBluetooth__recvEncapsulated6LoWPAN;
        goto LABEL_305;
      }

      if (v178 != 4)
      {
        if (v178 != 5)
        {
          goto LABEL_281;
        }

        if (v633 == 1 && (DWORD2(v661) - 5) <= 0xFFFA)
        {
          sub_100096BD0(v2, (v661 + 3), (WORD4(v661) - 5));
          v196 = v631;
          goto LABEL_352;
        }

        v227 = v635;
        if (v635)
        {
          v228 = malloc_type_malloc(v634, 0x6526958AuLL);
          if (v228)
          {
            if (!v633)
            {
              goto LABEL_500;
            }

            v229 = v228;
            v640 = v622;
            v230 = 0;
            v80 = v227;
            v231 = v633;
            v232 = 3;
            v18 = v627;
            while (1)
            {
              v233 = *v18;
              if (v232)
              {
                if (v232 > v233)
                {
                  v232 -= v233;
                  goto LABEL_330;
                }

                if (v232 >= v233)
                {
                  v232 = 0;
                  goto LABEL_330;
                }
              }

              v234 = v233 - v232;
              if (v234 >= v227 - v230)
              {
                v235 = v227 - v230;
              }

              else
              {
                v235 = v234;
              }

              memcpy(&v229[v230], (*(v18 - 8) + v232), v235);
              v230 += v235;
              if (v230 >= v227)
              {
                v20 = v642;
LABEL_349:
                if (v230 == v227)
                {
                  sub_100096BD0(v2, v229, v227);
                  free(v229);
                  v196 = v631;
                  v18 = 0x100224000;
                  goto LABEL_351;
                }

                v543 = sub_10007CF34();
                v544 = _NRLogIsLevelEnabled();

                if (v544)
                {
                  v545 = sub_10007CF34();
                  v601 = createIOVecString();
                  _NRLogWithArgs();
                }

                _os_log_pack_size();
                __chkstk_darwin();
                v546 = *__error();
                v547 = _os_log_pack_fill();
                v449 = createIOVecString();
                v450 = v547;
                v451 = v230;
                v452 = v80;
LABEL_577:
                v453 = 3;
LABEL_510:
                sub_100050120(v450, "nrWriteIOVecToBuffer", v451, v452, v453, v449);
LABEL_534:

LABEL_535:
                sub_10007CF34();
                _NRLogAbortWithPack();
LABEL_536:
                v484 = sub_10007CF34();
                v485 = _NRLogIsLevelEnabled();

                if (v485)
                {
                  v471 = sub_10007CF34();
                  v559 = *(*v18 + v80);
                  v566 = **v2;
LABEL_538:
                  _NRLogWithArgs();
                }

                goto LABEL_539;
              }

              v232 = 0;
              v20 = v642;
LABEL_330:
              v18 += 16;
              if (!--v231)
              {
                goto LABEL_349;
              }
            }
          }

          v554 = sub_10007CF34();
          v555 = _NRLogIsLevelEnabled();

          if (v555)
          {
            v556 = sub_10007CF34();
            _NRLogWithArgs();
          }
        }

        else
        {
          v539 = sub_10007CF34();
          v540 = _NRLogIsLevelEnabled();

          if (v540)
          {
            v541 = sub_10007CF34();
            _NRLogWithArgs();
          }
        }

        _os_log_pack_size();
        __chkstk_darwin();
        v542 = *__error();
        v438 = _os_log_pack_fill();
        *v438 = 136446210;
        v439 = "NRLinkLinkToNexusLoop";
        goto LABEL_506;
      }

      v202 = v635;
      if (!v635)
      {
        v237 = objc_alloc_init(NSData);
        goto LABEL_343;
      }

      v203 = malloc_type_malloc(v634, 0x87367FC4uLL);
      if (!v203)
      {
        v551 = sub_10007CF34();
        v552 = _NRLogIsLevelEnabled();

        v393 = "createNSDataFromTLVIOVec";
        if (v552)
        {
          v553 = sub_10007CF34();
          _NRLogWithArgs();
        }

        goto LABEL_479;
      }

      if (!v633)
      {
        goto LABEL_500;
      }

      v204 = v203;
      v80 = 0;
      v18 = v633;
      v205 = 3;
      v206 = v627;
      while (1)
      {
        v207 = *v206;
        if (v205)
        {
          if (v205 > v207)
          {
            v205 -= v207;
            goto LABEL_290;
          }

          if (v205 >= v207)
          {
            v205 = 0;
            goto LABEL_290;
          }
        }

        v208 = v207 - v205;
        if (v208 >= v202 - v80)
        {
          v209 = v202 - v80;
        }

        else
        {
          v209 = v208;
        }

        memcpy(&v204[v80], (*(v206 - 1) + v205), v209);
        v80 += v209;
        if (v80 >= v202)
        {
          v20 = v642;
LABEL_341:
          if (v80 != v202)
          {
            v531 = sub_10007CF34();
            v532 = _NRLogIsLevelEnabled();

            if (v532)
            {
              v533 = sub_10007CF34();
              v600 = createIOVecString();
              _NRLogWithArgs();
            }

            _os_log_pack_size();
            __chkstk_darwin();
            v534 = *__error();
            v535 = _os_log_pack_fill();
            v449 = createIOVecString();
            v450 = v535;
            v451 = v80;
            v452 = v202;
            goto LABEL_577;
          }

          v236 = [NSData alloc];
          v237 = [v236 initWithBytesNoCopy:v204 length:v634 freeWhenDone:1];
          v17 = "NRLinkLinkToNexusLoop";
          v18 = 0x100224000;
LABEL_343:
          v179 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          if (v637)
          {
            [v237 bytes];
            [v237 length];
            if (qword_100229268 != -1)
            {
              dispatch_once(&qword_100229268, &stru_1001FC3A0);
            }

            v238 = qword_100229260;
            v654 = _NSConcreteStackBlock;
            v655 = 3221225472;
            v656 = sub_1000922D0;
            v657 = &unk_1001FCDD8;
            v658 = 0;
            dispatch_async(v238, &v654);

            v179 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          }

          *&v2[v641] |= 0x20000000uLL;
          sub_100094EDC(v2, v237);

          LODWORD(v637) = 0;
          v196 = v631;
LABEL_352:
          v21 = v636;
          *&v2[v641] |= 0x40000000uLL;
          if (*(v2 + 2015) && *&v2[v179[485]])
          {
            v2[298] = v2[298] % v2[297];
            v239 = *&v2[v179[485]];
            v240 = (v239 + 8 * v2[298]);
            if ((v240 + 1) <= v239 + 8 * v2[297])
            {
              if ((v240 & 7) == 0)
              {
                *v240 = *(v2 + 2015);
                ++v2[298];
                *(v2 + 2015) = 0;
              }
            }

            else
            {
              v241 = *(v2 + 4);
              v242 = _NRCopyLogObjectForNRUUID();
              v243 = _NRLogIsLevelEnabled();

              if (v243)
              {
                v244 = *(v2 + 4);
                v245 = _NRCopyLogObjectForNRUUID();
                v587 = [v2 copyDescription];
                v604 = v2[298];
                _NRLogWithArgs();
              }
            }

            *&v631 = v196;
            v19 = &OBJC_IVAR___BTPResolver__sdRefResolve;
            v21 = v636;
          }

          else
          {
            *&v631 = v196;
            v19 = &OBJC_IVAR___BTPResolver__sdRefResolve;
          }

          goto LABEL_18;
        }

        v205 = 0;
        v20 = v642;
LABEL_290:
        v206 += 4;
        if (!--v18)
        {
          goto LABEL_341;
        }
      }
    }

    break;
  }

  LOWORD(v644) = 0;
  if (!v56)
  {
LABEL_500:
    v434 = sub_10007CF34();
    v435 = _NRLogIsLevelEnabled();

    if (v435)
    {
      v436 = sub_10007CF34();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    __chkstk_darwin();
    v437 = *__error();
    v438 = _os_log_pack_fill();
    *v438 = 136446210;
    v439 = "nrWriteIOVecToBuffer";
    goto LABEL_506;
  }

  v630 = v622;
  v153 = 0;
  v154 = bswap32(v150);
  v56 = v56;
  v155 = v627;
  v626 = (v150 + 3);
  v156 = v150 + 3;
  v18 = (v84 >> 4) ^ HIWORD(v154);
  v157 = (16 * v84) ^ HIBYTE(v154);
  while (1)
  {
    v158 = *v155;
    if (!v156)
    {
      break;
    }

    if (v156 <= v158)
    {
      if (v156 >= v158)
      {
        v156 = 0;
        goto LABEL_200;
      }

      break;
    }

    v156 -= v158;
LABEL_200:
    v155 += 4;
    if (!--v56)
    {
      goto LABEL_241;
    }
  }

  v159 = v158 - v156;
  if (v159 >= 2 - v153)
  {
    v160 = 2 - v153;
  }

  else
  {
    v160 = v159;
  }

  memcpy(&v644 + v153, (*(v155 - 1) + v156), v160);
  v153 += v160;
  if (v153 <= 1)
  {
    v156 = 0;
    v20 = v642;
    goto LABEL_200;
  }

  v20 = v642;
LABEL_241:
  if (v153 != 2)
  {
    v444 = sub_10007CF34();
    v445 = _NRLogIsLevelEnabled();

    v80 = v633;
    v2 = v626;
    if (v445)
    {
      v446 = sub_10007CF34();
      v599 = createIOVecString();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    __chkstk_darwin();
    v447 = *__error();
    v448 = _os_log_pack_fill();
    v449 = createIOVecString();
    v450 = v448;
    v451 = v153;
    v452 = 2;
    v453 = v2;
    goto LABEL_510;
  }

  v175 = v644 == (v18 | (v157 << 8));
  v17 = "NRLinkLinkToNexusLoop";
  v174 = v633;
  if (v175)
  {
    goto LABEL_244;
  }

LABEL_540:
  v486 = *(v2 + 2007);
  v487 = v635;
  if (v486)
  {
    v486[105] = 1;
  }

  v488 = *(v2 + 4);
  v489 = _NRCopyLogObjectForNRUUID();
  v490 = _NRLogIsLevelEnabled();

  if (v490)
  {
    v491 = *(v2 + 4);
    v641 = _NRCopyLogObjectForNRUUID();
    v639 = [v2 copyDescription];
    v492 = createStringFromNRTLVType();
    v643 = v487;
    v637 = *(v638 + 371);
    v493 = *(v638 + 375);
    v494 = createIOVecString();
    v642 = v20;
    v2 = v638;
    v495 = v639;
    v496 = v641;
    _NRLogWithArgs();

    v497 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  }

  else
  {
    v643 = v487;
    v497 = &OBJC_IVAR___BTPResolver__sdRefResolve;
    v642 = v20;
  }

  StringFromNRTLVType = createStringFromNRTLVType();
  v498 = *&v2[v497[426]];
  v499 = *(v2 + 375);
  IOVecStringWithContents = createIOVecString();
  sub_100080EB4(v2, @"Invalid checksum detected in loop on read type %@ len %u filledIn=%u handled=%u in %@ ioVecContentLen=%u alreadyRead=%u curLinkInputSlot=%p", v500, v501, v502, v503, v504, v505, StringFromNRTLVType);
LABEL_10:

LABEL_11:
LABEL_12:
}