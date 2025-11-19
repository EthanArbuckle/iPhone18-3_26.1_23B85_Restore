void sub_1000020FC(id a1)
{
  v1 = nr_daemon_log();
  v2 = os_log_type_enabled(v1, OS_LOG_TYPE_ERROR);

  if (v2)
  {
    v3 = nr_daemon_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100100154();
    }
  }
}

uint64_t sub_100002EA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 104));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return _objc_release_x1();
}

uint64_t sub_10000312C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 84) == 1)
  {
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  else
  {
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v2 + 96);
    v7 = *(v5 + 40);
    *(v5 + 40) = v6;
  }

  return _objc_release_x1();
}

id sub_1000034AC()
{
  if (qword_1001B39E0 != -1)
  {
    sub_10010273C();
  }

  v1 = qword_1001B39D8;

  return v1;
}

void sub_100003C74(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = (a1 + 40);
  v4 = [*(a1 + 32) scanForEntitlementsWithConnection:*(a1 + 40)];
  v5 = *v2;
  if (v4 || (v5[11] & 1) == 0)
  {
    v8 = [objc_alloc(v5[12]) initWithConnection:*v3 delegate:*v2 xpcTarget:*(*v2 + 9) entitlementBitmask:v4];
    if (v8)
    {
      [*(*v2 + 5) addObject:v8];
      objc_initWeak(&location, *v2);
      v25 = _NSConcreteStackBlock;
      v26 = 3221225472;
      v27 = sub_100004048;
      v28 = &unk_100175548;
      v29 = *v2;
      objc_copyWeak(&v31, &location);
      v8 = v8;
      v30 = v8;
      v9 = objc_retainBlock(&v25);
      [*v3 setInvalidationHandler:{v9, v25, v26, v27, v28, v29}];
      [*v3 setInterruptionHandler:v9];
      v10 = *(*v2 + 2);
      if (!v10)
      {
        v11 = [objc_opt_class() serverExportedInterface];
        v12 = *(*v2 + 2);
        *(*v2 + 2) = v11;

        v10 = *(*v2 + 2);
      }

      [*v3 setExportedInterface:v10];
      if (!*(*v2 + 3))
      {
        v13 = [objc_opt_class() serverRemoteObjectInterface];
        v14 = *(*v2 + 3);
        *(*v2 + 3) = v13;
      }

      [*v3 setExportedObject:v8];
      if (*(*v2 + 3))
      {
        [*v3 setRemoteObjectInterface:?];
      }

      v15 = nr_daemon_log();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

      if (v16)
      {
        v17 = nr_daemon_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(*v2 + 4);
          v19 = [v8 appPath];
          v20 = [v8 pid];
          *buf = 138412802;
          v34 = v18;
          v35 = 2114;
          v36 = v19;
          v37 = 2048;
          v38 = v20;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "NRXPCServer: %@ connection from %{public}@.%ld accepted", buf, 0x20u);
        }
      }

      v21 = *(*v2 + 8);
      if (objc_opt_respondsToSelector())
      {
        [*(*v2 + 8) xpcServer:*v2 proxyWillConnect:v8];
      }

      [*v3 _setQueue:*(*v2 + 14)];
      [*v3 resume];
      *(*(*(a1 + 48) + 8) + 24) = 1;

      objc_destroyWeak(&v31);
      objc_destroyWeak(&location);
    }

    else
    {
      v22 = nr_daemon_log();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

      if (v23)
      {
        v24 = nr_daemon_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_1000FCB78(v2, v2 + 1, v24);
        }
      }
    }
  }

  else
  {
    v6 = nr_daemon_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

    if (!v7)
    {
      return;
    }

    v8 = nr_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000FCC20(v2, v2 + 1, v8);
    }
  }
}

void sub_10000401C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100004048(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000040F8;
  v3[3] = &unk_100175520;
  objc_copyWeak(&v5, (a1 + 48));
  v4 = *(a1 + 40);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v5);
}

void sub_1000040F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _proxyDidDisconnect:*(a1 + 32)];
}

void sub_10000476C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setStateDescriptor:v3];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000480C;
  v5[3] = &unk_1001755C0;
  v5[4] = *(a1 + 40);
  [v4 setUpdateHandler:v5];
}

void sub_100004820(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v2 = a2;
  v3 = [NSArray arrayWithObjects:&v4 count:1];
  [v2 setPredicates:{v3, v4}];
}

void sub_100004BAC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v2 = a2;
  v3 = [NSArray arrayWithObjects:&v4 count:1];
  [v2 setPredicates:{v3, v4}];
}

void sub_100004EC0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:*(a1 + 40)];
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v2)
  {
    if (v4)
    {
      v5 = nr_daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 40);
        v7 = *(a1 + 48);
        v8 = *(a1 + 49);
        v9 = NSStringFromRBSTaskState();
        v16 = 138412802;
        v17 = v6;
        v18 = 1024;
        v19 = v7;
        v20 = 2112;
        v21 = v9;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NRXPCServer: Notifying of application: %@; running: %{BOOL}d; state: %@", &v16, 0x1Cu);
      }
    }

    v10 = *(*(a1 + 32) + 64);
    if (*(a1 + 48) == 1)
    {
      if (objc_opt_respondsToSelector())
      {
        [*(*(a1 + 32) + 64) xpcServer:*(a1 + 32) proxyDidResume:v2];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [*(*(a1 + 32) + 64) xpcServer:*(a1 + 32) proxyDidSuspend:v2];
    }
  }

  else if (v4)
  {
    v11 = nr_daemon_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v14 = *(a1 + 49);
      v15 = NSStringFromRBSTaskState();
      v16 = 138412802;
      v17 = v12;
      v18 = 1024;
      v19 = v13;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NRXPCServer: Ignoring notification of application: %@; running: %{BOOL}d; state: %@", &v16, 0x1Cu);
    }
  }
}

void sub_100005514(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 90) & 1) == 0)
  {
    *(v1 + 90) = 1;
    [*(a1 + 32) _suspend];
    [*(*(a1 + 32) + 8) invalidate];
    v3 = [*(*(a1 + 32) + 40) copy];
    [*(*(a1 + 32) + 40) removeAllObjects];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8) _invalidate];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

uint64_t sub_100005D18(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_1001B3700 = objc_opt_new();

  return _objc_release_x1();
}

void sub_10000602C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100006064(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000607C(void *a1)
{
  *(a1[4] + 28) = 1;
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 16));
  v2 = a1[4];
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 8));
  v4 = a1[4];
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;
}

void sub_100006330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Unwind_Resume(a1);
}

void sub_100006368(void *a1)
{
  *(a1[4] + 28) = 0;
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 16));
  v2 = a1[4];
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 8));
  v4 = a1[4];
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;
}

void sub_100006568(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  if (![v3 isPaired] || !objc_msgSend(v3, "isActive"))
  {
    v8 = nr_daemon_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v10 = nr_daemon_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000FCD00(v10);
      }
    }

    v5 = *(a1 + 40);
    goto LABEL_10;
  }

  v4 = [v3 isAltAccount];
  v5 = *(a1 + 40);
  if (v4)
  {
LABEL_10:
    v11 = [v5 delegate];
    [v11 transactionDidComplete:*(a1 + 40)];

    goto LABEL_11;
  }

  v6 = objc_opt_class();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000066EC;
  v13[3] = &unk_100175720;
  v12 = *(a1 + 32);
  v7 = v12.i64[0];
  v14 = vextq_s8(v12, v12, 8uLL);
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  [v6 whatKindOfSyncIsNeededForPairingID:v7 block:v13];

LABEL_11:
}

void sub_1000066EC(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 32) + 24) = a2;
  v3 = +[NRQueue registryDaemonQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000067D8;
  v9[3] = &unk_1001756F8;
  v8 = *(a1 + 32);
  v4 = *(&v8 + 1);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [v3 dispatchAsync:v9];
}

void sub_1000067D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[3])
  {
    v21 = [EPSagaTransactionPairedSyncTransaction _syncTypeString:?];
    v20 = [EPSagaTransactionPairedSyncTransaction _operationTypeStringFromSyncType:*(*(a1 + 32) + 24)];
    v3 = objc_opt_new();
    v19 = [EPRoutingSlipEntry alloc];
    v18 = objc_opt_class();
    v23[0] = @"nrDeviceIdentifier";
    v4 = [[EPSagaOperandUUID alloc] initWithUUID:*(a1 + 40)];
    v24[0] = v4;
    v23[1] = @"pairedSyncTypeKey";
    v5 = [[EPSagaOperandString alloc] initWithString:v20];
    v24[1] = v5;
    v23[2] = @"extensiblePairingShouldFilePairingReport";
    v6 = [EPSagaOperandNumber alloc];
    v7 = [*(a1 + 48) objectForKeyedSubscript:@"extensiblePairingShouldFilePairingReport"];
    v8 = [(EPSagaOperandNumber *)v6 initWithNumber:v7];
    v24[2] = v8;
    v23[3] = @"extensiblePairingGizmoPairingVersion";
    v9 = [EPSagaOperandNumber alloc];
    v10 = [*(a1 + 48) objectForKeyedSubscript:@"extensiblePairingGizmoPairingVersion"];
    v11 = [(EPSagaOperandNumber *)v9 initWithNumber:v10];
    v24[3] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];
    v13 = [(EPRoutingSlipEntry *)v19 initWithName:v21 transactionClass:v18 operands:v12];
    [v3 setEntry:v13];

    [v3 setRunningStatusCode:2];
    [v3 setNotUnrollable:1];
    [v3 setTargetPairingID:*(a1 + 40)];
    [v3 setOperationType:v20];
    if (v20 == @"initialSync")
    {
      v14 = [*(a1 + 56) serviceFromClass:objc_opt_class()];
      v15 = [v14 pairingClientProxy];
      [v3 setUserInfo:v15];
    }

    v16 = [*(a1 + 56) serviceFromClass:objc_opt_class()];
    [v16 addTransaction:v3];
    [*(a1 + 32) _addWaitForIsSetupTransactionIfNeeded];
    v17 = [*(a1 + 32) delegate];
    [v17 transactionDidComplete:*(a1 + 32)];
  }

  else
  {
    v22 = [v2 delegate];
    [v22 transactionDidComplete:*(a1 + 32)];
  }
}

void sub_100006C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100006CA8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100006CC0(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = nr_daemon_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

  if (v7)
  {
    v8 = nr_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000FCD44();
    }
  }

  v9 = *(a1 + 48);
  v10 = *(v9 + 8);
  v11 = *(v10 + 40);
  if (v5 || (a2 & 1) == 0)
  {
    *(v10 + 40) = 0;

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100006E24;
    v13[3] = &unk_100175798;
    v16 = v9;
    v12 = *(a1 + 32);
    v15 = *(a1 + 40);
    v14 = *(a1 + 32);
    [v11 requestInitialSyncStateForPairingIdentifier:v12 completion:v13];
  }
}

void sub_100006E24(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = nr_daemon_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

  if (v7)
  {
    v8 = nr_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000FCDAC();
    }
  }

  v9 = *(a1 + 48);
  v10 = *(v9 + 8);
  v11 = *(v10 + 40);
  if (v5 || (a2 & 1) == 0)
  {
    *(v10 + 40) = 0;

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100006F74;
    v13[3] = &unk_100175770;
    v15 = v9;
    v12 = *(a1 + 32);
    v14 = *(a1 + 40);
    [v11 requestSyncStateForPairingIdentifier:v12 completion:v13];
  }
}

void sub_100006F74(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000FCE14();
    }
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  (*(*(a1 + 32) + 16))();
}

void sub_1000071A4(uint64_t a1, void *a2)
{
  v3 = (a1 + 32);
  v4 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v5 = [v4 isSetup];
  if (v4)
  {
    if (!v5)
    {
      v12 = +[NRQueue registryDaemonQueue];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100007374;
      v15[3] = &unk_100175598;
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v16 = v13;
      v17 = v14;
      [v12 dispatchAsync:v15];

      v8 = v16;
LABEL_10:

      goto LABEL_11;
    }

    v6 = nr_daemon_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = nr_daemon_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [*v3 UUIDString];
        *buf = 138412290;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Device %@ already has isSetup flag set", buf, 0xCu);
      }

      goto LABEL_10;
    }
  }

  else
  {
    v10 = nr_daemon_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v8 = nr_daemon_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000FCE7C(v3, v8);
      }

      goto LABEL_10;
    }
  }

LABEL_11:
}

void sub_100007374(uint64_t a1)
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
      v30 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Adding a transaction to wait for isSetup flag for device ID %@", buf, 0xCu);
    }
  }

  v6 = [NRDevicePropertyDiffType alloc];
  v7 = [[NRDevicePropertyDiff alloc] initWithValue:&off_100186A48];
  v8 = [v6 initWithDiff:v7 andChangeType:1];

  v9 = [NRDeviceDiff alloc];
  v27 = NRDevicePropertyIsSetup;
  v28 = v8;
  v10 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v11 = [v9 initWithDiffPropertyDiffs:v10];

  v12 = [[NRDeviceDiffType alloc] initWithDiff:v11 andChangeType:1];
  v13 = [NRDeviceCollectionDiff alloc];
  v25 = *(a1 + 32);
  v26 = v12;
  v14 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v15 = [v13 initWithDeviceCollectionDiffDeviceDiffs:v14];

  v16 = objc_opt_new();
  v17 = [EPRoutingSlipEntry alloc];
  v18 = objc_opt_class();
  v19 = [[EPSagaOperandDiff alloc] initWithDiff:v15, @"deviceCollectionWaitingTransactionDiff"];
  v24 = v19;
  v20 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v21 = [(EPRoutingSlipEntry *)v17 initWithName:@"waitForIsSetup" transactionClass:v18 operands:v20];
  [v16 setEntry:v21];

  [v16 setRunningStatusCode:2];
  [v16 setOperationType:@"pair"];
  [v16 setTargetPairingID:*(a1 + 32)];
  v22 = [*(*(a1 + 40) + 8) serviceFromClass:objc_opt_class()];
  [v22 addTransaction:v16];
}

void sub_10000770C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100007778(id a1)
{
  v3[0] = @"unpair";
  v3[1] = @"initialSync";
  v4[0] = &off_100186A60;
  v4[1] = &off_100186A78;
  v3[2] = @"migration";
  v3[3] = @"pair";
  v4[2] = &off_100186A90;
  v4[3] = &off_100186AA8;
  v3[4] = @"externalSwitch";
  v3[5] = @"reunionSync";
  v4[4] = &off_100186AC0;
  v4[5] = &off_100186AD8;
  v3[6] = @"storeUnpair";
  v4[6] = &off_100186AF0;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:7];
  v2 = qword_1001B3710;
  qword_1001B3710 = v1;
}

void sub_100007D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100007D58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100007D70(uint64_t a1)
{
  v5[0] = @"unpair";
  v5[1] = @"migration";
  v6[0] = &off_100186B08;
  v6[1] = &off_100186B20;
  v5[2] = @"pair";
  v5[3] = @"externalSwitch";
  v6[2] = &off_100186B38;
  v6[3] = &off_100186B50;
  v5[4] = @"initialSync";
  v5[5] = @"reunionSync";
  v6[4] = &off_100186B68;
  v6[5] = &off_100186B68;
  v2 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:6];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100008C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100008DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100008F58(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v3 + 32);
  if (v2 == v4)
  {
LABEL_4:
    v5 = *(v3 + 40);
    if (*(a1 + 48) == v5 || ([v5 isEqual:?] & 1) != 0)
    {
      return;
    }

    goto LABEL_7;
  }

  if ([v4 isEqual:?])
  {
    v3 = *(a1 + 40);
    goto LABEL_4;
  }

LABEL_7:
  objc_storeStrong((*(a1 + 40) + 32), *(a1 + 32));
  v6 = *(a1 + 48);
  v7 = (*(a1 + 40) + 40);

  objc_storeStrong(v7, v6);
}

uint64_t sub_10000BF34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained requestSetResumable:0 userInfo:*(a1 + 32) forRunningOperationType:*(a1 + 40)];
    v4 = *(a1 + 48);
    if (v4)
    {
      (*(v4 + 16))(v4, v3, v6);
    }
  }

  return _objc_release_x2();
}

id sub_10000E250(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "EPMobileAssetAutoTrigger: kSBSLockStateNotifyKey received", v6, 2u);
    }
  }

  return [*(a1 + 32) update];
}

void sub_10000E630(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3 == 0;
  v5 = sub_1000034AC();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (!v3)
  {
    if (!v6)
    {
      v4 = 1;
      goto LABEL_12;
    }

    v7 = sub_1000034AC();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *v13 = 0;
    v8 = "EPMobileAssetAutoTrigger: updateCompatibilityIndexAsset completed successfully";
    v9 = v7;
    v10 = 2;
    goto LABEL_8;
  }

  if (!v6)
  {
    v4 = 0;
    goto LABEL_12;
  }

  v7 = sub_1000034AC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 138543362;
    *&v13[4] = v3;
    v8 = "EPMobileAssetAutoTrigger: updateCompatibilityIndexAsset failed with error: %{public}@";
    v9 = v7;
    v10 = 12;
LABEL_8:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, v13, v10);
  }

LABEL_9:

LABEL_12:
  v11 = *(a1 + 32);
  v12 = +[NSDate date];
  [v11 setLastAssetUpdateCheckDate:v12 withSuccess:v4];
}

void sub_10000EEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000EEB8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000EED0(uint64_t a1)
{
  v2 = *(a1 + 64);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000EFA8;
  v8[3] = &unk_100175AB0;
  v3 = (a1 + 56);
  v7 = *(a1 + 32);
  v4 = *(&v7 + 1);
  v5 = *(a1 + 48);
  v11 = *(a1 + 64);
  *&v6 = v5;
  *(&v6 + 1) = *v3;
  v9 = v7;
  v10 = v6;
  [v7 downloadAssetCatalogFor:@"com.apple.MobileAsset.NanoRegistryPairingCompatibilityIndex" userInitiated:v2 withCompletion:v8];
}

void sub_10000EFA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_10000EEB8;
  v16[4] = sub_10000EEC8;
  v17 = 0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000F0F0;
  v9[3] = &unk_100175A88;
  v12 = *(a1 + 48);
  v6 = v3;
  v7 = *(a1 + 32);
  v10 = v6;
  v11 = v7;
  v15 = *(a1 + 64);
  v8 = *(a1 + 56);
  v13 = v16;
  v14 = v8;
  [v4 queryAndGetLatestAssetForAssetType:v5 withAssetCompatibilityVersion:@"1" withCompletion:v9];

  _Block_object_dispose(v16, 8);
}

void sub_10000F0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000F0F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v13 = nr_framework_log();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (!v14)
    {
      goto LABEL_10;
    }

    v10 = nr_framework_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "EPMobileAssetAutoTrigger: No latest asset; nothing to do", buf, 2u);
    }

LABEL_9:

LABEL_10:
    v15 = *(a1 + 48);
    if (v15)
    {
      (*(v15 + 16))(v15, *(a1 + 32));
    }

    goto LABEL_17;
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  v7 = [*(*(*(a1 + 56) + 8) + 40) state];
  v8 = nr_framework_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v7 >= 2)
  {
    if (!v9)
    {
      goto LABEL_10;
    }

    v10 = nr_framework_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(*(*(a1 + 56) + 8) + 40) assetId];
      v12 = [*(*(*(a1 + 56) + 8) + 40) getLocalFileUrl];
      *buf = 138543618;
      v29 = v11;
      v30 = 2114;
      v31 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "EPMobileAssetAutoTrigger: Newest available asset %{public}@ is already downloaded and located at %{public}@", buf, 0x16u);
    }

    goto LABEL_9;
  }

  if (v9)
  {
    v16 = nr_framework_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [*(*(*(a1 + 56) + 8) + 40) assetId];
      *buf = 138543362;
      v29 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "EPMobileAssetAutoTrigger: Newest available asset %{public}@ is not present; starting download", buf, 0xCu);
    }
  }

  v18 = *(*(*(a1 + 56) + 8) + 40);
  v19 = [*(a1 + 40) mobileAssetDownloadOptionsUserInitiated:*(a1 + 72)];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000F408;
  v22[3] = &unk_100175A60;
  v26 = *(a1 + 56);
  v20 = v5;
  v21 = *(a1 + 64);
  v23 = v20;
  v27 = v21;
  v24 = *(a1 + 32);
  v25 = *(a1 + 48);
  [v18 startDownload:v19 completionWithError:v22];

LABEL_17:
}

void sub_10000F408(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = nr_framework_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (!v7)
    {
      goto LABEL_25;
    }

    v8 = nr_framework_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v35 = a2;
      v36 = 2114;
      v37 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "EPMobileAssetAutoTrigger: Download of newest asset failed with result %lu and error %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v9 = [*(*(*(a1 + 56) + 8) + 40) getLocalFileUrl];
    v10 = nr_framework_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = nr_framework_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*(*(*(a1 + 56) + 8) + 40) assetId];
        *buf = 138543618;
        v35 = v13;
        v36 = 2114;
        v37 = v9;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "EPMobileAssetAutoTrigger: Newest available asset %{public}@ downloaded to %{public}@", buf, 0x16u);
      }
    }

    CFPreferencesSetAppValue(NRCompatibilityIndexLatestAssetURLKey, [v9 absoluteString], @"com.apple.nanoregistryd");
    CFPreferencesAppSynchronize(@"com.apple.nanoregistryd");
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = [*(a1 + 32) results];
    v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v29 + 1) + 8 * i);
          if ([v19 state] >= 2 && v19 != *(*(*(a1 + 56) + 8) + 40))
          {
            v20 = nr_framework_log();
            v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

            if (v21)
            {
              v22 = nr_framework_log();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                v23 = [v19 assetId];
                *buf = 138543362;
                v35 = v23;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "EPMobileAssetAutoTrigger: Purging now out-of-date asset, %{public}@", buf, 0xCu);
              }
            }

            v28[0] = _NSConcreteStackBlock;
            v28[1] = 3221225472;
            v28[2] = sub_10000F7E4;
            v28[3] = &unk_100175A38;
            v28[4] = v19;
            [v19 purgeWithError:v28];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v16);
    }

    v8 = v26;
    v5 = v27;
  }

LABEL_25:
  if (*(a1 + 40))
  {
    v24 = *(a1 + 40);
  }

  else
  {
    v24 = v5;
  }

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), v24);
  v25 = *(a1 + 48);
  if (v25)
  {
    (*(v25 + 16))(v25, *(*(*(a1 + 64) + 8) + 40));
  }
}

void sub_10000F7E4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = nr_framework_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (a2)
  {
    if (v7)
    {
      v8 = nr_framework_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [*(a1 + 32) assetId];
        v13 = 138543874;
        v14 = v9;
        v15 = 2048;
        v16 = a2;
        v17 = 2114;
        v18 = v5;
        v10 = "EPMobileAssetAutoTrigger: Asset %{public}@ failed to be purged with result %lu and error %{public}@";
        v11 = v8;
        v12 = 32;
LABEL_8:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v13, v12);

        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if (v7)
  {
    v8 = nr_framework_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) assetId];
      v13 = 138543362;
      v14 = v9;
      v10 = "EPMobileAssetAutoTrigger: Asset %{public}@ purged successfully";
      v11 = v8;
      v12 = 12;
      goto LABEL_8;
    }

LABEL_9:
  }
}

void sub_10000FAE8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = nr_framework_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (a2)
  {
    if (!v7)
    {
      goto LABEL_10;
    }

    v8 = nr_framework_log();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v9 = *(a1 + 32);
    *buf = 138543874;
    v18 = v9;
    v19 = 2048;
    v20 = a2;
    v21 = 2114;
    v22 = v5;
    v10 = "EPMobileAssetAutoTrigger: Asset catalog download for %{public}@ completed with result %lu and error %{public}@";
    v11 = v8;
    v12 = 32;
    goto LABEL_8;
  }

  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = nr_framework_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    *buf = 138543362;
    v18 = v13;
    v10 = "EPMobileAssetAutoTrigger: Asset catalog download for %{public}@ completed successfully";
    v11 = v8;
    v12 = 12;
LABEL_8:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
  }

LABEL_9:

LABEL_10:
  if (*(a1 + 40))
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000FCC0;
    v14[3] = &unk_100175688;
    v16 = *(a1 + 40);
    v15 = v5;
    dispatch_async(&_dispatch_main_q, v14);
  }
}

uint64_t sub_10000FE9C(uint64_t a1)
{
  [*(a1 + 32) getLatestAssetFromQueryResults:*(a1 + 40)];
  objc_claimAutoreleasedReturnValue();
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 40));
  }

  return _objc_release_x2();
}

uint64_t sub_1000103EC(uint64_t a1)
{
  qword_1001B3728 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

id sub_1000107C4(uint64_t a1)
{
  if (!*(*(a1 + 32) + 24))
  {
    [@"com.apple.nanoregistryd" UTF8String];
    v2 = os_transaction_create();
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    *(v3 + 24) = v2;

    v5 = *(a1 + 32);
    [objc_opt_class() createKeepAliveFile];
    v6 = nr_daemon_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = nr_daemon_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "NROSTransaction master os_transaction created", v10, 2u);
      }
    }
  }

  [*(*(a1 + 32) + 8) setObject:*(a1 + 48) forKeyedSubscript:*(a1 + 40)];
  return [*(a1 + 32) dumpTransactions:*(a1 + 40) isAdded:1];
}

void sub_100010964(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  if (v2)
  {
    [*(a1 + 32) dumpTransactions:*(a1 + 40) isAdded:0];
    [*(*(a1 + 32) + 8) removeObjectForKey:*(a1 + 40)];
    if (![*(*(a1 + 32) + 8) count])
    {
      v3 = *(a1 + 32);
      [objc_opt_class() deleteKeepAliveFile];
      v4 = nr_daemon_log();
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

      if (v5)
      {
        v6 = nr_daemon_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "NROSTransaction master os_transaction dropped", v9, 2u);
        }
      }

      v7 = *(a1 + 32);
      v8 = *(v7 + 24);
      *(v7 + 24) = 0;
    }
  }
}

void sub_100011174(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011204;
  block[3] = &unk_100175660;
  block[4] = *(a1 + 40);
  dispatch_async(v2, block);
}

void sub_100011204(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  v4 = [*(a1 + 32) delegate];
  [v4 transactionDidComplete:*(a1 + 32)];
}

Class sub_1000112E0(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1001B3740)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100011424;
    v4[4] = &unk_1001756A8;
    v4[5] = v4;
    v5 = off_100175B48;
    v6 = 0;
    qword_1001B3740 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1001B3740)
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
  result = objc_getClass("NPKCompanionAgentConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000FD464();
  }

  qword_1001B3738 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100011424(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1001B3740 = result;
  return result;
}

void sub_100011680(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v12 = 600;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionSetUpTinkerHealthSyncZones: Timeout of %d triggered", buf, 8u);
    }
  }

  dispatch_source_cancel(*(*(a1 + 32) + 8));
  if ((*(*(a1 + 32) + 16) & 1) == 0)
  {
    v5 = [*(a1 + 40) errors];
    v9 = NSLocalizedDescriptionKey;
    v10 = @"Setting up shared Tinker HealthKit sync zones timed out";
    v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v7 = [NSError errorWithDomain:@"com.apple.nanoregistry.saga.EPSagaTransactionSetUpTinkerHealthSyncZonesError" code:0 userInfo:v6];
    [v5 addObject:v7];

    v8 = [*(a1 + 32) delegate];
    [v8 transactionDidComplete:*(a1 + 32)];

    *(*(a1 + 32) + 16) = 1;
  }
}

void sub_100011820(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = nr_daemon_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = nr_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionSetUpTinkerHealthSyncZones: Family circle lookup finished with error: %@", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v50 = 0x3032000000;
  v51 = sub_100011DF8;
  v52 = sub_100011E08;
  v53 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_100011DF8;
  v47 = sub_100011E08;
  v48 = 0;
  if (v6)
  {
    goto LABEL_12;
  }

  if (!*(a1 + 32))
  {
    goto LABEL_12;
  }

  v10 = [v5 members];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100011E10;
  v39[3] = &unk_100175B68;
  v41 = &v43;
  v40 = *(a1 + 32);
  p_buf = &buf;
  [v10 enumerateObjectsUsingBlock:v39];

  if (!*(*(&buf + 1) + 40))
  {
    goto LABEL_12;
  }

  if (v44[5])
  {
    v36 = objc_opt_new();
    v35 = [[HKSecondaryDevicePairingAgent alloc] initWithHealthStore:v36];
    v11 = *(a1 + 40);
    v12 = [*(*(&buf + 1) + 40) firstName];
    v13 = [*(*(&buf + 1) + 40) lastName];
    v14 = [HKSecondaryPairedDeviceConfiguration secondaryPairedDeviceConfigurationWithNanoRegistryDeviceUUID:v11 setupType:1 firstName:v12 lastName:v13];

    v15 = [*(*(&buf + 1) + 40) dsid];
    [v14 setDsid:v15];

    [v14 setDateOfBirth:0];
    v16 = [*(*(&buf + 1) + 40) dictionary];
    v17 = [v16 objectForKey:@"member-date-of-birth"];

    if (v17)
    {
      [v17 doubleValue];
      v19 = [NSDate dateWithTimeIntervalSince1970:v18 / 1000.0];
      v20 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
      v21 = [v20 components:28 fromDate:v19];
      v22 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
      [v21 setCalendar:v22];

      [v14 setDateOfBirth:v21];
    }

    v23 = [v44[5] firstName];
    [v14 setGuardianFirstName:v23];

    v24 = [v44[5] lastName];
    [v14 setGuardianLastName:v24];

    v25 = [v44[5] dsid];
    [v14 setGuardianDSID:v25];

    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100011FAC;
    v38[3] = &unk_100175B90;
    v38[4] = *(a1 + 48);
    [v35 setupHealthSharingForSecondaryPairedDeviceWithConfiguration:v14 completion:v38];
  }

  else
  {
LABEL_12:
    v26 = nr_daemon_log();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

    if (v27)
    {
      v28 = nr_daemon_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionSetUpTinkerHealthSyncZones: Member not found, skipping health sync zone setup.", v37, 2u);
      }
    }

    v29 = *(*(a1 + 48) + 8);
    if (v29)
    {
      dispatch_source_cancel(v29);
      v30 = *(a1 + 48);
      v31 = *(v30 + 8);
      *(v30 + 8) = 0;
    }

    v32 = +[NRRepeatingAlertEngine sharedInstance];
    [v32 setEnabled:1 withName:@"HealthSyncSetupFailed"];

    v33 = *(a1 + 48);
    if ((v33[16] & 1) == 0)
    {
      v34 = [v33 delegate];
      [v34 transactionDidComplete:*(a1 + 48)];

      *(*(a1 + 48) + 16) = 1;
    }
  }

  _Block_object_dispose(&v43, 8);

  _Block_object_dispose(&buf, 8);
}

void sub_100011DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100011DF8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100011E10(void *a1, void *a2)
{
  v4 = a2;
  if ([v4 isOrganizer])
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    v5 = nr_daemon_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        v8 = "EPSagaTransactionSetUpTinkerHealthSyncZones: Found organizer";
        v9 = v7;
        v10 = 2;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v16, v10);
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v11 = [v4 appleID];
    v12 = [v11 isEqualToString:a1[4]];

    if (v12)
    {
      objc_storeStrong((*(a1[6] + 8) + 40), a2);
      v13 = nr_daemon_log();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

      if (v14)
      {
        v7 = nr_daemon_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v15 = a1[4];
          v16 = 138412290;
          v17 = v15;
          v8 = "EPSagaTransactionSetUpTinkerHealthSyncZones: Found member matching %@!";
          v9 = v7;
          v10 = 12;
          goto LABEL_9;
        }

LABEL_10:
      }
    }
  }
}

void sub_100011FAC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionSetUpTinkerHealthSyncZones: setupHealthSharingForSecondaryPairedDeviceWithNRUUID finished with error: %@", &v14, 0xCu);
    }
  }

  v8 = *(*(a1 + 32) + 8);
  if (v8)
  {
    dispatch_source_cancel(v8);
    v9 = *(a1 + 32);
    v10 = *(v9 + 8);
    *(v9 + 8) = 0;
  }

  if (v4)
  {
    v11 = +[NRRepeatingAlertEngine sharedInstance];
    [v11 setEnabled:1 withName:@"HealthSyncSetupFailed"];
  }

  v12 = *(a1 + 32);
  if ((v12[16] & 1) == 0)
  {
    v13 = [v12 delegate];
    [v13 transactionDidComplete:*(a1 + 32)];

    *(*(a1 + 32) + 16) = 1;
  }
}

id sub_1000122F4(uint64_t a1)
{
  result = [*(a1 + 32) _synchronize];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_10001245C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100012474(uint64_t a1)
{
  v2 = [*(a1 + 32) _objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100012B74(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

uint64_t sub_100012CF4(uint64_t a1)
{
  qword_1001B3750 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_1000136E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a2 == 1)
  {
    v15 = objc_begin_catch(exception_object);
    (*(a15 + 16))(a15, v15);

    objc_end_catch();
    JUMPOUT(0x1000136DCLL);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100013744(id a1, NRDevice *a2)
{
  v2 = a2;
  v3 = [(NRDevice *)v2 valueForProperty:NRDevicePropertyIsAltAccount];
  if ([v3 BOOLValue])
  {
    v4 = [(NRDevice *)v2 valueForProperty:NRDevicePropertyIsArchived];
    v5 = [v4 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

BOOL sub_1000137CC(id a1, NRDevice *a2)
{
  v2 = a2;
  v3 = [(NRDevice *)v2 valueForProperty:NRDevicePropertyIsAltAccount];
  v4 = [v3 BOOLValue];

  if ((v4 & 1) == 0)
  {
    v5 = NRDevicePropertyIsActive;
    v6 = [(NRDevice *)v2 valueForProperty:NRDevicePropertyIsActive];
    if ([v6 BOOLValue])
    {
    }

    else
    {
      v7 = [(NRDevice *)v2 valueForProperty:NRDevicePropertyIsArchived];
      v8 = [v7 BOOLValue];

      if (!v8)
      {
        v17 = 1;
        goto LABEL_14;
      }
    }

    v9 = nr_framework_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = nr_framework_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = v2;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Device %@ is active", &v19, 0xCu);
      }
    }

    v12 = nr_framework_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v14 = nr_framework_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(NRDevice *)v2 valueForProperty:v5];
        v16 = [v15 BOOLValue];
        v19 = 67109120;
        LODWORD(v20) = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Bool answer: %d", &v19, 8u);
      }
    }
  }

  v17 = 0;
LABEL_14:

  return v17;
}

void sub_1000139CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nr_framework_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_framework_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Send block called with error: %@", &v7, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100013AC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nr_framework_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_framework_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Send block called with error: %@", &v7, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100013BC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nr_framework_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_framework_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Send block called with error: %@", &v7, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100013FF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:_NRDevicePropertyBluetoothIdentifier];
  v5 = [v4 value];

  if (v3 && [v3 isActive] && v5)
  {
    v6 = nr_framework_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = nr_framework_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315138;
        v24 = "[NRTermsAcknowledgementRegistryService checkForAcknowledgement:forDeviceID:withCompletion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s:Device active and has a BTUUID", &v23, 0xCu);
      }
    }

    v9 = [*(a1 + 32) termsAcknowledgementServiceGetRemoteObject];
    v10 = [v9 isIDSConnected];
    v11 = nr_framework_log();
    v12 = v11;
    if (v10)
    {
      v13 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

      if (v13)
      {
        v14 = nr_framework_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 136315138;
          v24 = "[NRTermsAcknowledgementRegistryService checkForAcknowledgement:forDeviceID:withCompletion:]_block_invoke";
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s:Connected.  Sending checkTermsEvent to watch", &v23, 0xCu);
        }
      }

      [v9 checkTermsEvent:*(a1 + 40) toIDSBTUUID:v5 withResponseBlock:*(a1 + 48)];
    }

    else
    {
      v19 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

      if (v19)
      {
        v20 = nr_framework_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_1000FD48C(v20);
        }
      }

      v21 = *(a1 + 48);
      v22 = [NRTermsAcknowledgementRegistry errorWithEnum:9];
      (*(v21 + 16))(v21, 0, v22);
    }
  }

  else
  {
    v15 = nr_framework_log();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

    if (v16)
    {
      v17 = nr_framework_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1000FD510(v17);
      }
    }

    v18 = *(a1 + 48);
    v9 = [NRTermsAcknowledgementRegistry errorWithEnum:8];
    (*(v18 + 16))(v18, 0, v9);
  }
}

void sub_100014718(uint64_t a1, void *a2)
{
  v3 = [a2 activeDevice];
  v4 = [v3 objectForKeyedSubscript:NRDevicePropertyIsAltAccount];
  v5 = [v4 value];

  v6 = [*(a1 + 32) queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100014804;
  v9[3] = &unk_100175598;
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, v9);
}

void sub_100014804(uint64_t a1)
{
  if ([*(a1 + 32) BOOLValue])
  {
    v2 = [EPKeychain storeKey:@"watchgraduation" keychainGroup:@"com.apple.nanoregistry.watchgraduation"];
    if (v2)
    {
      v3 = nr_framework_log();
      v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

      if (v4)
      {
        v5 = nr_framework_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_1000FD594(v5);
        }
      }
    }
  }

  v6 = [*(a1 + 40) delegate];
  [v6 transactionDidComplete:*(a1 + 40)];
}

void sub_100014A54(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

void sub_100014C20(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v5 = [WeakRetained queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100014CE8;
  v7[3] = &unk_100175598;
  v7[4] = *(a1 + 32);
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_100014F0C(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = [v3 applyDiff:*(a1 + 32)];

  if (!v4)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 32));
    v6 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100014FDC;
    block[3] = &unk_100175660;
    block[4] = *(a1 + 40);
    dispatch_async(v6, block);
  }
}

void sub_100015130(uint64_t a1)
{
  v2 = [*(a1 + 32) timer];
  [v2 invalidate];

  [*(a1 + 32) setTimer:0];
  v7 = NSLocalizedDescriptionKey;
  v8 = @"Timeout";
  v3 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v4 = [NSError errorWithDomain:@"com.apple.nanoregistry.saga.EPSagaTransactionWaitForDeviceCollectionChanges" code:0 userInfo:v3];

  v5 = [*(a1 + 32) routingSlipEntry];
  v6 = [v5 errors];
  [v6 addObject:v4];

  [*(a1 + 32) transactionDidComplete];
}

void sub_10001597C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_1000159A4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained registry];
    v7 = [v6 collection];
    v8 = [v7 activeDeviceID];

    if (v8)
    {
      v9 = [v3 allPairingIDs];
      v10 = [v9 containsObject:v8];

      if (v10)
      {
        v11 = [v3 objectForKeyedSubscript:v8];
        v12 = [v11 diff];
        v13 = [v12 objectForKeyedSubscript:NRDevicePropertyIsPaired];
        v14 = [v13 diff];
        v15 = [v14 value];

        LOBYTE(v14) = [v15 BOOLValue];
        v16 = [v12 objectForKeyedSubscript:_NRDevicePropertyCapabilities];
        v17 = +[NRQueue registryDaemonQueue];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_100015C9C;
        v27[3] = &unk_100175CE0;
        v31 = v14;
        v28 = v16;
        v29 = v5;
        v30 = v8;
        v18 = v8;
        v19 = v16;
        [v17 dispatchAsync:v27];

        v8 = v11;
LABEL_7:

        goto LABEL_8;
      }

      v20 = +[NRQueue registryDaemonQueue];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100015D60;
      v24[3] = &unk_100175598;
      v25 = v5;
      v26 = v8;
      [v20 dispatchAsync:v24];
    }

    v21 = _NRDevicePropertyCapabilities;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100015E20;
    v22[3] = &unk_100175D08;
    v23 = v5;
    [NRMutableDeviceCollection parseDiff:v3 forPropertyChange:v21 withBlock:v22];
    v12 = v23;
    goto LABEL_7;
  }

LABEL_8:
}

void sub_100015C9C(uint64_t a1)
{
  if ((*(a1 + 56) & 1) != 0 || *(a1 + 32))
  {
    v2 = nr_daemon_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

    if (v3)
    {
      v4 = nr_daemon_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "EPMigrationKeyPusher: Looks like the device registry has updated the pairing state- going to check if we need to push the key", v5, 2u);
      }
    }

    *(*(a1 + 40) + 11) = 1;
    [*(a1 + 40) update];
  }

  objc_storeStrong((*(a1 + 40) + 56), *(a1 + 48));
}

id *sub_100015D60(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v2 + 56);
  result = (v2 + 56);
  if (v5 != v3)
  {
    objc_storeStrong(result, v3);
    v6 = nr_daemon_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = nr_daemon_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "EPMigrationKeyPusher: Looks like the device registry has updated the active state- going to check if we need to push the key", v9, 2u);
      }
    }

    *(*(a1 + 32) + 11) = 1;
    return [*(a1 + 32) update];
  }

  return result;
}

void sub_100015E20(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "EPMigrationKeyPusher: Looks like the device registry has updated the capabilities- going to check if we need to push the key", buf, 2u);
    }
  }

  v5 = +[NRQueue registryDaemonQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100015F30;
  v6[3] = &unk_100175660;
  v7 = *(a1 + 32);
  [v5 dispatchAsync:v6];
}

id sub_10001616C(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "EPMigrationKeyPusher: kSBSLockStateNotifyKey received", v6, 2u);
    }
  }

  return [*(a1 + 32) update];
}

id sub_100016208(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "EPMigrationKeyPusher: kMobileKeyBagLockStatusNotifyToken received", v6, 2u);
    }
  }

  return [*(a1 + 32) update];
}

void sub_1000166A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100016794;
  v4[3] = &unk_100175D58;
  v5 = *(a1 + 48);
  [v2 tagInBluetoothWatches:v3 withCompletion:v4];
}

uint64_t sub_100016794(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void sub_100016D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 200), 8);
  _Block_object_dispose((v35 - 168), 8);
  _Block_object_dispose((v35 - 136), 8);
  _Block_object_dispose((v35 - 104), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100016D94(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100016DAC(uint64_t a1, void *a2)
{
  v3 = [a2 activeDevice];
  *(*(*(a1 + 40) + 8) + 24) = [v3 isPaired];
  v4 = [v3 pairingID];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [[NSUUID alloc] initWithUUIDString:@"119C9267-C24D-4FC3-8FE9-2D394943F2E6"];
  *(*(*(a1 + 56) + 8) + 24) = [v3 supportsCapability:v7];

  *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) shouldConfirmKeyForWatch:*(*(*(a1 + 48) + 8) + 40)];
  v8 = [v3 objectForKeyedSubscript:_NRDevicePropertyMigrationKeyRevision];
  v9 = [v8 value];

  *(*(*(a1 + 72) + 8) + 24) = [v9 integerValue] != 0;
  v10 = [v3 objectForKeyedSubscript:_NRDevicePropertyBluetoothIdentifier];
  v11 = [v10 value];
  v12 = *(*(a1 + 80) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v14 = nr_daemon_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = nr_daemon_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "EPMigrationKeyPusher: Checking if the keychain has a new key to push to the watch (once a day)", buf, 2u);
      }
    }
  }

  v17 = +[NRQueue registryDaemonQueue];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100017030;
  v23[3] = &unk_100175DD0;
  v18 = *(a1 + 32);
  v20 = *(a1 + 48);
  v19 = *(a1 + 56);
  v25 = *(a1 + 40);
  v26 = v19;
  v27 = vextq_s8(*(a1 + 64), *(a1 + 64), 8uLL);
  v31 = *(a1 + 96);
  v32 = *(a1 + 97);
  v23[4] = v18;
  v24 = v9;
  v21 = *(a1 + 88);
  v28 = *(a1 + 80);
  v29 = v20;
  v30 = v21;
  v22 = v9;
  [v17 dispatchAsync:v23];
}

void sub_100017030(uint64_t a1)
{
  v2 = [*(a1 + 32) keychainSyncStatusManager];
  v3 = [v2 enabled];

  if (*(*(*(a1 + 48) + 8) + 24) != 1 || *(*(*(a1 + 56) + 8) + 24) != 1)
  {
    goto LABEL_20;
  }

  if (*(*(*(a1 + 64) + 8) + 24) != 1)
  {
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_20:
    *(*(a1 + 32) + 11) = 0;
    v17 = *(*(a1 + 96) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = 0;

    v19 = *(a1 + 32);
    v20 = *(v19 + 40);
    *(v19 + 40) = 0;

    *(*(a1 + 32) + 10) = 0;
    v21 = *(a1 + 32);

    [v21 unregisterForNotifications];
    return;
  }

  if ((*(*(*(a1 + 72) + 8) + 24) & v3 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  v4 = [*(a1 + 32) keyChannel];

  if (!v4)
  {
    goto LABEL_20;
  }

  [*(a1 + 32) registerForNotifications];
  v5 = *(a1 + 32);
  if (*(v5 + 11) == 1)
  {
    *(v5 + 11) = 0;
    v6 = nr_daemon_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = nr_daemon_log();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_13:

        goto LABEL_14;
      }

      *buf = 0;
      v9 = "EPMigrationKeyPusher: Pushing migration key because something changed in the registry";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
      goto LABEL_13;
    }
  }

  else
  {
    if (*(a1 + 104) == 1)
    {
      if (*(a1 + 105) != 1)
      {
        goto LABEL_32;
      }

      v22 = nr_daemon_log();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

      if (!v23)
      {
        goto LABEL_14;
      }

      v8 = nr_daemon_log();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 0;
      v9 = "EPMigrationKeyPusher: Pushing migration key because there is no passcode and we've become UI Unlocked";
      goto LABEL_12;
    }

    if (*(a1 + 106) != 1)
    {
      goto LABEL_32;
    }

    v24 = nr_daemon_log();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

    if (v25)
    {
      v8 = nr_daemon_log();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 0;
      v9 = "EPMigrationKeyPusher: Pushing migration key because the phone has become unlocked";
      goto LABEL_12;
    }
  }

LABEL_14:
  v10 = nr_daemon_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = nr_daemon_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "EPMigrationKeyPusher: Trying to grab the key", buf, 2u);
    }
  }

  v5 = *(a1 + 32);
  if (!*(v5 + 40))
  {
    v13 = [v5 keymaster];
    v14 = [v13 newResourceWithDelegate:*(a1 + 32)];
    v15 = *(a1 + 32);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v5 = *(a1 + 32);
  }

LABEL_32:
  if ([*(v5 + 40) availability] != 1)
  {
    if ([*(*(a1 + 32) + 40) availability] != 2)
    {
      v41 = nr_daemon_log();
      v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);

      if (v42)
      {
        v43 = nr_daemon_log();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "EPMigrationKeyPusher: Haven't gotten the unlock assertion yet", buf, 2u);
        }
      }

      return;
    }

    v26 = *(a1 + 32);
LABEL_43:
    v38 = *(v26 + 40);
    *(v26 + 40) = 0;

    goto LABEL_44;
  }

  v26 = *(a1 + 32);
  if (!*(*(*(a1 + 80) + 8) + 40))
  {
    goto LABEL_43;
  }

  if (*(v26 + 10))
  {
    return;
  }

  *(v26 + 10) = 1;
  v27 = nr_daemon_log();
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

  if (v28)
  {
    v29 = nr_daemon_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [*(a1 + 40) intValue];
      v31 = [*(*(a1 + 32) + 40) key];
      v32 = sub_1000FDEC4(v31);
      *buf = 134218240;
      v52 = v30;
      v53 = 2048;
      v54 = v32;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "EPMigrationKeyPusher: Watch has key %lx. Keychain key version is %lx", buf, 0x16u);
    }
  }

  v33 = [*(a1 + 40) integerValue];
  v34 = [*(*(a1 + 32) + 40) key];
  v35 = sub_1000FDEC4(v34);

  if (v33 == v35)
  {
    v36 = *(a1 + 32);
    v37 = *(v36 + 40);
    *(v36 + 40) = 0;

    *(*(a1 + 32) + 10) = 0;
    [*(a1 + 32) didConfirmKeyForWatch:*(*(*(a1 + 88) + 8) + 40)];
LABEL_44:
    v39 = *(*(a1 + 96) + 8);
    v40 = *(v39 + 40);
    *(v39 + 40) = 0;

    return;
  }

  v44 = nr_daemon_log();
  v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);

  if (v45)
  {
    v46 = nr_daemon_log();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "EPMigrationKeyPusher: Version mismatch; sending the key", buf, 2u);
    }
  }

  v47 = *(a1 + 32);
  v48 = *(*(*(a1 + 80) + 8) + 40);
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100017620;
  v49[3] = &unk_100175DA8;
  v49[4] = v47;
  v50 = *(a1 + 88);
  [v47 sendMessageToWatch:v48 withCompletion:v49];
}

void sub_100017620(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  *(*(a1 + 32) + 10) = 0;
  if (a2)
  {
    [*(a1 + 32) didConfirmKeyForWatch:*(*(*(a1 + 40) + 8) + 40)];
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_100017804(id a1, CBPeripheral *a2)
{
  v2 = a2;
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(CBPeripheral *)v2 identifier];
      v7 = [v6 UUIDString];
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Tagging peripheral (%@) as Apple Watch", &v8, 0xCu);
    }
  }

  [(CBPeripheral *)v2 tag:@"IsAppleWatch"];
}

void sub_100017910(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = +[NRQueue registryDaemonQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000179E4;
  v6[3] = &unk_100175660;
  v4 = WeakRetained;
  v7 = v4;
  [v3 dispatchAfter:v6 withBlock:5.0];

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

void sub_100017B48(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) backupWithInfo:0];
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
        sub_1000FD870(v2, v6, v7, v8, v9, v10, v11, v12);
      }

LABEL_8:
    }
  }

  else
  {
    v13 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v6 = nr_daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Secure backup successfully forced", buf, 2u);
      }

      goto LABEL_8;
    }
  }

  v14 = +[NRQueue registryDaemonQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100017CA4;
  v15[3] = &unk_100175660;
  v15[4] = *(a1 + 32);
  [v14 dispatchAsync:v15];
}

void sub_100017CA4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = 0;
}

uint64_t sub_100017F78(uint64_t a1, void *a2)
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
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
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
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100018670(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _deviceCollection:a2 diffToUpdateBluetoothId:*(a1 + 40) ofDevice:*(a1 + 48)];
  if (v3)
  {
    v4 = [[EPSagaOperandDiff alloc] initWithDiff:v3];
    v5 = [*(a1 + 56) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000187D8;
    block[3] = &unk_1001758F8;
    v10 = *(a1 + 56);
    v11 = v4;
    v12 = *(a1 + 32);
    v6 = v4;
    dispatch_async(v5, block);
  }

  else
  {
    v7 = [*(a1 + 56) queue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100018864;
    v8[3] = &unk_100175660;
    v8[4] = *(a1 + 32);
    dispatch_async(v7, v8);
  }
}

void sub_1000187D8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) operands];
  [v3 setObject:v2 forKeyedSubscript:@"transactionDiff"];

  [*(a1 + 32) persist];
  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 8));
  [WeakRetained transactionDidComplete:*(a1 + 48)];
}

void sub_100018864(uint64_t a1)
{
  v8 = NSLocalizedDescriptionKey;
  v9 = @"Missing operand";
  v2 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v3 = [NSError errorWithDomain:@"com.apple.nanoregistry.saga.EPSagaTransactionUpdateNRDeviceWithNewBluetoothDevice" code:0 userInfo:v2];

  v4 = [*(a1 + 32) routingSlipEntry];
  v5 = [v4 errors];
  [v5 addObject:v3];

  v6 = [*(a1 + 32) routingSlipEntry];
  [v6 persist];

  v7 = [*(a1 + 32) delegate];
  [v7 transactionDidComplete:*(a1 + 32)];
}

void sub_100018A14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained transactionDidComplete:*(a1 + 32)];
}

void sub_100018F3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_100018F60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v4 = dispatch_time(0, 5000000000);
      v5 = [*(a1 + 40) queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001903C;
      block[3] = &unk_100175660;
      block[4] = v3;
      dispatch_after(v4, v5, block);
    }

    else
    {
      [WeakRetained transactionDidComplete];
    }
  }
}

void sub_100019160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100019184(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = nr_daemon_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = nr_daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000FD8F4(v5);
      }
    }

    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 transactionDidComplete];
  }
}

void sub_100019754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100019770(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = v5;
  if (v4)
  {
    v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v7)
    {
      v8 = nr_daemon_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000FD938(v4, v8);
      }

LABEL_8:
    }
  }

  else
  {
    v9 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v8 = nr_daemon_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "HKHealthStore forceNanoSyncWithPullRequest completed", v11, 2u);
      }

      goto LABEL_8;
    }
  }

  v10 = [*(a1 + 32) delegate];
  [v10 transactionDidComplete:*(a1 + 32)];
}

void sub_10001986C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = v5;
  if (v4)
  {
    v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v7)
    {
      v8 = nr_daemon_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000FD9B0(v4, v8);
      }

LABEL_8:
    }
  }

  else
  {
    v9 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v8 = nr_daemon_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "HKHealthStore waitForLastChanceSyncWithDevicePairingID completed", v11, 2u);
      }

      goto LABEL_8;
    }
  }

  v10 = [*(a1 + 32) delegate];
  [v10 transactionDidComplete:*(a1 + 32)];
}

void sub_1000199A8(uint64_t a1)
{
  sub_100019A00();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HKHealthStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1001B3758 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_1000FDA28();
    sub_100019A00();
  }
}

void sub_100019A00()
{
  v1[0] = 0;
  if (!qword_1001B3760)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_100019AFC;
    v1[4] = &unk_1001756A8;
    v1[5] = v1;
    v2 = off_100175ED8;
    v3 = 0;
    qword_1001B3760 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_1001B3760)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_100019AFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1001B3760 = result;
  return result;
}

void sub_100019B70(uint64_t a1)
{
  sub_100019A00();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HKNanoSyncControl");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1001B3768 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = sub_1000FDA50();
    [(EPSagaTransactionPairIDSDevice *)v2 beginTransactionWithRoutingSlipEntry:v3 serviceRegistry:v4, v5];
  }
}

void sub_10001A070(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v8 = *(a1 + 56);
  v5 = *(&v8 + 1);
  *&v6 = v3;
  *(&v6 + 1) = v4;
  v9 = v6;
  v7 = *(a1 + 72);
  IDSLocalPairingAddPairedDeviceWithInfo();
}

void sub_10001A144(uint64_t a1, void *a2)
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
        sub_1000FDA78(a1);
      }
    }

    v8 = [*(a1 + 40) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001A3DC;
    block[3] = &unk_1001756F8;
    v9 = &v27;
    v27 = *(a1 + 40);
    v10 = v28;
    v11 = v3;
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v28[0] = v11;
    v28[1] = v12;
    v14 = &v29;
    v29 = v13;
    dispatch_async(v8, block);
  }

  else
  {
    v15 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = nr_daemon_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 32);
        *buf = 138412290;
        v31 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "IDSLocalPairingAddPairedDeviceWithInfo %@ completed, calling IDSLocalPairingConnectPairedDevice", buf, 0xCu);
      }
    }

    v18 = *(*(a1 + 48) + 32);
    v9 = &v24;
    v10 = &v24 + 1;
    v14 = &v25 + 1;
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v23 = *(a1 + 48);
    v21 = *(&v23 + 1);
    *&v22 = v19;
    *(&v22 + 1) = v20;
    v24 = v22;
    v25 = v23;
    v8 = [*(a1 + 40) queue];
    IDSLocalPairingConnectPairedDevice();
  }
}

id sub_10001A3DC(uint64_t a1)
{
  v2 = [*(a1 + 32) errors];
  v7 = NSLocalizedDescriptionKey;
  v3 = [*(a1 + 40) description];
  v8 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v5 = [NSError errorWithDomain:@"com.apple.nanoregistry.saga.EPSagaTransactionPairIDSDevice" code:0 userInfo:v4];
  [v2 addObject:v5];

  [*(a1 + 32) persist];
  return [*(a1 + 48) beginRollbackWithRoutingSlipEntry:*(a1 + 32) serviceRegistry:*(a1 + 56)];
}

void sub_10001A4EC(uint64_t a1, void *a2)
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
        sub_1000FDAE4(a1);
      }
    }

    v8 = [*(a1 + 40) errors];
    v17 = NSLocalizedDescriptionKey;
    v9 = [v3 description];
    v18 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v11 = [NSError errorWithDomain:@"com.apple.nanoregistry.saga.EPSagaTransactionPairIDSDevice" code:1 userInfo:v10];
    [v8 addObject:v11];

    [*(a1 + 40) persist];
    [*(a1 + 48) beginRollbackWithRoutingSlipEntry:*(a1 + 40) serviceRegistry:*(a1 + 56)];
  }

  else
  {
    v12 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v13 = nr_daemon_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = 138412290;
        v16 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "IDSLocalPairingConnectPairedDevice %@ completed", &v15, 0xCu);
      }
    }

    *(*(a1 + 48) + 10) = 1;
    [*(a1 + 48) checkIfIDSIsPaired];
  }
}

void sub_10001A6DC(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling IDSLocalPairingStopForDevice %@", buf, 0xCu);
    }
  }

  v6 = *(*(a1 + 40) + 32);
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = *(a1 + 64);
  v7 = *(a1 + 56);
  IDSLocalPairingStopForDevice();
}

void sub_10001A844(void *a1, void *a2)
{
  v3 = a2;
  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      v8 = a1[5] != 0;
      v9 = 138412802;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      v13 = 1024;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "IDSLocalPairingStopForDevice %@ completed with error %@, calling IDSLocalPairingAddPairedDeviceWithInfo (localPairingAddPairedDeviceWithInfoBlock) with key = %{BOOL}d", &v9, 0x1Cu);
    }
  }

  (*(a1[6] + 16))();
}

uint64_t sub_10001A950(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32) != 0;
      v7[0] = 67109120;
      v7[1] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling localPairingAddPairedDeviceWithInfoBlock with key = %{BOOL}d", v7, 8u);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_10001AF6C(id *a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a1[4] UUIDString];
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling IDSLocalPairingUnpairStartForDevice %@", buf, 0xCu);
    }
  }

  v7 = a1[4];
  objc_copyWeak(&v10, a1 + 7);
  v8 = a1[5];
  v9 = a1[6];
  v6 = a1[6];
  IDSLocalPairingUnpairStartForDevice();

  objc_destroyWeak(&v10);
}

void sub_10001B110(id *a1, void *a2)
{
  v3 = a2;
  v4 = nr_daemon_log();
  v5 = v4;
  if (v3)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000FDBE0(a1);
    }
  }

  else
  {
    v8 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (!v8)
    {
      goto LABEL_9;
    }

    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [a1[4] UUIDString];
      *buf = 138412290;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "IDSLocalPairingUnpairStartForDevice %@ completed", buf, 0xCu);
    }
  }

LABEL_9:
  v10 = nr_daemon_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = nr_daemon_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [a1[4] UUIDString];
      *buf = 138412290;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Calling IDSLocalPairingStopForDevice %@", buf, 0xCu);
    }
  }

  v15 = a1[4];
  objc_copyWeak(&v18, a1 + 7);
  v16 = a1[5];
  v17 = a1[6];
  v14 = a1[6];
  IDSLocalPairingDeletePairedDevice();

  objc_destroyWeak(&v18);
}

void sub_10001B390(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nr_daemon_log();
  v5 = v4;
  if (v3)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000FDC80(a1);
    }
  }

  else
  {
    v8 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (!v8)
    {
      goto LABEL_9;
    }

    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) UUIDString];
      *buf = 138412290;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "IDSLocalPairingDeletePairedDevice %@ completed", buf, 0xCu);
    }
  }

LABEL_9:
  v10 = nr_daemon_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = nr_daemon_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 32) UUIDString];
      *buf = 138412290;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Calling IDSLocalPairingStopForDevice %@", buf, 0xCu);
    }
  }

  v15 = *(a1 + 32);
  objc_copyWeak(&v17, (a1 + 56));
  v16 = *(a1 + 40);
  v14 = *(a1 + 48);
  IDSLocalPairingStopForDevice();

  objc_destroyWeak(&v17);
}

void sub_10001B5FC(id *a1, void *a2)
{
  v3 = a2;
  v4 = nr_daemon_log();
  v5 = v4;
  if (v3)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000FDD20(a1);
    }
  }

  else
  {
    v8 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (!v8)
    {
      goto LABEL_9;
    }

    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [a1[4] UUIDString];
      *buf = 138412290;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "IDSLocalPairingStopForDevice %@ completed", buf, 0xCu);
    }
  }

LABEL_9:
  v10 = nr_daemon_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = nr_daemon_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [a1[4] UUIDString];
      *buf = 138412290;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Calling IDSLocalPairingUnpairForDevice %@", buf, 0xCu);
    }
  }

  v15 = a1[4];
  objc_copyWeak(&v16, a1 + 6);
  v14 = [a1[5] queue];
  IDSLocalPairingUnpairForDevice();

  objc_destroyWeak(&v16);
}

void sub_10001B868(uint64_t a1, void *a2)
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
        sub_1000FDDC0(a1);
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
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "IDSLocalPairingUnpairForDevice %@ completed", &v12, 0xCu);
      }

      goto LABEL_8;
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = [WeakRetained delegate];
  [v11 transactionDidComplete:WeakRetained];
}

void sub_10001BAA0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_10001BD28(id a1)
{
  v1 = objc_alloc_init(NRVolatilePreferences);
  v2 = qword_1001B3770;
  qword_1001B3770 = v1;

  v3 = qword_1001B3770;

  [v3 setDomain:@"com.apple.NanoRegistry.NRLaunchNotificationController.volatile"];
}

uint64_t sub_10001C2D8(uint64_t a1, void *a2)
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
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 16) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_10001C9DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001CA68;
  v8[3] = &unk_100175660;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  return [v5 enableDaemons:a2 serviceRegistry:v6 completion:v8];
}

void sub_10001CA68(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

void sub_10001CABC(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

id sub_10001CCF4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001CD80;
  v8[3] = &unk_100175660;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  return [v5 enableDaemons:a2 serviceRegistry:v6 completion:v8];
}

void sub_10001CD80(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

void sub_10001CDD4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

void sub_10001CF3C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32))
  {
    [v5 objectForKeyedSubscript:?];
  }

  else
  {
    [v5 activeDevice];
  }
  v7 = ;
  v8 = [v7 objectForKeyedSubscript:NRDevicePropertyIsAltAccount];
  v9 = [v8 value];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    while (2)
    {
      v14 = 0;
      do
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [v10 objectForKeyedSubscript:*(*(&v26 + 1) + 8 * v14)];
        if ([v15 isPaired] && (objc_msgSend(v15, "isArchived") & 1) == 0)
        {

          v16 = 1;
          goto LABEL_15;
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_15:

  v17 = [*(a1 + 40) queue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10001D188;
  v20[3] = &unk_1001760D0;
  v24 = v16;
  v25 = *(a1 + 56);
  v21 = v7;
  v22 = v9;
  v23 = *(a1 + 48);
  v18 = v9;
  v19 = v7;
  dispatch_async(v17, v20);
}

uint64_t sub_10001D188(uint64_t a1)
{
  v2 = *(a1 + 57);
  if (*(a1 + 56) == 1)
  {
    if ((*(a1 + 57) & 1) == 0)
    {
      v3 = 0;
      goto LABEL_12;
    }
  }

  else if ((*(a1 + 57) & 1) == 0)
  {
    v4 = nr_daemon_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = nr_daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315138;
        v12 = "+[EPSagaTransactionSetDaemonsEnabled getNormalDaemonValueWith:serviceRegistry:forceEnableWhenPairedOrActive:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Setting daemons to NRDaemonEnableNone", &v11, 0xCu);
      }

      goto LABEL_23;
    }

    return (*(*(a1 + 48) + 16))();
  }

  if ([*(a1 + 32) isPaired])
  {
    v3 = 1;
  }

  else
  {
    v3 = [*(a1 + 32) isActive];
  }

LABEL_12:
  if ([*(a1 + 32) isPaired])
  {
    v3 |= [*(a1 + 32) isActive];
  }

  v7 = [*(a1 + 40) BOOLValue];
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v7 || (v3 & 1) == 0)
  {
    if (v9)
    {
      v6 = nr_daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315138;
        v12 = "+[EPSagaTransactionSetDaemonsEnabled getNormalDaemonValueWith:serviceRegistry:forceEnableWhenPairedOrActive:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Setting daemons to NRDaemonEnableAltAccountDaemons", &v11, 0xCu);
      }

      goto LABEL_23;
    }
  }

  else if (v9)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "+[EPSagaTransactionSetDaemonsEnabled getNormalDaemonValueWith:serviceRegistry:forceEnableWhenPairedOrActive:completion:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Setting daemons to NRDaemonEnableNanoLaunchAndAltAccountDaemons", &v11, 0xCu);
    }

LABEL_23:
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_10001DA6C(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1[4];
  v7 = a3;
  v8 = [v5 objectForKeyedSubscript:v6];
  v9 = +[NRFeatureFlags sharedInstance];
  v45 = v8;
  if ([v9 networkRelayPairing])
  {
    v10 = [[NSUUID alloc] initWithUUIDString:@"8240CA17-6F5D-4C8F-85C4-F4A705A0C20F"];
    v44 = [v8 supportsCapability:v10];
  }

  else
  {
    v44 = 0;
  }

  v11 = [v5 objectForKeyedSubscript:a1[4]];
  v12 = [v11 objectForKeyedSubscript:_NRDevicePropertyBluetoothIdentifier];
  v13 = [v12 value];

  v14 = [v5 objectForKeyedSubscript:a1[4]];
  v15 = [v14 objectForKeyedSubscript:_NRDevicePropertyMigrationIDSCloudIdentifier];
  v16 = [v15 value];

  v46 = v16;
  v17 = [v7 securePropertyForID:v16];

  v18 = [v5 activeDeviceID];
  v19 = [v5 objectForKeyedSubscript:a1[4]];
  v20 = [v19 objectForKeyedSubscript:NRDevicePropertyIsAltAccount];
  v21 = [v20 value];

  v22 = [v5 objectForKeyedSubscript:a1[4]];
  v23 = [v22 objectForKeyedSubscript:NRDevicePropertyIsStagedForTransfer];
  v24 = [v23 value];

  v25 = [v5 objectForKeyedSubscript:a1[4]];
  v26 = [v25 objectForKeyedSubscript:NRDevicePropertyTransferType];
  v27 = [v26 value];

  if (v21 && [v21 BOOLValue])
  {
    v28 = [v5 objectForKeyedSubscript:a1[4]];
    v29 = [v28 objectForKeyedSubscript:_NRDevicePropertyAltAccountIdentifier];
    [v29 value];
    v30 = v43 = v13;

    v31 = [a1[5] registry];
    v32 = [v31 secureProperties];
    v33 = [v32 objectForKeyedSubscript:v30];
    v34 = v17;
    v17 = v33;

    v13 = v43;
  }

  v35 = [a1[6] queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001DE84;
  block[3] = &unk_100176120;
  v48 = a1[4];
  v49 = v21;
  v50 = v17;
  v51 = v13;
  v58 = v44;
  v52 = v45;
  v53 = v18;
  v54 = a1[5];
  v55 = v24;
  v56 = v27;
  v57 = a1[7];
  v36 = v27;
  v37 = v24;
  v38 = v18;
  v39 = v45;
  v40 = v13;
  v41 = v17;
  v42 = v21;
  dispatch_async(v35, block);
}

void sub_10001DE84(void *a1)
{
  v155 = +[NSMutableArray array];
  v2 = [EPRoutingSlipEntry alloc];
  v3 = objc_opt_class();
  v196[0] = @"switchToNRDeviceUUID";
  v4 = [[EPSagaOperandUUID alloc] initWithUUID:a1[4]];
  v197[0] = v4;
  v196[1] = @"shouldWaitForConnectivity";
  v5 = [[EPSagaOperandNumber alloc] initWithNumber:&__kCFBooleanTrue];
  v197[1] = v5;
  v196[2] = @"destinationIsAltAccount";
  v6 = [EPSagaOperandNumber alloc];
  if (a1[5])
  {
    v7 = a1[5];
  }

  else
  {
    v7 = &__kCFBooleanFalse;
  }

  v8 = [(EPSagaOperandNumber *)v6 initWithNumber:v7];
  v197[2] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v197 forKeys:v196 count:3];
  v10 = [(EPRoutingSlipEntry *)v2 initWithName:@"assertion" transactionClass:v3 operands:v9];

  [v155 addObject:v10];
  v11 = [EPRoutingSlipEntry alloc];
  v12 = objc_opt_class();
  v194[0] = @"idsDeviceIdentifier";
  v13 = [[EPSagaOperandString alloc] initWithString:a1[6]];
  v195[0] = v13;
  v194[1] = @"destinationIsAltAccount";
  v14 = [[EPSagaOperandNumber alloc] initWithNumber:a1[5]];
  v195[1] = v14;
  v194[2] = @"discoverableCoreBluetoothID";
  v156 = a1;
  v15 = [[EPSagaOperandUUID alloc] initWithUUID:a1[7]];
  v195[2] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v195 forKeys:v194 count:3];
  v17 = [(EPRoutingSlipEntry *)v11 initWithName:@"startAdvertising" transactionClass:v12 operands:v16];

  [v155 addObject:v17];
  if (CFPreferencesGetAppBooleanValue(@"AlwaysFailMigration", @"com.apple.nanoregistryd", 0))
  {
    v18 = sub_1000034AC();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (v19)
    {
      v20 = sub_1000034AC();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Always Fail migration set", buf, 2u);
      }
    }

    v21 = [[EPRoutingSlipEntry alloc] initWithName:@"FakeError" transactionClass:objc_opt_class() operands:&__NSDictionary0__struct];

    v22 = v155;
    [v155 addObject:v21];
    v17 = v21;
  }

  else
  {
    v22 = v155;
  }

  v192[0] = @"iAmACompanionDevice";
  v23 = [[EPSagaOperandNumber alloc] initWithNumber:&__kCFBooleanTrue];
  v193[0] = v23;
  v192[1] = @"discoverableCoreBluetoothID";
  v24 = [[EPSagaOperandUUID alloc] initWithUUID:v156[7]];
  v193[1] = v24;
  v192[2] = @"useNetworkRelayPairing";
  v25 = [EPSagaOperandNumber alloc];
  v26 = [NSNumber numberWithBool:*(v156 + 112)];
  v27 = [(EPSagaOperandNumber *)v25 initWithNumber:v26];
  v193[2] = v27;
  v192[3] = @"destinationIsAltAccount";
  v28 = [[EPSagaOperandNumber alloc] initWithNumber:v156[5]];
  v193[3] = v28;
  v29 = [NSDictionary dictionaryWithObjects:v193 forKeys:v192 count:4];
  v30 = [NSMutableDictionary dictionaryWithDictionary:v29];

  v31 = v30;
  if (*(v156 + 112) == 1)
  {
    v32 = [EPSagaOperandUUID alloc];
    v33 = [v156[8] objectForKeyedSubscript:_NRDevicePropertyNetworkRelayIdentifier];
    v34 = [v33 value];
    v35 = [(EPSagaOperandUUID *)v32 initWithUUID:v34];
    [v31 setObject:v35 forKeyedSubscript:@"networkRelayID"];
  }

  v152 = v31;
  v36 = [[EPRoutingSlipEntry alloc] initWithName:@"pairBluetooth" transactionClass:objc_opt_class() operands:v31];

  [v22 addObject:v36];
  v37 = [EPRoutingSlipEntry alloc];
  v38 = objc_opt_class();
  v190[0] = @"setDaemonsEnabled";
  v39 = [[EPSagaOperandNumber alloc] initWithNumber:&off_100186B98];
  v191[0] = v39;
  v190[1] = @"setDaemonsEnabledRollbackNormalizeDeviceID";
  v40 = [[EPSagaOperandUUID alloc] initWithUUID:v156[9]];
  v191[1] = v40;
  v41 = [NSDictionary dictionaryWithObjects:v191 forKeys:v190 count:2];
  v42 = [(EPRoutingSlipEntry *)v37 initWithName:@"disableDaemons" transactionClass:v38 operands:v41];

  [v22 addObject:v42];
  v43 = [EPRoutingSlipEntry alloc];
  v44 = objc_opt_class();
  v188 = @"nrDeviceIdentifier";
  v45 = [[EPSagaOperandUUID alloc] initWithUUID:v156[4]];
  v189 = v45;
  v46 = [NSDictionary dictionaryWithObjects:&v189 forKeys:&v188 count:1];
  v47 = [(EPRoutingSlipEntry *)v43 initWithName:@"quarantine" transactionClass:v44 operands:v46];

  [v22 addObject:v47];
  v48 = [EPRoutingSlipEntry alloc];
  v49 = objc_opt_class();
  v186[0] = @"coreBluetoothID";
  v50 = [[EPSagaOperandDynamic alloc] initWithEntryName:@"pairBluetooth" operandName:?];
  v186[1] = @"nrDeviceIdentifier";
  v187[0] = v50;
  v51 = [[EPSagaOperandUUID alloc] initWithUUID:v156[4]];
  v187[1] = v51;
  v52 = [NSDictionary dictionaryWithObjects:v187 forKeys:v186 count:2];
  v53 = [(EPRoutingSlipEntry *)v48 initWithName:@"createUpdateDiff" transactionClass:v49 operands:v52];

  [v22 addObject:v53];
  v54 = [EPRoutingSlipEntry alloc];
  v55 = objc_opt_class();
  v184 = @"transactionDiff";
  v56 = [[EPSagaOperandDynamic alloc] initWithEntryName:@"createUpdateDiff" operandName:@"transactionDiff"];
  v185 = v56;
  v57 = [NSDictionary dictionaryWithObjects:&v185 forKeys:&v184 count:1];
  v58 = [(EPRoutingSlipEntry *)v54 initWithName:@"updateDevice" transactionClass:v55 operands:v57];

  [v22 addObject:v58];
  if (*(v156 + 112) == 1)
  {
    v59 = [EPRoutingSlipEntry alloc];
    v60 = objc_opt_class();
    v182[0] = @"networkRelayID";
    v61 = [[EPSagaOperandDynamic alloc] initWithEntryName:@"pairBluetooth" operandName:@"newlyPairedNetworkRelayID"];
    v182[1] = @"nrDeviceIdentifier";
    v183[0] = v61;
    v62 = v156;
    v63 = [[EPSagaOperandUUID alloc] initWithUUID:v156[4]];
    v183[1] = v63;
    [NSDictionary dictionaryWithObjects:v183 forKeys:v182 count:2];
    v65 = v64 = v22;
    v66 = [(EPRoutingSlipEntry *)v59 initWithName:@"createUpdateNetworkRelayDiff" transactionClass:v60 operands:v65];

    [v22 addObject:v66];
    v67 = [EPRoutingSlipEntry alloc];
    v68 = objc_opt_class();
    v180 = @"transactionDiff";
    v69 = [[EPSagaOperandDynamic alloc] initWithEntryName:@"createUpdateNetworkRelayDiff" operandName:@"transactionDiff"];
    v181 = v69;
    v70 = [NSDictionary dictionaryWithObjects:&v181 forKeys:&v180 count:1];
    v71 = [(EPRoutingSlipEntry *)v67 initWithName:@"updateDeviceNetworkRelay" transactionClass:v68 operands:v70];

    v151 = v71;
    [v64 addObject:v71];
  }

  else
  {
    v62 = v156;
    v151 = v58;
  }

  v150 = [EPRoutingSlipEntry alloc];
  v72 = objc_opt_class();
  v178[0] = @"coreBluetoothID";
  v73 = [[EPSagaOperandDynamic alloc] initWithEntryName:@"pairBluetooth" operandName:@"newlyPairedCoreBluetoothID"];
  v179[0] = v73;
  v178[1] = @"destinationIsAltAccount";
  v74 = [[EPSagaOperandNumber alloc] initWithNumber:v62[5]];
  v179[1] = v74;
  v178[2] = @"supportsDirectIPSecPairing";
  v75 = [EPSagaOperandNumber alloc];
  v76 = v62[8];
  v77 = [[NSUUID alloc] initWithUUIDString:@"6B4C8BB6-D411-406E-BD9B-9CA0F2296C96"];
  v78 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v76 supportsCapability:v77]);
  v79 = [(EPSagaOperandNumber *)v75 initWithNumber:v78];
  v179[2] = v79;
  v178[3] = @"useNetworkRelayPairing";
  v80 = [EPSagaOperandNumber alloc];
  v81 = [NSNumber numberWithBool:*(v62 + 112)];
  v82 = [(EPSagaOperandNumber *)v80 initWithNumber:v81];
  v179[3] = v82;
  v83 = [NSDictionary dictionaryWithObjects:v179 forKeys:v178 count:4];
  v84 = [(EPRoutingSlipEntry *)v150 initWithName:@"pairIDS" transactionClass:v72 operands:v83];

  [v155 addObject:v84];
  v85 = [EPRoutingSlipEntry alloc];
  v86 = objc_opt_class();
  v176[0] = @"notificationName";
  v87 = [[EPSagaOperandString alloc] initWithString:@"EPSagaTransactionMigrationCompletionRequestNotification"];
  v177[0] = v87;
  v176[1] = @"isDarwinNotification";
  v88 = [[EPSagaOperandNumber alloc] initWithNumber:&__kCFBooleanFalse];
  v177[1] = v88;
  v176[2] = @"notificationTimeoutSeconds";
  v89 = [[EPSagaOperandNumber alloc] initWithNumber:&off_100186BB0];
  v177[2] = v89;
  v90 = [NSDictionary dictionaryWithObjects:v177 forKeys:v176 count:3];
  v91 = [(EPRoutingSlipEntry *)v85 initWithName:@"wait4Watch2Pair" transactionClass:v86 operands:v90];

  [v155 addObject:v91];
  v92 = [v156[10] _deviceCollectionDiffWithPairingID:v156[4]];
  v93 = [EPRoutingSlipEntry alloc];
  v94 = objc_opt_class();
  v174 = @"transactionDiff";
  v154 = v92;
  v95 = [[EPSagaOperandDiff alloc] initWithDiff:v92];
  v175 = v95;
  v96 = [NSDictionary dictionaryWithObjects:&v175 forKeys:&v174 count:1];
  v97 = [(EPRoutingSlipEntry *)v93 initWithName:@"pair" transactionClass:v94 operands:v96];

  [v155 addObject:v97];
  v98 = +[NRFeatureFlags sharedInstance];
  LODWORD(v94) = [v98 watchTransfer];

  if (v94)
  {
    v99 = [EPRoutingSlipEntry alloc];
    v100 = objc_opt_class();
    v172 = @"nrDeviceIdentifier";
    v101 = [[EPSagaOperandUUID alloc] initWithUUID:v156[4]];
    v173 = v101;
    v102 = [NSDictionary dictionaryWithObjects:&v173 forKeys:&v172 count:1];
    v103 = [(EPRoutingSlipEntry *)v99 initWithName:@"unstageWatch" transactionClass:v100 operands:v102];

    [v155 addObject:v103];
    v97 = v103;
  }

  v104 = [EPRoutingSlipEntry alloc];
  v105 = objc_opt_class();
  v170 = @"nrDeviceIdentifier";
  v106 = [[EPSagaOperandUUID alloc] initWithUUID:v156[4]];
  v171 = v106;
  v107 = [NSDictionary dictionaryWithObjects:&v171 forKeys:&v170 count:1];
  v108 = [(EPRoutingSlipEntry *)v104 initWithName:@"delete" transactionClass:v105 operands:v107];

  [v155 addObject:v108];
  if (CFPreferencesGetAppBooleanValue(@"SleepAfterIDS", @"com.apple.nanoregistryd", 0))
  {
    v109 = sub_1000034AC();
    v110 = os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT);

    if (v110)
    {
      v111 = sub_1000034AC();
      if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "Waiting 5 minutes to allow for metric testing", buf, 2u);
      }
    }

    v112 = [[EPRoutingSlipEntry alloc] initWithName:@"SleepAfterIDS" transactionClass:objc_opt_class() operands:&__NSDictionary0__struct];

    [v155 addObject:v112];
    v153 = v112;
  }

  else
  {
    v153 = v108;
  }

  v113 = [EPRoutingSlipEntry alloc];
  v114 = objc_opt_class();
  v168[0] = @"setDaemonsEnabledNormalizeDeviceID";
  v115 = [[EPSagaOperandUUID alloc] initWithUUID:v156[4]];
  v169[0] = v115;
  v168[1] = @"setDaemonsEnabledRollback";
  v116 = [[EPSagaOperandNumber alloc] initWithNumber:&off_100186B98];
  v169[1] = v116;
  v168[2] = @"forceEnableIfPairedOrActive";
  v117 = [[EPSagaOperandNumber alloc] initWithNumber:&__kCFBooleanTrue];
  v169[2] = v117;
  v118 = [NSDictionary dictionaryWithObjects:v169 forKeys:v168 count:3];
  v119 = [(EPRoutingSlipEntry *)v113 initWithName:@"enableDaemons" transactionClass:v114 operands:v118];

  [v155 addObject:v119];
  v120 = [EPRoutingSlipEntry alloc];
  v121 = objc_opt_class();
  v166 = @"timeoutDuration";
  v122 = [[EPSagaOperandNumber alloc] initWithNumber:&off_100187828];
  v167 = v122;
  v123 = [NSDictionary dictionaryWithObjects:&v167 forKeys:&v166 count:1];
  v124 = [(EPRoutingSlipEntry *)v120 initWithName:@"wallClockWaitForDaemonsToEnable" transactionClass:v121 operands:v123];

  [v155 addObject:v124];
  if ([v156[5] BOOLValue])
  {
    v125 = &NRPairedDeviceRegistryPairedDeviceDidChangeCapabilitiesDarwinNotification_ptr;
  }

  else
  {
    v126 = [EPRoutingSlipEntry alloc];
    v127 = objc_opt_class();
    v164 = @"nrDeviceIdentifier";
    v128 = [[EPSagaOperandUUID alloc] initWithUUID:v156[4]];
    v165 = v128;
    v125 = &NRPairedDeviceRegistryPairedDeviceDidChangeCapabilitiesDarwinNotification_ptr;
    v129 = [NSDictionary dictionaryWithObjects:&v165 forKeys:&v164 count:1];
    v130 = [(EPRoutingSlipEntry *)v126 initWithName:@"pairedsync" transactionClass:v127 operands:v129];

    [v155 addObject:v130];
    v124 = v130;
  }

  if ([v156[11] BOOLValue])
  {
    p_info = &OBJC_METACLASS___NRPBRTCMigrationMetricSessionID.info;
    if ([v156[12] integerValue] == 2)
    {
      v132 = [EPRoutingSlipEntry alloc];
      v133 = objc_opt_class();
      v162 = @"coreBluetoothID";
      v134 = [[EPSagaOperandDynamic alloc] initWithEntryName:@"pairBluetooth" operandName:@"newlyPairedCoreBluetoothID"];
      v163 = v134;
      v135 = [v125[127] dictionaryWithObjects:&v163 forKeys:&v162 count:1];
      v136 = [(EPRoutingSlipEntry *)v132 initWithName:@"addTellWatchToGraduateTransaction" transactionClass:v133 operands:v135];

      [v155 addObject:v136];
      v124 = v136;
      p_info = &OBJC_METACLASS___NRPBRTCMigrationMetricSessionID.info;
    }
  }

  else
  {
    p_info = &OBJC_METACLASS___NRPBRTCMigrationMetricSessionID.info;
  }

  if ([v156[5] BOOLValue])
  {
    v137 = [EPRoutingSlipEntry alloc];
    v138 = objc_opt_class();
    v160[0] = @"nrDeviceIdentifier";
    v139 = [[EPSagaOperandUUID alloc] initWithUUID:v156[4]];
    v160[1] = v149;
    v161[0] = v139;
    v140 = [[EPSagaOperandString alloc] initWithString:v156[6]];
    v161[1] = v140;
    v141 = [v125[127] dictionaryWithObjects:v161 forKeys:v160 count:2];
    v142 = [(EPRoutingSlipEntry *)v137 initWithName:@"healthSharingSetup" transactionClass:v138 operands:v141];

    v125 = &NRPairedDeviceRegistryPairedDeviceDidChangeCapabilitiesDarwinNotification_ptr;
    v143 = v155;
    [v155 addObject:v142];
    v124 = v142;
    p_info = (&OBJC_METACLASS___NRPBRTCMigrationMetricSessionID + 32);
  }

  else
  {
    v143 = v155;
  }

  v144 = objc_alloc((p_info + 401));
  v145 = objc_opt_class();
  v158 = @"nrDeviceIdentifier";
  v146 = [[EPSagaOperandUUID alloc] initWithUUID:v156[4]];
  v159 = v146;
  v147 = [v125[127] dictionaryWithObjects:&v159 forKeys:&v158 count:1];
  v148 = [v144 initWithName:@"tellIDSLocalPairingSetupCompleted" transactionClass:v145 operands:v147];

  [v143 addObject:v148];
  (*(v156[13] + 16))();
}

uint64_t sub_10001F5D8(uint64_t a1, void *a2)
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

uint64_t sub_10001FAF4(uint64_t a1, void *a2)
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
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
        v13 = objc_alloc_init(NRPBTermsEvent);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !NRPBTermsEventReadFrom())
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1000200DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002011C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyClients];
}

void sub_10002015C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyClients];
}

uint64_t sub_10002019C(void *a1)
{
  if (a1)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2020000000;
    v7 = 0;
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100020264;
    v3[3] = &unk_1001758D0;
    v3[4] = a1;
    v3[5] = &v4;
    [a1 performUnderCollectionLock:v3];
    v1 = *(v5 + 24);
    _Block_object_dispose(&v4, 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_10002024C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100020298(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100020360;
  v3[3] = &unk_1001758D0;
  v3[4] = a1;
  v3[5] = &v4;
  [a1 performUnderCollectionLock:v3];
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_100020348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002048C(uint64_t a1)
{
  [*(*(a1 + 32) + 24) invalidate];
  v2 = *(a1 + 32);
  v3 = [objc_msgSend(objc_opt_class() "proxyClass")];
  v4 = nr_framework_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_framework_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Stopped listening to %@", buf, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000205DC;
  v8[3] = &unk_100175660;
  v8[4] = v7;
  [v7 enqueueAsync:v8];
}

uint64_t sub_1000205DC(uint64_t a1)
{
  result = *(*(a1 + 32) + 12);
  if (result != -1)
  {
    result = notify_cancel(result);
    *(*(a1 + 32) + 12) = -1;
  }

  return result;
}

void sub_1000206B8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a3;
  v10 = [a2 deviceCollection];
  v7 = [v10 copyWithZone:0];
  v8 = [v6 copyWithZone:0];

  v9 = sub_100020298(*(a1 + 32));
  (*(v5 + 16))(v5, v7, v8, v9, 0);
}

void sub_1000209B4(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = sub_100020298(*(a1 + 32));
  v7 = *(a1 + 48);
  v8 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v9 = (v7 & 0x4000000000000000) == 0 && (v6 & 0x4000000000000000) != 0;
  v10 = [v16 nextIndex];
  if (v10 <= v8)
  {
    if (v10 == v8 && (*(a1 + 56) & v9 & 1) != 0)
    {
      v13 = [*(a1 + 32) _dumpSecureProperties:v5 propertyIDList:0];
    }

    else
    {
      v13 = 0;
    }

    v12 = 0;
  }

  else
  {
    if (v10 == (v8 + 1))
    {
      v11 = [v16 objectAtIndexedSubscript:v8];
      v12 = [v11 diff];
    }

    else
    {
      if (v8)
      {
        v11 = [v16 objectAtIndexedSubscript:v8 - 1];
      }

      else
      {
        v11 = 0;
      }

      v14 = [v11 state];
      v15 = [v16 deviceCollection];
      v12 = [NRMutableDeviceCollection diffFrom:v14 to:v15];
    }

    if (*(a1 + 56) == 1)
    {
      if (v9)
      {
        [*(a1 + 32) _dumpSecureProperties:v5 propertyIDList:0];
      }

      else
      {
        [objc_opt_class() getReferencedSecureProperties:v5 fromDiff:v12];
      }
      v13 = ;
    }

    else
    {
      v13 = 0;
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100020C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  if (a3)
  {
    v6 = [*(a1 + 32) _dumpSecureProperties:a3 propertyIDList:*(a1 + 40)];
    (*(v3 + 16))(v3, v6);
  }

  else
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 48);

    v4(v5, 0);
  }
}

void sub_100020DA4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 copyWithZone:0];
  (*(v2 + 16))(v2, v3);
}

void sub_100020E98(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) managementQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100020F48;
  v4[3] = &unk_100175FA0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_sync(v2, v4);
}

void sub_100020F48(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v3 = *(*(a1 + 32) + 24);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100021014;
  v5[3] = &unk_100176288;
  v6 = v2;
  v4 = v2;
  [v3 enumerateClientProxies:v5];
  (*(*(a1 + 40) + 16))();
}

void sub_100021014(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = objc_opt_new();
  v4 = [v3 appPath];

  [v5 setProcessName:v4];
  [*(a1 + 32) addObject:v5];
}

uint64_t sub_100021184(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) count])
  {
    if (!v6)
    {
      v8 = [v5 applyDiff:*(a1 + 40)];
      v9 = *(a1 + 48);
      v13 = NSLocalizedDescriptionKey;
      v14 = @"secure data unavailable";
      v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      v11 = [NSError errorWithDomain:@"com.apple.nanoregistry.registry" code:1 userInfo:v10];
      (*(v9 + 16))(v9, v11);

      goto LABEL_6;
    }

    [v6 forceImportSecureProperties:*(a1 + 32)];
  }

  v7 = [v5 applyDiff:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
LABEL_6:

  return 0;
}

void sub_100021380(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v6 = 0;
  v4 = [a2 deviceIDAtSwitchIndex:v3 date:&v6];
  v5 = v6;
  (*(*(a1 + 32) + 16))();
}

id sub_1000214BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:*(a1 + 32)];
  v8 = [v7 objectForKeyedSubscript:NRDevicePropertyIsArchived];
  v9 = [v8 value];

  LODWORD(v8) = [v9 BOOLValue];
  if (v8)
  {
    v10 = nr_daemon_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = nr_daemon_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 48);
        v14 = [*(a1 + 32) UUIDString];
        *buf = 67109378;
        v73 = v13;
        v74 = 2114;
        v75 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "xpcSetMigrationConsented: Setting migration consent to %{BOOL}d for device ID %{public}@", buf, 0x12u);
      }
    }

    if (*(a1 + 32))
    {
      v71 = *(a1 + 32);
      v15 = [NSArray arrayWithObjects:&v71 count:1];
    }

    else
    {
      v15 = +[NSMutableArray array];
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v17 = v5;
      v18 = [v17 countByEnumeratingWithState:&v63 objects:v70 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v64;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v64 != v20)
            {
              objc_enumerationMutation(v17);
            }

            [v15 addObject:*(*(&v63 + 1) + 8 * i)];
          }

          v19 = [v17 countByEnumeratingWithState:&v63 objects:v70 count:16];
        }

        while (v19);
      }
    }

    v50 = v6;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = v15;
    v58 = [obj countByEnumeratingWithState:&v59 objects:v69 count:16];
    if (v58)
    {
      v56 = 0;
      v22 = *v60;
      v57 = NRDevicePropertyMigrationConsent;
      v51 = NRDevicePropertyMigrationConsentDate;
      v52 = *v60;
      v53 = v5;
      v54 = a1;
      do
      {
        for (j = 0; j != v58; j = j + 1)
        {
          if (*v60 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v59 + 1) + 8 * j);
          v25 = nr_daemon_log();
          v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

          if (v26)
          {
            v27 = nr_daemon_log();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v28 = *(a1 + 48);
              v29 = [v24 UUIDString];
              *buf = 67109378;
              v73 = v28;
              v74 = 2114;
              v75 = v29;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "setMigrationConsent: Setting migration consent to %{BOOL}d for device ID %{public}@", buf, 0x12u);
            }
          }

          v30 = [v5 objectForKeyedSubscript:v24];
          v31 = v30;
          if (v30)
          {
            v32 = [v30 objectForKeyedSubscript:v57];
            v33 = [v32 value];
            v34 = [v33 BOOLValue];

            if ((*(a1 + 48) & 1) != 0 || v34)
            {
              if (*(a1 + 48))
              {
                v35 = [[NRDevicePropertyDiff alloc] initWithValue:&__kCFBooleanTrue];
              }

              else
              {
                v35 = 0;
              }

              v36 = [NRDevicePropertyDiffType alloc];
              if (v35)
              {
                v37 = 1;
              }

              else
              {
                v37 = 2;
              }

              v38 = [v36 initWithDiff:v35 andChangeType:v37];
              v39 = [NRDevicePropertyDiff alloc];
              v40 = +[NSDate date];
              v41 = [v39 initWithValue:v40];

              v42 = [[NRDevicePropertyDiffType alloc] initWithDiff:v41 andChangeType:1];
              v43 = [NRDeviceDiff alloc];
              v67[0] = v57;
              v67[1] = v51;
              v68[0] = v38;
              v68[1] = v42;
              v44 = [NSDictionary dictionaryWithObjects:v68 forKeys:v67 count:2];
              v45 = [v43 initWithDiffPropertyDiffs:v44];

              v46 = v56;
              if (!v56)
              {
                v46 = +[NSMutableDictionary dictionary];
              }

              v47 = [[NRDeviceDiffType alloc] initWithDiff:v45 andChangeType:1];
              v56 = v46;
              [v46 setObject:v47 forKeyedSubscript:v24];

              v5 = v53;
              a1 = v54;
              v22 = v52;
            }
          }
        }

        v58 = [obj countByEnumeratingWithState:&v59 objects:v69 count:16];
      }

      while (v58);
    }

    else
    {
      v56 = 0;
    }

    v6 = v50;
    v16 = v56;
  }

  else
  {
    v16 = 0;
  }

  (*(*(a1 + 40) + 16))();
  if ([v16 count])
  {
    v48 = [[NRDeviceCollectionDiff alloc] initWithDeviceCollectionDiffDeviceDiffs:v16];
  }

  else
  {
    v48 = 0;
  }

  return v48;
}

uint64_t sub_100021B18(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 switchIndex];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t sub_10002208C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 activeDeviceID];
  v5 = *(a1 + 40) != 0;
  v6 = [*(a1 + 32) _makeActiveDeviceCollection:v3 diffWithPairingID:? activate:?];
  v7 = [v3 applyDiff:v6];
  v8 = [*(a1 + 48) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000221A8;
  block[3] = &unk_1001758F8;
  v12 = *(a1 + 48);
  v13 = v4;
  v14 = *(a1 + 32);
  v9 = v4;
  dispatch_async(v8, block);

  return 0;
}

void sub_1000221A8(uint64_t a1)
{
  v2 = [[EPSagaOperandUUID alloc] initWithUUID:*(a1 + 40)];
  v3 = [*(a1 + 32) operands];
  [v3 setObject:v2 forKeyedSubscript:@"nrDeviceIdentifier"];

  [*(a1 + 32) persist];
  v4 = [*(a1 + 48) delegate];
  [v4 transactionDidComplete:*(a1 + 48)];
}

uint64_t sub_1000223F4(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100022724(uint64_t a1, void *a2)
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
            LOBYTE(v19) = 0;
            goto LABEL_30;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_30:
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

void sub_100022CF0(id a1)
{
  qword_1001B3780 = objc_alloc_init(NRPairingDaemon);

  _objc_release_x1();
}

void sub_100023018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  objc_destroyWeak((v9 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v10 - 56));
  _Unwind_Resume(a1);
}

uint64_t sub_100023050(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100023068(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = *(a1 + 32);
  v9 = *(v8 + 472);
  *(v8 + 472) = v7;

  [*(a1 + 32) updateMirrorWithCollection:v5];
  [*(a1 + 32) pairingCompatibilityVersionInitWithCollection:v5];
  v10 = +[NRQueue registryDaemonQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000231A4;
  v11[3] = &unk_1001763A0;
  v12 = *(a1 + 32);
  objc_copyWeak(&v14, (a1 + 48));
  v13 = *(a1 + 40);
  [v10 dispatchAsync:v11];

  objc_destroyWeak(&v14);
}

void sub_1000231A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100023268;
  v5[3] = &unk_1001763F0;
  objc_copyWeak(&v8, (a1 + 48));
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  [v2 preFirstUnlockInitCompletion:v5];

  objc_destroyWeak(&v8);
}

void sub_100023268(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100023354;
  v8[3] = &unk_1001763C8;
  v3 = *(a1 + 32);
  v10 = *(a1 + 40);
  v4 = WeakRetained;
  v9 = v4;
  objc_copyWeak(&v11, (a1 + 48));
  v5 = [v3 addSecurePropertiesObserverWithReadBlock:v8];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  objc_destroyWeak(&v11);
}

void sub_100023354(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [NROSTransaction transactionWithName:@"preFirstUnlockInit"];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  [*(a1 + 32) removeSecurePropertiesObserver:v9];
  v13 = sub_10005F208();
  [NRRegistry fixSecurePropertiesWithCollection:v7 secureProperties:v8 insecurePropertyNames:v13];

  v14 = +[NRQueue registryDaemonQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000234C8;
  v15[3] = &unk_1001763A0;
  v16 = *(a1 + 32);
  objc_copyWeak(&v18, (a1 + 48));
  v17 = *(a1 + 40);
  [v14 dispatchAsync:v15];

  objc_destroyWeak(&v18);
}

void sub_1000234C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002357C;
  v3[3] = &unk_100176378;
  objc_copyWeak(&v4, (a1 + 48));
  v3[4] = *(a1 + 40);
  [v2 postFirstUnlockInitBlock:v3];
  objc_destroyWeak(&v4);
}

void sub_10002357C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = [WeakRetained[18] serviceFromClass:objc_opt_class()];
    [v2 resume];
    v3 = +[NRQueue xpcPairingQueue];
    [v3 resume];

    v4 = [WeakRetained[18] serviceFromClass:objc_opt_class()];
    [v4 addObserver:WeakRetained];
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_1000238E8(id a1)
{
  if (notify_register_check([NRPairedDeviceRegistryWatchDidBecomeActiveDarwinNotification UTF8String], &dword_1001B2460))
  {
    v1 = nr_daemon_log();
    v2 = os_log_type_enabled(v1, OS_LOG_TYPE_ERROR);

    if (v2)
    {
      v3 = nr_daemon_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_1000FE234();
      }
    }
  }
}

void sub_100023B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100023BF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100023C0C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v46 = a4;
  v47 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateMirrorWithCollection:v10];
  v92[0] = 0;
  v92[1] = v92;
  v92[2] = 0x3032000000;
  v92[3] = sub_100023050;
  v92[4] = sub_100023060;
  v93 = [NROSTransaction transactionWithName:@"diffProcessing"];
  if (WeakRetained)
  {
    v12 = nr_daemon_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v14 = nr_daemon_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v9;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "State change: %{public}@", &buf, 0xCu);
      }
    }

    v15 = NRDevicePropertyChipID;
    v89[0] = _NSConcreteStackBlock;
    v89[1] = 3221225472;
    v89[2] = sub_100024678;
    v89[3] = &unk_100176460;
    v16 = v10;
    v90 = v16;
    v17 = WeakRetained;
    v91 = v17;
    v45 = v15;
    [NRMutableDeviceCollection parseDiff:v9 forPropertyChange:v15 withBlock:v89];
    v18 = _NRDevicePropertyBluetoothIdentifier;
    v87[0] = _NSConcreteStackBlock;
    v87[1] = 3221225472;
    v87[2] = sub_100024754;
    v87[3] = &unk_100175D08;
    v19 = v17;
    v88 = v19;
    [NRMutableDeviceCollection parseDiff:v9 forPropertyChange:v18 withBlock:v87];
    v20 = NRDevicePropertyModelNumber;
    v84[0] = _NSConcreteStackBlock;
    v84[1] = 3221225472;
    v84[2] = sub_100024894;
    v84[3] = &unk_100176460;
    v21 = v19;
    v85 = v21;
    v22 = v16;
    v86 = v22;
    [NRMutableDeviceCollection parseDiff:v9 forPropertyChange:v20 withBlock:v84];
    v82[0] = 0;
    v82[1] = v82;
    v82[2] = 0x2020000000;
    v83 = 0;
    v78 = 0;
    v79 = &v78;
    v80 = 0x2020000000;
    v81 = 0;
    v23 = NRDevicePropertyIsPaired;
    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_1000248A4;
    v73[3] = &unk_100176488;
    v76 = &v78;
    v77 = v82;
    v24 = v22;
    v74 = v24;
    v25 = v21;
    v75 = v25;
    [NRMutableDeviceCollection parseDiff:v9 forPropertyChange:v23 withBlock:v73];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v95 = 0x3032000000;
    v96 = sub_100023050;
    v97 = sub_100023060;
    v98 = 0;
    v69 = 0;
    v70 = &v69;
    v71 = 0x2020000000;
    v72 = 0;
    v26 = NRDevicePropertyIsActive;
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_100024AA4;
    v64[3] = &unk_100176488;
    v67 = &v69;
    p_buf = &buf;
    v27 = v25;
    v65 = v27;
    v28 = v24;
    v66 = v28;
    [NRMutableDeviceCollection parseDiff:v9 forPropertyChange:v26 withBlock:v64];
    if (*(v70 + 24) == 1)
    {
      v29 = *(*(&buf + 1) + 40);
      if (v29)
      {
        v30 = [v28 objectForKeyedSubscript:?];
        v31 = [v30 objectForKeyedSubscript:v45];
        v32 = [v31 value];

        [v27 broadcastActiveDeviceChipID:v32 from:@"New device became active"];
        if (*(*(&buf + 1) + 40))
        {
          v29 = [v30 isArchived] ^ 1;
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {
        v30 = 0;
      }

      [NRPairingDaemon updateActiveFlag:v29 andPost:0];
      v33 = *(*(&buf + 1) + 40);
      if (v33)
      {
        [v27 _updateCompatibilityStateForDeviceID:v33 withDeviceCollection:v28];
        [v27 _setBridgeBadgeWithCollection:v28];
      }
    }

    v60 = 0;
    v61 = &v60;
    v62 = 0x2020000000;
    v63 = 0;
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_100024B4C;
    v59[3] = &unk_1001764B0;
    v59[4] = &v60;
    [NRMutableDeviceCollection parseDiff:v9 forPropertyChange:NRDevicePropertyIsArchived withBlock:v59];
    if ((v79[3] & 1) != 0 || (v70[3] & 1) != 0 || *(v61 + 24) == 1)
    {
      [v27 _updateActiveFlag:v28 andPost:0];
      [NRPairingDaemon updatePingMyWatchControlCenterModuleVisibility:v28];
    }

    v34 = NRDevicePropertyMaxPairingCompatibilityVersion;
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_100024B60;
    v56[3] = &unk_100176460;
    v35 = v27;
    v57 = v35;
    v36 = v28;
    v58 = v36;
    [NRMutableDeviceCollection parseDiff:v9 forPropertyChange:v34 withBlock:v56];
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_100024B70;
    v54[3] = &unk_1001764D8;
    objc_copyWeak(&v55, (a1 + 32));
    [NRMutableDeviceCollection parseDiff:v9 forPropertyChange:NRDevicePropertySystemBuildVersion withBlock:v54];
    [NRMutableDeviceCollection parseDiff:v9 forPropertyChange:_NRDevicePropertyCapabilities withBlock:&stru_100176518];
    v37 = _NRDevicePropertyCompatibilityState;
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100024CFC;
    v51[3] = &unk_100176460;
    v38 = v36;
    v52 = v38;
    v39 = v35;
    v53 = v39;
    [NRMutableDeviceCollection parseDiff:v9 forPropertyChange:v37 withBlock:v51];
    v40 = _NRDevicePropertyRemoteUnpairingStarted;
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100024EAC;
    v49[3] = &unk_100175D08;
    v41 = v38;
    v50 = v41;
    [NRMutableDeviceCollection parseDiff:v9 forPropertyChange:v40 withBlock:v49];
    LODWORD(v36) = [v39 _hasUpdateModeDevicesInCollection:v41];
    v42 = +[NRRepeatingAlertEngine sharedInstance];
    v43 = v42;
    if (v36)
    {
      [v42 setEnabled:objc_msgSend(v39 withName:{"_isBridgeForeground") ^ 1, @"PairedWatchIsIncompatible"}];
      [v43 presentAlertIfEnabledWithName:@"PairedWatchIsIncompatible"];
    }

    else
    {
      [v42 resetStateForAlertWithName:@"PairedWatchIsIncompatible"];
    }

    [NRMutableDeviceCollection parseDiff:v9 forPropertyChange:NRDevicePropertyMDMManagementState withBlock:&stru_100176538];
    v44 = +[NRQueue registryDaemonQueue];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100024F90;
    v48[3] = &unk_100175880;
    v48[4] = v92;
    [v44 dispatchAsync:v48];

    objc_destroyWeak(&v55);
    _Block_object_dispose(&v60, 8);

    _Block_object_dispose(&v69, 8);
    _Block_object_dispose(&buf, 8);

    _Block_object_dispose(&v78, 8);
    _Block_object_dispose(v82, 8);
  }

  _Block_object_dispose(v92, 8);
}

void sub_100024678(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v11 = a2;
  v6 = a4;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v11];
  v8 = [v7 objectForKeyedSubscript:NRDevicePropertyIsActive];
  v9 = [v8 value];
  v10 = [v9 isEqual:&__kCFBooleanTrue];

  if (v10)
  {
    [*(a1 + 40) broadcastActiveDeviceChipID:v6 from:@"chipID property change in active device"];
  }

  [*(a1 + 40) _updateCompatibilityStateForDeviceID:v11 withDeviceCollection:*(a1 + 32)];
}

void sub_100024754(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    v8 = +[NRQueue registryDaemonQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100024848;
    v9[3] = &unk_1001758F8;
    v10 = *(a1 + 32);
    v11 = v7;
    v12 = v6;
    [v8 dispatchAsync:v9];
  }
}

id sub_100024848(void *a1)
{
  [*(a1[4] + 208) setObject:a1[6] forKeyedSubscript:a1[5]];
  v2 = a1[4];

  return [v2 refreshPropertyCache];
}

uint64_t sub_1000248A4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = v6;
  *(*(*(a1 + 48) + 8) + 24) = 1;
  if (a4)
  {
    *(*(*(a1 + 56) + 8) + 24) = v6 != 0;
    v19 = v6;
    if ([a4 BOOLValue])
    {
      v8 = [*(*(a1 + 40) + 144) serviceFromClass:objc_opt_class()];
      [v8 clearRecoveryFlagWithQueue:0 completion:0];
      notify_post([NRPairedDeviceRegistryDeviceDidPairDarwinNotification cStringUsingEncoding:4]);
      [*(a1 + 40) _updateCompatibilityStateForDeviceID:v19 withDeviceCollection:*(a1 + 32)];
      v9 = [*(a1 + 32) objectForKeyedSubscript:v19];
      v10 = +[NetworkRelayAgent sharedInstance];
      v11 = v10;
      if (v9)
      {
        v12 = [v9 objectForKeyedSubscript:_NRDevicePropertyBluetoothIdentifier];
        v13 = [v12 value];

        if (v13)
        {
          [v11 startMonitoringDeviceWithBluetoothUUID:v13];
        }
      }

      else
      {
        [v10 stopMonitoring];
      }

      v16 = *(a1 + 40);
      v17 = [*(a1 + 32) objectForKeyedSubscript:v19];
      [v16 _updateIsSetupPropertyForNewlyPairedDevice:v17];
    }

    else
    {
      v14 = [*(a1 + 32) objectForKeyedSubscript:v19];
      v15 = [v14 objectForKeyedSubscript:_NRDevicePropertyLastPairingError];
      v8 = [v15 value];

      if (!v8)
      {
        notify_post([NRPairedDeviceRegistryDeviceDidUnpairDarwinNotification cStringUsingEncoding:4]);
      }
    }

    v6 = [*(a1 + 40) _updateNetworkRelayIdentifierForDevicesInCollection:*(a1 + 32)];
    v7 = v19;
  }

  return _objc_release_x1(v6, v7);
}

void sub_100024AA4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  *(*(*(a1 + 48) + 8) + 24) = 1;
  if ([a4 BOOLValue])
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    [*(a1 + 32) setStatusCode:objc_msgSend(*(a1 + 32) InCollection:{"lastStatusCodeCache"), *(a1 + 40)}];
    [*(a1 + 32) updatePairingSessionIdIfNeededForActiveDevice];
  }
}

void sub_100024B70(uint64_t a1, void *a2)
{
  v3 = a2;
  notify_post([NRPairedDeviceRegistryPairedDeviceDidChangeVersionDarwinNotification UTF8String]);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updatePairingSessionIdIfNeededForActiveDevice];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 collection];
  v7 = [v6 objectForKeyedSubscript:v3];

  v8 = nr_daemon_log();
  LODWORD(v6) = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v9 = nr_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "NRDevicePropertySystemBuildVersion changed to for device %@ - checking if we should mark as isSetup", &v11, 0xCu);
    }
  }

  v10 = objc_loadWeakRetained((a1 + 32));
  [v10 _markDeviceIsSetupWhereApplicable:v7 bypassIsSetupNoCheck:0];
}

void sub_100024CC8(id a1, NSUUID *a2, unint64_t a3, NSObject *a4)
{
  v4 = [NRPairedDeviceRegistryPairedDeviceDidChangeCapabilitiesDarwinNotification UTF8String];

  notify_post(v4);
}

void sub_100024CFC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if ([v7 integerValue] == 3)
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:v6];
    v9 = [v8 objectForKeyedSubscript:NRDevicePropertyIsPaired];
    v10 = [v9 value];

    if (!v10 || ([v10 BOOLValue] & 1) == 0)
    {
      notify_post([NRPairedDeviceRegistryDeviceIsPairingLinkIsUpDarwinNotification cStringUsingEncoding:4]);
    }
  }

  v11 = [*(a1 + 32) activeDeviceID];
  if (v11)
  {
    v12 = v11;
    v13 = [*(a1 + 32) activeDeviceID];
    v14 = [v13 isEqual:v6];

    if (v14)
    {
      v15 = +[NRQueue registryDaemonQueue];
      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_100024EA0;
      v19 = &unk_100175598;
      v20 = *(a1 + 40);
      v21 = v7;
      [v15 dispatchAsync:&v16];
    }
  }

  [*(a1 + 40) _setBridgeBadgeWithCollection:{*(a1 + 32), v16, v17, v18, v19}];
}

void sub_100024EAC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    if ([v6 BOOLValue])
    {
      v8 = [*(a1 + 32) objectForKeyedSubscript:v10];
      v9 = [v8 isPaired];

      if (v9)
      {
        notify_post([NRPairedDeviceRegistryRemoteUnpairingBeginningDarwinNotification cStringUsingEncoding:4]);
      }
    }
  }
}

void sub_100024F5C(id a1, NSUUID *a2, unint64_t a3, NSObject *a4)
{
  v4 = [NRPairedDeviceRegistryPairedDeviceDidChangeMDMManagementStateDarwinNotification UTF8String];

  notify_post(v4);
}

void sub_100024F90(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_100026298(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isAltAccount];
    v6 = +[NRQueue registryDaemonQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10002643C;
    v16[3] = &unk_100176560;
    v7 = &v17;
    v8 = *(a1 + 40);
    v9 = *(a1 + 32);
    v19 = v5;
    v13 = *(a1 + 48);
    v10 = *(&v13 + 1);
    *&v11 = v8;
    *(&v11 + 1) = v9;
    v18 = v13;
    v17 = v11;
    [v6 dispatchAsync:v16];

    v12 = *(&v17 + 1);
  }

  else
  {
    v12 = +[NRQueue registryDaemonQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000265C4;
    v14[3] = &unk_100175D58;
    v7 = &v15;
    v15 = *(a1 + 56);
    [v12 dispatchAsync:v14];
  }
}

void sub_10002643C(uint64_t a1)
{
  v10 = objc_opt_new();
  [v10 setClientProxy:*(a1 + 32)];
  [v10 setPairingID:*(a1 + 40)];
  v2 = objc_opt_new();
  [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v3 = +[NSDate date];
  v4 = [v2 stringFromDate:v3];

  v5 = objc_opt_new();
  v6 = [v5 UUIDString];
  v7 = [NSString stringWithFormat:@"%@.%@", v4, v6];
  [v10 setAssertionID:v7];

  v8 = [*(*(a1 + 48) + 144) serviceFromClass:objc_opt_class()];
  v9 = [v8 assertionWithPairingID:*(a1 + 40) isAltAccount:*(a1 + 64) delegate:*(a1 + 48)];
  [v10 setAssertion:v9];
  [v10 setClientBlock:*(a1 + 56)];
  [*(a1 + 48) saveAssertionInfo:v10];
}

void sub_1000265C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = nrGetPairingError();
    (*(v1 + 16))(v1, v2, 0);
  }
}

void sub_10002684C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v6 = 0;
  v4 = [a2 deviceIDAtSwitchIndex:v3 date:&v6];
  v5 = v6;
  (*(*(a1 + 32) + 16))();
}

uint64_t sub_100026A70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableDictionary dictionary];
  v5 = [[NRDeviceDiffType alloc] initWithDiff:0 andChangeType:2];
  [v4 setObject:v5 forKeyedSubscript:*(a1 + 32)];

  v6 = [[NRDeviceCollectionDiff alloc] initWithDeviceCollectionDiffDeviceDiffs:v4];
  v7 = [v3 applyDiff:v6];

  return 0;
}

void sub_100028038(id a1, EPRoutingSlip *a2)
{
  v2 = [(EPRoutingSlip *)a2 getLastFirstError];

  if (!v2)
  {
    v3 = +[NRRepeatingAlertEngine sharedInstance];
    [v3 resetStateForAlertWithName:@"PairedWatchIsIncompatible"];
  }
}

uint64_t sub_100028940(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) UUIDString];
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling IDSLocalPairingDeletePairedDevice %@", &v9, 0xCu);
    }
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  return IDSLocalPairingDeletePairedDevice();
}

void sub_100028E90(id a1)
{
  v1 = +[NRRepeatingAlertEngine sharedInstance];
  [v1 resetStateForAlertWithName:@"SamePhone"];

  v2 = +[NRRepeatingAlertEngine sharedInstance];
  [v2 setEnabled:1 withName:@"SamePhone"];

  v3 = +[NRRepeatingAlertEngine sharedInstance];
  [v3 presentAlertIfEnabledWithName:@"SamePhone"];
}

void sub_100028FC8(uint64_t a1)
{
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = sub_100023050;
  v23[4] = sub_100023060;
  v2 = (a1 + 32);
  v24 = [*(a1 + 32) _migrationReporter];
  v3 = [*v2 managedConfigurationWatchDisabled];
  v4 = [*(a1 + 32) didRestoreFromBackup];
  v5 = objc_opt_new();
  v6 = +[NSDate date];
  v7 = nr_daemon_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = nr_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 UDIDChanged];
      *buf = 67109632;
      v26 = v3;
      v27 = 1024;
      v28 = v4;
      v29 = 1024;
      v30 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "createUnpairTransactionsWithCompletion -- MC allowed: %{BOOL}d; restored from backup: %{BOOL}d; UDID changed: %{BOOL}d", buf, 0x14u);
    }
  }

  v11 = *(a1 + 32);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100029240;
  v15[3] = &unk_100176758;
  v12 = v6;
  v13 = *(a1 + 32);
  v16 = v12;
  v17 = v13;
  v20 = v23;
  v21 = v3;
  v22 = v4;
  v14 = v5;
  v18 = v14;
  v19 = *(a1 + 40);
  [v11 grabHistoryWithReadBlock:v15];

  _Block_object_dispose(v23, 8);
}

void sub_10002920C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100029240(uint64_t a1, void *a2)
{
  v117 = a2;
  v3 = [v117 deviceCollection];
  v4 = [v3 allPairingIDs];
  v5 = [NSSet setWithArray:v4];
  v6 = [v5 mutableCopy];

  if ([v6 count])
  {
    v112 = objc_alloc_init(NSMutableDictionary);
    v103 = +[NSMutableSet set];
    v110 = +[NSMutableSet set];
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v102 = v6;
    obj = v6;
    v116 = [obj countByEnumeratingWithState:&v128 objects:v134 count:16];
    if (!v116)
    {
      goto LABEL_112;
    }

    v114 = NRDevicePropertyLastInactiveDate;
    v115 = *v129;
    v113 = NRDevicePropertyLocalPairingDataStorePath;
    v108 = NRDevicePropertyMDMManagementState;
    v106 = NRDevicePropertyIsStagedForTransfer;
    v104 = _NRDevicePropertyMigrationKeyRevision;
    v105 = _NRDevicePropertyKeychainTurnedOff;
    while (1)
    {
      for (i = 0; i != v116; i = i + 1)
      {
        if (*v129 != v115)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v128 + 1) + 8 * i);
        v9 = nr_daemon_log();
        v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

        if (v10)
        {
          v11 = nr_daemon_log();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *v133 = v8;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "createUnpairTransactionsWithCompletion: Checking %{public}@", buf, 0xCu);
          }
        }

        v12 = [v117 deviceCollection];
        v13 = [v12 objectForKeyedSubscript:v8];

        v14 = [v13 objectForKeyedSubscript:v114];
        v15 = [v14 value];

        v16 = [v13 objectForKeyedSubscript:v113];
        v17 = [v16 value];

        if (!v17)
        {
          v18 = nr_daemon_log();
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

          if (v19)
          {
            v20 = nr_daemon_log();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *v133 = v8;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "createUnpairTransactionsWithCompletion: device %{public}@ does not have a data store. Inferring corruption and unpairing the device", buf, 0xCu);
            }
          }

          [v110 addObject:v8];
        }

        if ([v13 isArchived])
        {
          v21 = 0;
          if (([v13 isAltAccount] & 1) == 0 && v15)
          {
            [*(a1 + 32) timeIntervalSinceDate:v15];
            v21 = fabs(v22) > 691200.0;
          }
        }

        else
        {
          v21 = 0;
        }

        v23 = [*(a1 + 40) _deviceIsInSetupBasedOnIsSetupValue:v13];
        v24 = nr_daemon_log();
        v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

        if (v25)
        {
          v26 = nr_daemon_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [v8 UUIDString];
            *buf = 138543618;
            *v133 = v27;
            *&v133[8] = 1024;
            *&v133[10] = v23;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "device %{public}@, is in setup %{BOOL}d", buf, 0x12u);
          }
        }

        if (v21)
        {
          v28 = nr_daemon_log();
          v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

          if (v29)
          {
            v30 = nr_daemon_log();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = [v8 UUIDString];
              *buf = 138543362;
              *v133 = v31;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "unpairStaleArchivedDevicesWithCompletion: Archived device %{public}@ is stale, removing", buf, 0xCu);
            }
          }

          [*(*(*(a1 + 64) + 8) + 40) fileEarlyMigrationFailure:3 withDeviceHistory:v117 forPairingID:v8];
          v32 = +[NSNull null];
          goto LABEL_32;
        }

        if (*(a1 + 72) == 1)
        {
          v33 = +[NSNull null];
          [v112 setObject:v33 forKeyedSubscript:v8];

          v32 = +[NRQueue registryDaemonQueue];
          [(NRPairingReport *)v32 dispatchAsync:&stru_100176648];
          goto LABEL_109;
        }

        if (v23)
        {
          v34 = nr_daemon_log();
          v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);

          if (v35)
          {
            v36 = nr_daemon_log();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              v37 = [v8 UUIDString];
              *buf = 138412290;
              *v133 = v37;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "unpairStaleArchivedDevicesWithCompletion: device %@ appears to have been in setup while NR restarted, flagging to unpair", buf, 0xCu);
            }
          }

          v32 = objc_alloc_init(NRPairingReport);
          v38 = nrGetPairingError();
          [(NRPairingReport *)v32 setOriginalError:v38];

LABEL_32:
          [v112 setObject:v32 forKeyedSubscript:v8];
LABEL_109:

          goto LABEL_110;
        }

        if ((*(a1 + 73) & 1) != 0 || [*(a1 + 48) UDIDChanged])
        {
          v39 = [v13 objectForKeyedSubscript:v108];
          v32 = [v39 value];

          if (v32)
          {
            v109 = [(NRPairingReport *)v32 integerValue]!= 0;
          }

          else
          {
            v109 = 0;
          }

          v40 = nr_daemon_log();
          v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);

          if (v41)
          {
            v42 = nr_daemon_log();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109378;
              *v133 = v109;
              *&v133[4] = 2112;
              *&v133[6] = v32;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "mdmManaged %{BOOL}d (%@)", buf, 0x12u);
            }
          }

          v43 = [*(a1 + 48) UDIDChanged];
          v44 = nr_daemon_log();
          v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);

          if (v43)
          {
            if (v45)
            {
              v46 = nr_daemon_log();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Phone changed.", buf, 2u);
              }
            }

            if ([v13 isArchived])
            {
              v47 = nr_daemon_log();
              v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);

              if (v48)
              {
                v49 = nr_daemon_log();
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  *v133 = v8;
                  _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Pairing %{public}@ is archived.", buf, 0xCu);
                }
              }

              v50 = +[NSNull null];
              [v112 setObject:v50 forKeyedSubscript:v8];
              goto LABEL_108;
            }

            v66 = [v13 objectForKeyedSubscript:v105];
            v50 = [v66 value];

            v67 = [v13 objectForKeyedSubscript:v104];
            v107 = [v67 value];

            if (!v50)
            {
              v68 = [[NSUUID alloc] initWithUUIDString:@"119C9267-C24D-4FC3-8FE9-2D394943F2E6"];
              if ([v13 supportsCapability:v68])
              {
                v69 = [v107 integerValue] == 0 || v109;

                if (!v69)
                {
                  v70 = nr_daemon_log();
                  v71 = os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT);

                  if (v71)
                  {
                    v72 = nr_daemon_log();
                    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138543362;
                      *v133 = v8;
                      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "Adding %{public}@ to migration list.", buf, 0xCu);
                    }
                  }

                  [v103 addObject:v8];
LABEL_107:

                  goto LABEL_108;
                }
              }

              else
              {
              }
            }

            v76 = nr_daemon_log();
            v77 = os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT);

            if (v77)
            {
              v78 = nr_daemon_log();
              if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                *v133 = v8;
                _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Unable to migrate %{public}@.", buf, 0xCu);
              }
            }

            if (v109)
            {
              v79 = 4;
            }

            else
            {
              v79 = 2 * (v50 != 0);
            }

            [*(*(*(a1 + 64) + 8) + 40) fileEarlyMigrationFailure:v79 withDeviceHistory:v117 forPairingID:v8];
            v80 = +[NSNull null];
            [v112 setObject:v80 forKeyedSubscript:v8];

            v81 = @"WatchUnexpectedlyUnpaired";
            if (v109)
            {
              v82 = @"MigrationNotSupportedForMDMWatch";

              v81 = v82;
            }

            v83 = +[NRQueue registryDaemonQueue];
            v126[0] = _NSConcreteStackBlock;
            v126[1] = 3221225472;
            v126[2] = sub_10002A410;
            v126[3] = &unk_100175660;
            v127 = v81;
            v84 = v81;
            [v83 dispatchAsync:v126];

            goto LABEL_107;
          }

          if (v45)
          {
            v51 = nr_daemon_log();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Restored from backup.", buf, 2u);
            }
          }

          v52 = [v13 objectForKeyedSubscript:v106];
          v50 = [v52 value];

          if (+[NRDataFileHistoryHelpersMigration hasClassAFile](NRDataFileHistoryHelpersMigration, "hasClassAFile") && (v53 = [[NSUUID alloc] initWithUUIDString:@"119C9267-C24D-4FC3-8FE9-2D394943F2E6"], v54 = objc_msgSend(v13, "supportsCapability:", v53), v53, !v109 && (v54 & 1) != 0))
          {
            v73 = nr_daemon_log();
            v74 = os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT);

            if (v74)
            {
              v75 = nr_daemon_log();
              if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                *v133 = v8;
                _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Adding %{public}@ to migration list.", buf, 0xCu);
              }
            }

            [v103 addObject:v8];
          }

          else
          {
            if (v50 && [v50 BOOLValue])
            {
              v55 = nr_daemon_log();
              v56 = os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);

              if (!v56)
              {
                goto LABEL_108;
              }

              v57 = nr_daemon_log();
              if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                *v133 = v8;
                _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Device %{public}@ is staged for transfer, ignoring.", buf, 0xCu);
              }
            }

            else
            {
              v58 = nr_daemon_log();
              v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);

              if (v59)
              {
                v60 = nr_daemon_log();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  *v133 = v8;
                  _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Unable to migrate %{public}@.", buf, 0xCu);
                }
              }

              if (v109)
              {
                v61 = 4;
              }

              else
              {
                v61 = 1;
              }

              [*(*(*(a1 + 64) + 8) + 40) fileEarlyMigrationFailure:v61 withDeviceHistory:v117 forPairingID:v8];
              v62 = +[NSNull null];
              [v112 setObject:v62 forKeyedSubscript:v8];

              v63 = @"WatchUnexpectedlyUnpaired";
              if (v109)
              {
                v64 = @"MigrationNotSupportedForMDMWatch";

                v63 = v64;
              }

              v65 = +[NRQueue registryDaemonQueue];
              v124[0] = _NSConcreteStackBlock;
              v124[1] = 3221225472;
              v124[2] = sub_10002A46C;
              v124[3] = &unk_100175660;
              v125 = v63;
              v57 = v63;
              [v65 dispatchAsync:v124];
            }
          }

LABEL_108:

          goto LABEL_109;
        }

LABEL_110:
      }

      v116 = [obj countByEnumeratingWithState:&v128 objects:v134 count:16];
      if (!v116)
      {
LABEL_112:

        v85 = [NSSet alloc];
        v86 = [v112 allKeys];
        v87 = [v85 initWithArray:v86];

        [v103 minusSet:v87];
        [v110 minusSet:v103];
        v6 = v102;
        if ([v110 count])
        {
          v88 = nr_daemon_log();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_FAULT))
          {
            sub_1000FE588(v110, v88);
          }

          v122[0] = _NSConcreteStackBlock;
          v122[1] = 3221225472;
          v122[2] = sub_10002A4C8;
          v122[3] = &unk_100176670;
          v123 = v112;
          [v110 enumerateObjectsUsingBlock:v122];
          v89 = +[NRQueue registryDaemonQueue];
          [v89 dispatchAsync:&stru_100176690];
        }

        v90 = [*(a1 + 48) UDIDChanged];
        v91 = nr_daemon_log();
        v92 = os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT);

        if (v90)
        {
          if (v92)
          {
            v93 = nr_daemon_log();
            if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *v133 = v103;
              _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "createUnpairTransactionsWithCompletion: Archiving devices %{public}@", buf, 0xCu);
            }
          }

          v94 = *(a1 + 40);
          v95 = [v117 deviceCollection];
          [v94 _archiveDevices:v103 withCollection:v95];
        }

        else
        {
          if (v92)
          {
            v97 = nr_daemon_log();
            if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *v133 = v103;
              _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "createUnpairTransactionsWithCompletion: Forcing migration sync for %{public}@", buf, 0xCu);
            }
          }

          v98 = *(a1 + 40);
          v95 = [v117 deviceCollection];
          [v98 _forceMigrationSync:v103 withCollection:v95];
        }

        v99 = +[NRQueue registryDaemonQueue];
        v118[0] = _NSConcreteStackBlock;
        v118[1] = 3221225472;
        v118[2] = sub_10002A5C8;
        v118[3] = &unk_100176730;
        v100 = *(a1 + 48);
        v118[4] = *(a1 + 40);
        v119 = v112;
        v120 = v100;
        v121 = *(a1 + 56);
        v101 = v112;
        [v99 dispatchAsync:v118];

        goto LABEL_130;
      }
    }
  }

  [*(a1 + 40) setDidRestoreFromBackup:0];
  +[NRDataFileHistoryHelpersMigration createClassAFile];
  [*(a1 + 48) cacheUDID];
  v96 = *(a1 + 56);
  if (v96)
  {
    (*(v96 + 16))();
  }

LABEL_130:
}

void sub_10002A3B8(id a1)
{
  v1 = +[NRRepeatingAlertEngine sharedInstance];
  [v1 setEnabled:1 withName:@"WatchesUnpairedProhibited"];
}

void sub_10002A410(uint64_t a1)
{
  v2 = +[NRRepeatingAlertEngine sharedInstance];
  [v2 setEnabled:1 withName:*(a1 + 32)];
}

void sub_10002A46C(uint64_t a1)
{
  v2 = +[NRRepeatingAlertEngine sharedInstance];
  [v2 setEnabled:1 withName:*(a1 + 32)];
}

void sub_10002A4C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSNull null];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
}

void sub_10002A540(id a1)
{
  v1 = +[NRRepeatingAlertEngine sharedInstance];
  [v1 setEnabled:1 withName:@"WatchUnexpectedlyUnpaired"];

  v2 = +[NRRepeatingAlertEngine sharedInstance];
  [v2 setEnabled:1 withName:@"WatchUnexpectedlyUnpairedBridge"];
}

void sub_10002A5C8(uint64_t a1)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002A68C;
  v7[3] = &unk_100176148;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v6 grabRegistryWithReadBlockAsync:v7];
}

void sub_10002A68C(id *a1, void *a2, void *a3)
{
  v4 = a2;
  v64 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 allPairingIDs];
      *buf = 138543362;
      v88 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "createUnpairTransactionsWithCompletion: Updating NetworkRelay Identifier for devices in %{public}@", buf, 0xCu);
    }
  }

  [a1[4] _updateNetworkRelayIdentifierForDevicesInCollection:v4];
  v9 = nr_daemon_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = nr_daemon_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v4 allPairingIDs];
      *buf = 138543362;
      v88 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "createUnpairTransactionsWithCompletion: Finding duplicate devices in %{public}@", buf, 0xCu);
    }
  }

  v68 = +[NSMutableDictionary dictionary];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v13 = v4;
  v14 = [v13 countByEnumeratingWithState:&v83 objects:v94 count:16];
  v67 = v13;
  if (v14)
  {
    v16 = v14;
    v70 = *v84;
    v69 = NRDevicePropertyIsStagedForTransfer;
    v66 = NRDevicePropertyBluetoothMACAddress;
    *&v15 = 138543362;
    v63 = v15;
    do
    {
      v17 = 0;
      do
      {
        if (*v84 != v70)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v83 + 1) + 8 * v17);
        v19 = [v13 objectForKeyedSubscript:{v18, v63}];
        v20 = [v19 objectForKeyedSubscript:v69];
        v21 = [v20 value];

        if (!v21 || ![v21 BOOLValue])
        {
          v25 = [v19 objectForKeyedSubscript:v66];
          v24 = [v25 value];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = [v64 securePropertyForID:v24];
          }

          else
          {
            v26 = v24;
          }

          v27 = v26;
          if (v26)
          {
            v28 = [v68 objectForKeyedSubscript:v26];
            v29 = v28;
            if (v28)
            {
              v30 = v28;
            }

            else
            {
              v30 = +[NSSet set];
            }

            v40 = v30;

            v36 = [v40 setByAddingObject:v18];

            v37 = v68;
            v38 = v36;
            v39 = v27;
            goto LABEL_33;
          }

          v31 = +[NRSystemProperties sharedInstance];
          v32 = [v31 isBluetoothCapable];

          v33 = nr_daemon_log();
          v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);

          if (v32)
          {
            v13 = v67;
            if (v34)
            {
              v35 = nr_daemon_log();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v63;
                v88 = v18;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "createUnpairTransactionsWithCompletion: marking a device missing Bluetooh MAC for removal: pairing ID %{public}@", buf, 0xCu);
              }
            }

            v36 = +[NSNull null];
            v37 = a1[5];
            v38 = v36;
            v39 = v18;
LABEL_33:
            [v37 setObject:v38 forKeyedSubscript:v39];
LABEL_34:
          }

          else
          {
            v13 = v67;
            if (v34)
            {
              v36 = nr_daemon_log();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v63;
                v88 = v18;
                _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "createUnpairTransactionsWithCompletion: not marking a device missing Bluetooh MAC for removal (BT not supported): pairing ID %{public}@", buf, 0xCu);
              }

              goto LABEL_34;
            }
          }

          goto LABEL_36;
        }

        v22 = nr_daemon_log();
        v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

        if (!v23)
        {
          goto LABEL_37;
        }

        v24 = nr_daemon_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v63;
          v88 = v18;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Skip checking duplicate for staged device %{public}@", buf, 0xCu);
        }

LABEL_36:

LABEL_37:
        v17 = v17 + 1;
      }

      while (v16 != v17);
      v41 = [v13 countByEnumeratingWithState:&v83 objects:v94 count:16];
      v16 = v41;
    }

    while (v41);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v42 = v68;
  v43 = [v42 countByEnumeratingWithState:&v79 objects:v93 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v80;
    do
    {
      for (i = 0; i != v44; i = i + 1)
      {
        if (*v80 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v79 + 1) + 8 * i);
        v48 = [v42 objectForKeyedSubscript:v47];
        if ([v48 count]>= 2)
        {
          v49 = [v48 allObjects];
          v77[0] = _NSConcreteStackBlock;
          v77[1] = 3221225472;
          v77[2] = sub_10002AF58;
          v77[3] = &unk_1001766B8;
          v78 = v67;
          v50 = [v49 sortedArrayUsingComparator:v77];

          v51 = nr_daemon_log();
          v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);

          if (v52)
          {
            v53 = nr_daemon_log();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v88 = v48;
              v89 = 2112;
              v90 = v50;
              _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Sorting NRDevices to find duplicates. IN: %@ OUT: %@", buf, 0x16u);
            }
          }

          v54 = [v50 firstObject];
          v55 = nr_daemon_log();
          v56 = os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);

          if (v56)
          {
            v57 = nr_daemon_log();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              v88 = v48;
              v89 = 2112;
              v90 = v47;
              v91 = 2114;
              v92 = v54;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Found duplicate NRDevices %{public}@ for BTMAC %@ keeping %{public}@", buf, 0x20u);
            }
          }

          v75[0] = _NSConcreteStackBlock;
          v75[1] = 3221225472;
          v75[2] = sub_10002B0A8;
          v75[3] = &unk_1001766E0;
          v76 = a1[5];
          [v50 enumerateObjectsUsingBlock:v75];
        }
      }

      v44 = [v42 countByEnumeratingWithState:&v79 objects:v93 count:16];
    }

    while (v44);
  }

  v58 = +[NRQueue registryDaemonQueue];
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_10002B128;
  v72[3] = &unk_100176730;
  *&v59 = a1[5];
  *(&v59 + 1) = a1[4];
  v71 = v59;
  v60 = a1[6];
  v61 = a1[7];
  *&v62 = v60;
  *(&v62 + 1) = v61;
  v73 = v71;
  v74 = v62;
  [v58 dispatchAsync:v72];
}

uint64_t sub_10002AF58(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  if ([v7 isPaired] && !objc_msgSend(v8, "isPaired"))
  {
    v9 = -1;
  }

  else if (([v7 isPaired] & 1) != 0 || (objc_msgSend(v8, "isPaired") & 1) == 0)
  {
    v10 = NRDevicePropertyLastActiveDate;
    v11 = [v7 objectForKeyedSubscript:NRDevicePropertyLastActiveDate];
    v12 = [v11 value];

    v13 = [v8 objectForKeyedSubscript:v10];
    v14 = [v13 value];

    if (v12)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      if (v12)
      {
        v16 = 1;
      }

      else
      {
        v16 = v14 == 0;
      }

      v17 = !v16;
      if (v12)
      {
        v18 = v14 == 0;
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
        v9 = -1;
      }

      else
      {
        v9 = v17;
      }
    }

    else
    {
      v9 = [v14 compare:v12];
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

void sub_10002B0A8(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a2;
    v5 = +[NSNull null];
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
  }
}

uint64_t sub_10002B128(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = nr_daemon_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

    if (v3)
    {
      v4 = nr_daemon_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [*(a1 + 32) allKeys];
        *buf = 138543362;
        v10 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "createUnpairTransactionsWithCompletion: Unpairing %{public}@", buf, 0xCu);
      }
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10002B29C;
    v8[3] = &unk_100176708;
    v6 = *(a1 + 32);
    v8[4] = *(a1 + 40);
    [v6 enumerateKeysAndObjectsUsingBlock:v8];
  }

  [*(a1 + 40) setDidRestoreFromBackup:0];
  +[NRDataFileHistoryHelpersMigration createClassAFile];
  [*(a1 + 48) cacheUDID];
  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10002B29C(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = 0;
  }

  else
  {
    v6 = v8;
  }

  LOBYTE(v7) = 0;
  [*(a1 + 32) unpairDeviceWithPairingID:v5 obliterationString:@"createUnpairTransactionsWithCompletion" shouldBrick:&__kCFBooleanFalse storeUnpair:&__kCFBooleanFalse migrationUnpair:&__kCFBooleanFalse shouldPreserveESim:&__kCFBooleanFalse pairingReport:v6 remoteUnpairRequestUUID:0 shouldConnectionWithDevice:v7];
}

void sub_10002B8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002BCF8(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 208), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 96), *(a1 + 48));
  objc_storeStrong((*(a1 + 32) + 104), *(a1 + 56));
  *(*(a1 + 32) + 33) = *(a1 + 72);
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  if (*(v2 + 112) != v3)
  {
    *(v2 + 112) = v3;
    v4 = *(*(a1 + 32) + 152);

    [v4 pollProperties];
  }
}

void sub_10002BFF4(id a1)
{
  keyExistsAndHasValidFormat = 0;
  qword_1001B37E8 = CFPreferencesGetAppIntegerValue(@"pairedMinCompatibilityVersion", @"com.apple.ids", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    byte_1001B3798 = 1;
  }

  keyExistsAndHasValidFormat = 0;
  qword_1001B37F0 = CFPreferencesGetAppIntegerValue(@"pairedMaxCompatibilityVersion", @"com.apple.ids", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    byte_1001B3798 = 1;
  }
}

void sub_10002C10C(uint64_t a1)
{
  signal(15, 1);
  v2 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  v3 = qword_1001B37A8;
  qword_1001B37A8 = v2;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10002C270;
  handler[3] = &unk_100175660;
  handler[4] = *(a1 + 32);
  dispatch_source_set_event_handler(qword_1001B37A8, handler);
  dispatch_resume(qword_1001B37A8);
  signal(30, 1);
  v4 = dispatch_source_create(&_dispatch_source_type_signal, 0x1EuLL, 0, &_dispatch_main_q);
  v5 = qword_1001B37B0;
  qword_1001B37B0 = v4;

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002C278;
  v6[3] = &unk_100175660;
  v6[4] = *(a1 + 32);
  dispatch_source_set_event_handler(qword_1001B37B0, v6);
  dispatch_resume(qword_1001B37B0);
}

void sub_10002C2D0(id a1)
{
  v1 = +[NRRepeatingAlertEngine sharedInstance];
  [v1 sigTerm];
}

void sub_10002C824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002C84C(uint64_t a1)
{
  v2 = objc_alloc(*(a1 + 56));
  v3 = *(a1 + 32);
  v4 = +[NRQueue registryDaemonQueue];
  v5 = [v4 queue];
  v6 = [v2 initWithDelegate:v3 andQueue:v5];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = +[NRQueue registryDaemonQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002C96C;
  v12[3] = &unk_1001767E8;
  v12[4] = *(a1 + 32);
  v11 = *(a1 + 40);
  v10 = v11;
  v13 = v11;
  [v9 dispatchAsync:v12];
}

uint64_t sub_10002C96C(void *a1)
{
  [*(a1[4] + 144) addService:*(*(a1[6] + 8) + 40)];
  [*(*(a1[6] + 8) + 40) setDisconnected:0];
  result = a1[5];
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_10002C9EC(uint64_t a1)
{
  [*(*(*(a1 + 40) + 8) + 40) setDisconnected:0];
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10002CCA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v10 - 120), 8);
  _Unwind_Resume(a1);
}

id sub_10002CCE8(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_10002CD1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v4 = *(*(a1 + 40) + 8);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v16 = sub_10002CF68;
  v17 = &unk_100176860;
  v19 = *(a1 + 48);
  v21 = *(a1 + 64);
  v5 = v3;
  v18 = v5;
  v20 = &v22;
  v6 = v15;
  os_unfair_lock_lock_with_options();
  v16(v6);

  os_unfair_lock_unlock(v4 + 8);
  if (*(v23 + 24) == 1)
  {
    v7 = nr_daemon_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v9 = nr_daemon_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_retainBlock(*(*(*(a1 + 56) + 8) + 40));
        v11 = [NSNumber numberWithInteger:*(a1 + 64)];
        *buf = 134218242;
        v27 = v10;
        v28 = 2112;
        v29 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%p] countdown:%@ toCompletion: --done--", buf, 0x16u);
      }
    }

    v12 = +[NRQueue registryDaemonQueue];
    [v12 dispatchAsync:*(a1 + 32)];

    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;
  }

  _Block_object_dispose(&v22, 8);
}

void sub_10002CF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002CF68(void *a1)
{
  --*(*(a1[5] + 8) + 24);
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_retainBlock(*(*(a1[6] + 8) + 40));
      v6 = [NSNumber numberWithInteger:a1[8]];
      v7 = [NSNumber numberWithInteger:*(*(a1[5] + 8) + 24)];
      v8 = a1[4];
      v9 = 134218754;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%p] countdown:%@ toCompletion: --%@:%@--", &v9, 0x2Au);
    }
  }

  *(*(a1[7] + 8) + 24) = *(*(a1[5] + 8) + 24) == 0;
}

void sub_10002D198(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10002D228;
  v2[3] = &unk_100176900;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 areWePairedOrPairing:v2];
}

void sub_10002D228(uint64_t a1, int a2)
{
  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (a2)
  {
    if (v5)
    {
      v6 = nr_daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Paired, updating traffic class", buf, 2u);
      }
    }

    v7 = *(a1 + 32);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002D390;
    v10[3] = &unk_1001768D8;
    v10[4] = v7;
    v11 = *(a1 + 40);
    [v7 grabRegistryWithReadBlockAsync:v10];
  }

  else
  {
    if (v5)
    {
      v8 = nr_daemon_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not paired, not updating traffic class", buf, 2u);
      }
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))();
    }
  }
}

void sub_10002D390(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 activeDeviceID];

  if (v4)
  {
    v5 = [v3 activeDevice];
    v6 = [v5 objectForKeyedSubscript:_NRDevicePropertyCompatibilityState];
    v7 = [v6 value];

    v8 = +[NRQueue registryDaemonQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002D534;
    v14[3] = &unk_1001768B0;
    v9 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v15 = v7;
    v16 = v9;
    v10 = v7;
    [v8 dispatchAsync:v14];
  }

  else
  {
    v11 = +[NRQueue registryDaemonQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002D58C;
    v12[3] = &unk_100175D58;
    v13 = *(a1 + 40);
    [v11 dispatchAsync:v12];

    v10 = v13;
  }
}

uint64_t sub_10002D534(uint64_t a1)
{
  [*(a1 + 32) setIDSTrafficClassifiersForActiveDeviceWithNewCompatibilityState:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_10002D58C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10002D6B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NRQueue registryDaemonQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002D778;
  v7[3] = &unk_100175688;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 dispatchAsync:v7];
}

void sub_10002D778(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) activeDevice];
  (*(v1 + 16))(v1, [v2 isPaired]);
}

uint64_t sub_10002DA90(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Polling IDS for paired devices", v6, 2u);
    }
  }

  [*(a1 + 32) _isIDSReady];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10002DBA0(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10002DD7C;
    v18[3] = &unk_100175D58;
    v19 = *(a1 + 40);
    v5 = [v4 countdown:2 toCompletion:v18];
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10002DD94;
    v16[3] = &unk_100175D58;
    v8 = v5;
    v17 = v8;
    [v6 initIDSService:v7 block:v16];
    v9 = *(a1 + 32);
    v10 = objc_opt_class();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002DDAC;
    v14[3] = &unk_100175D58;
    v15 = v8;
    v11 = v8;
    [v9 initIDSService:v10 block:v14];
  }

  else
  {
    v12 = *(a1 + 40);
    v13 = *(*(a1 + 40) + 16);

    v13();
  }
}

void sub_10002E1BC(uint64_t a1)
{
  v7 = [*(*(a1 + 32) + 144) optionalServiceFromClass:objc_opt_class()];
  if (v7)
  {
    v2 = *(*(*(a1 + 40) + 8) + 40);
    v3 = [v7 description];
    [v2 appendString:v3];
  }

  v4 = +[NetworkRelayAgent sharedInstance];
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = [v4 description];
  [v5 appendFormat:@"%@\n", v6];
}

void sub_10002E2A8(uint64_t a1)
{
  v2 = [*(a1 + 32) history];
  *(*(*(a1 + 40) + 8) + 24) = [v2 nextIndex];

  v3 = *(a1 + 56);
  if (v3 && *(*(*(a1 + 40) + 8) + 24) == v3)
  {
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }

  else
  {
    [*(*(*(a1 + 48) + 8) + 40) appendString:@"Registry Current State:\n"];
    v6 = *(*(*(a1 + 48) + 8) + 40);
    v7 = [*(a1 + 32) history];
    v8 = [v7 deviceCollection];
    v9 = [v8 description];
    [v6 appendString:v9];

    [*(*(*(a1 + 48) + 8) + 40) appendFormat:@"History Index: %lu\n", *(*(*(a1 + 40) + 8) + 24)];
    [*(*(*(a1 + 48) + 8) + 40) appendString:@"History:\n"];
    v10 = *(*(*(a1 + 48) + 8) + 40);
    v11 = [*(a1 + 32) history];
    v12 = [v11 description];
    [v10 appendString:v12];

    if (!_NRIsInternalInstall())
    {
      return;
    }

    [*(*(*(a1 + 48) + 8) + 40) appendString:@"Secure properties (internal builds only):\n"];
    v13 = [*(a1 + 32) secureProperties];

    if (!v13)
    {
      return;
    }

    v14 = *(*(*(a1 + 48) + 8) + 40);
    v16 = [*(a1 + 32) secureProperties];
    v15 = [v16 description];
    [v14 appendString:v15];

    v5 = v16;
  }
}

void sub_10002E854(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10002E8E4;
  v2[3] = &unk_100175FA0;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 initializeTrafficClassBlock:v2];
}

uint64_t sub_10002E8E4(uint64_t a1)
{
  v2 = +[EPNanoRegistryStatusCodeElection sharedInstance];
  v3 = [v2 newStatusCodeVote:2];
  v4 = *(a1 + 32);
  v5 = *(v4 + 184);
  *(v4 + 184) = v3;

  result = *(a1 + 40);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

uint64_t sub_10002E9A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _updateActiveFlag:v4 andPost:1];
  v5 = *(a1 + 32);
  v6 = [v4 activeDeviceID];
  [v5 _updateCompatibilityStateForDeviceID:v6 withDeviceCollection:v4];

  [*(a1 + 32) _onRestartMarkPairedDevicesIsSetup:v4];
  [NRPairingDaemon updatePingMyWatchControlCenterModuleVisibility:v4];

  v7 = [*(*(a1 + 32) + 144) instantiateServiceByClass:objc_opt_class()];
  v8 = *(*(a1 + 40) + 16);

  return v8();
}

void sub_10002F344(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 144) instantiateServiceByClass:objc_opt_class()];
  v3 = [*(*(a1 + 32) + 144) serviceFromClass:objc_opt_class()];
  [v3 addObserver:*(a1 + 32)];
  v4 = [*(*(a1 + 32) + 144) instantiateServiceByClass:objc_opt_class()];
  v5 = +[NRQueue delayPairingRequestQueue];
  [v5 resume];

  [*(a1 + 32) syncPairingClientCrashMonitoringCache];
  [*(a1 + 32) setPairingQueueIsSuspended:0];
  v6 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002F498;
  v7[3] = &unk_1001768D8;
  v7[4] = v6;
  v8 = *(a1 + 40);
  [v6 grabRegistryWithReadBlockAsync:v7];
}

void sub_10002F498(uint64_t a1, void *a2)
{
  v3 = [a2 activeDeviceID];
  v4 = +[NRQueue registryDaemonQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002F56C;
  v8[3] = &unk_1001768B0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  [v4 dispatchAsync:v8];
}

uint64_t sub_10002F56C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = objc_opt_new();
    v3 = [EPRoutingSlipEntry alloc];
    v4 = [*(a1 + 32) UUIDString];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = @"none";
    }

    v7 = [@"checkForSyncOnFirstUnlock-" stringByAppendingString:v6];
    v8 = objc_opt_class();
    v20 = @"nrDeviceIdentifier";
    v9 = [[EPSagaOperandUUID alloc] initWithUUID:*(a1 + 32)];
    v21 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v11 = [(EPRoutingSlipEntry *)v3 initWithName:v7 transactionClass:v8 operands:v10];
    [v2 setEntry:v11];

    [v2 setRunningStatusCode:2];
    [v2 setOperationType:@"reunionSync"];
    [v2 setTargetPairingID:*(a1 + 32)];
    v12 = [*(*(a1 + 40) + 144) serviceFromClass:objc_opt_class()];
    [v12 addTransaction:v2];
  }

  v13 = nr_daemon_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v15 = nr_daemon_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v18 = 138412290;
      v19 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Post first unlock active device %@", &v18, 0xCu);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

id sub_10002F818(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained mirrorOfIsPaired];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_10002F860(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _hasUpdateModeDevicesInCollection:a2];
  v4 = +[NRRepeatingAlertEngine sharedInstance];
  if (v3)
  {
    [v4 setEnabled:objc_msgSend(*(a1 + 32) withName:{"_isBridgeForeground") ^ 1, @"PairedWatchIsIncompatible"}];
    [v4 presentAlertsIfNeeded];
  }

  else
  {
    [v4 resetStateForAlertWithName:@"PairedWatchIsIncompatible"];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10002F934(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [v3 activeDeviceID];
  v4 = [v3 objectForKeyedSubscript:?];

  v5 = [v4 objectForKeyedSubscript:_NRDevicePropertyBluetoothIdentifier];
  v6 = [v5 value];

  if (v6)
  {
    [*(a1 + 32) startMonitoringDeviceWithBluetoothUUID:v6];
  }
}

void sub_10002FA9C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 allPairingIDs];
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_1000300E8;
  v60[3] = &unk_1001769F0;
  v8 = v5;
  v61 = v8;
  v62 = *(a1 + 40);
  v9 = [v7 sortedArrayUsingComparator:v60];

  if ([v9 count])
  {
    v42 = v6;
    v43 = a1;
    v40 = v9;
    v41 = v8;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v56 objects:v65 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v57;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v57 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v56 + 1) + 8 * i);
          if (v13)
          {
            v17 = [*(*(&v56 + 1) + 8 * i) UUIDString];
            [v13 appendString:v17];
          }

          else
          {
            v13 = [@"[" mutableCopy];
            v18 = [v16 UUIDString];
            [v13 appendString:v18];

            [v13 appendString:@"]"];
          }

          [v13 appendString:{@", "}];
        }

        v12 = [v10 countByEnumeratingWithState:&v56 objects:v65 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }

    v20 = nr_daemon_log();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

    v8 = v41;
    v22 = v43;
    if (v21)
    {
      v23 = nr_daemon_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v64 = v13;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Device to make active: %{public}@", buf, 0xCu);
      }
    }

    v24 = [v10 firstObject];
    if ([v41 allAltAccount] && !*(v43 + 40))
    {
      v37 = [v41 activeDeviceID];

      v38 = +[NRQueue registryDaemonQueue];
      if (v37)
      {
        v54[0] = _NSConcreteStackBlock;
        v54[1] = 3221225472;
        v54[2] = sub_10003033C;
        v54[3] = &unk_100175D58;
        v55 = *(v43 + 32);
        [v38 dispatchAsync:v54];

        v36 = v55;
      }

      else
      {
        v52[0] = _NSConcreteStackBlock;
        v52[1] = 3221225472;
        v52[2] = sub_100030358;
        v52[3] = &unk_100175D58;
        v53 = *(v43 + 32);
        [v38 dispatchAsync:v52];

        v36 = v53;
      }

      goto LABEL_30;
    }

    v25 = [v41 objectForKeyedSubscript:v24];
    if ([v25 isPaired])
    {
      v26 = [v41 objectForKeyedSubscript:v24];
      v27 = [v26 objectForKeyedSubscript:NRDevicePropertyName];
      v28 = [v27 value];
      if (v28)
      {
        v29 = v28;
        v30 = [v41 activeDeviceID];
        v31 = [v24 isEqual:v30];

        v22 = v43;
        if ((v31 & 1) == 0)
        {
          v32 = [v41 objectForKeyedSubscript:v24];
          v33 = [v32 objectForKeyedSubscript:_NRDevicePropertyBluetoothIdentifier];
          v34 = [v33 value];

          v35 = +[NRQueue registryDaemonQueue];
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 3221225472;
          v48[2] = sub_100030374;
          v48[3] = &unk_100176A18;
          v51 = *(v43 + 32);
          v49 = v24;
          v50 = v34;
          v36 = v34;
          [v35 dispatchAsync:v48];

LABEL_30:
          v6 = v42;

          v9 = v40;
          goto LABEL_31;
        }

LABEL_29:
        v39 = +[NRQueue registryDaemonQueue];
        v46[0] = _NSConcreteStackBlock;
        v46[1] = 3221225472;
        v46[2] = sub_100030390;
        v46[3] = &unk_100175D58;
        v47 = *(v22 + 32);
        [v39 dispatchAsync:v46];

        v36 = v47;
        goto LABEL_30;
      }

      v22 = v43;
    }

    goto LABEL_29;
  }

  v19 = +[NRQueue registryDaemonQueue];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_1000303AC;
  v44[3] = &unk_100175D58;
  v45 = *(a1 + 32);
  [v19 dispatchAsync:v44];

  v13 = v45;
LABEL_31:
}

uint64_t sub_1000300E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  if ([v7 isPaired] && !objc_msgSend(v8, "isPaired"))
  {
    goto LABEL_13;
  }

  if (([v7 isPaired] & 1) == 0 && (objc_msgSend(v8, "isPaired") & 1) != 0 || objc_msgSend(v7, "isAltAccount") && (objc_msgSend(v8, "isAltAccount") & 1) == 0 && !*(a1 + 40))
  {
    goto LABEL_24;
  }

  if (([v7 isAltAccount] & 1) == 0 && objc_msgSend(v8, "isAltAccount") && !*(a1 + 40))
  {
    goto LABEL_13;
  }

  v9 = NRDevicePropertyName;
  v10 = [v7 objectForKeyedSubscript:NRDevicePropertyName];
  v11 = [v10 value];
  if (v11)
  {
    v12 = v11;
    v13 = [v8 objectForKeyedSubscript:v9];
    v14 = [v13 value];

    if (!v14)
    {
LABEL_13:
      v15 = -1;
      goto LABEL_32;
    }
  }

  else
  {
  }

  v16 = [v7 objectForKeyedSubscript:v9];
  v17 = [v16 value];
  if (v17)
  {

    goto LABEL_17;
  }

  v23 = [v8 objectForKeyedSubscript:v9];
  v24 = [v23 value];

  if (v24)
  {
LABEL_24:
    v15 = 1;
    goto LABEL_32;
  }

LABEL_17:
  v18 = NRDevicePropertyLastActiveDate;
  v19 = [v7 objectForKeyedSubscript:NRDevicePropertyLastActiveDate];
  v20 = [v19 value];

  v21 = [v8 objectForKeyedSubscript:v18];
  v22 = [v21 value];

  if (v20 && v22)
  {
    v15 = [v22 compare:v20];
  }

  else if (!v20 || v22)
  {
    if (v20)
    {
      v25 = 1;
    }

    else
    {
      v25 = v22 == 0;
    }

    v15 = !v25;
  }

  else
  {
    v15 = -1;
  }

LABEL_32:
  return v15;
}

void sub_10003045C(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v6 = a2;
  v7 = [*(a1 + 32) lastActivePairingIDThatFailed];
  if (v7)
  {
    v8 = v7;
    v9 = [*(a1 + 32) lastActivePairingIDThatFailed];
    v10 = [v9 isEqual:v6];

    if (v10)
    {

      v6 = 0;
    }
  }

  if (v6 || a4)
  {
    v11 = objc_opt_new();
    v12 = [EPRoutingSlipEntry alloc];
    v13 = [v6 UUIDString];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = @"none";
    }

    v16 = [@"switchToLastActive-" stringByAppendingString:v15];
    v17 = objc_opt_class();
    v28 = @"switchToNRDeviceUUID";
    v18 = [[EPSagaOperandUUID alloc] initWithUUID:v6];
    v29 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v20 = [(EPRoutingSlipEntry *)v12 initWithName:v16 transactionClass:v17 operands:v19];
    [v11 setEntry:v20];

    [v11 setRunningStatusCode:3];
    [v11 setOperationType:@"externalSwitch"];
    [v11 setTargetPairingID:v6];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100030700;
    v25[3] = &unk_100176A68;
    v21 = v6;
    v22 = *(a1 + 32);
    v26 = v21;
    v27 = v22;
    [v11 setDidEnd:v25];
    v23 = [*(*(a1 + 32) + 144) serviceFromClass:objc_opt_class()];
    [v23 addTransaction:v11];
  }

  v24 = *(a1 + 40);
  if (v24)
  {
    (*(v24 + 16))(v24, v6 != 0);
  }
}

void sub_100030700(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (*(a1 + 32) && ([v3 getLastFirstError], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
  }

  [*(a1 + 40) setLastActivePairingIDThatFailed:v5];
}

void sub_100030A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100030A54(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);

    [v3 resume];
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100030CA8;
    v23[3] = &unk_100176950;
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v24 = v6;
    v25 = v7;
    v8 = [v5 countdown:3 toCompletion:v23];
    v9 = *(a1 + 32);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100030CF0;
    v21[3] = &unk_100175D58;
    v10 = v8;
    v22 = v10;
    [v9 purgeDiscoveredDevices:v21];
    v11 = +[NRRepeatingAlertEngine sharedInstance];
    [v11 presentAlertsIfNeeded];

    v12 = *(a1 + 32);
    v13 = *(v12 + 144);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100030D08;
    v19[3] = &unk_100176AB8;
    v19[4] = v12;
    v14 = v10;
    v20 = v14;
    [EPSagaTransactionSetDaemonsEnabled getNormalDaemonValueWith:0 serviceRegistry:v13 forceEnableWhenPairedOrActive:0 completion:v19];
    v15 = *(a1 + 32);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100030DD4;
    v17[3] = &unk_100176AE0;
    v17[4] = v15;
    v18 = v14;
    v16 = v14;
    [v15 grabRegistryWithWriteBlockAsync:v17];
  }
}

void sub_100030CA8(uint64_t a1)
{
  [*(a1 + 32) resume];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_100030D08(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 144);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100030DBC;
  v4[3] = &unk_100175D58;
  v5 = *(a1 + 40);
  [EPSagaTransactionSetDaemonsEnabled enableDaemons:a2 serviceRegistry:v3 completion:v4];
}

uint64_t sub_100030DD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 activeDevice];
  v5 = v4;
  if (v4 && [v4 isPaired])
  {
    v6 = *(a1 + 32);
    v7 = [v3 activeDeviceID];
    [v6 _updateCompatibilityStateForDeviceID:v7 withDeviceCollection:v3];
  }

  (*(*(a1 + 40) + 16))();

  return 0;
}

uint64_t sub_100030FB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableDictionary dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:{v10, v17}];
        if (([v11 isActive] & 1) == 0 && (objc_msgSend(v11, "isPaired") & 1) == 0 && (objc_msgSend(v11, "isArchived") & 1) == 0)
        {
          v12 = [[NRDeviceDiffType alloc] initWithDiff:0 andChangeType:2];
          [v4 setObject:v12 forKeyedSubscript:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v13 = [[NRDeviceCollectionDiff alloc] initWithDeviceCollectionDiffDeviceDiffs:v4];
  v14 = [v5 applyDiff:v13];
  if (*(a1 + 32))
  {
    v15 = +[NRQueue registryDaemonQueue];
    [v15 dispatchAsync:*(a1 + 32)];
  }

  return 0;
}

void sub_100031534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 144), 8);
  _Block_object_dispose((v33 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10003156C(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(a1[4] + 45);
  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 488));
  v2 = a1[4];
  v3 = *(v2 + 488);
  *(v2 + 488) = 0;

  objc_storeStrong((*(a1[7] + 8) + 40), *(a1[4] + 496));
  v4 = a1[4];
  v5 = *(v4 + 496);
  *(v4 + 496) = 0;

  *(a1[4] + 46) = 1;
}

id sub_100031618(uint64_t a1)
{
  [*(a1 + 32) proxyRequestsSuspensionOfCrashMonitoring:*(*(*(a1 + 40) + 8) + 40)];
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000316AC;
  v4[3] = &unk_100175880;
  v4[4] = *(a1 + 48);
  return [v2 xpcSuspendPairingClientCrashMonitoring:v4];
}

void sub_1000316AC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

id sub_1000316C0(uint64_t a1)
{
  [*(a1 + 32) proxyRequestsResumptionOfCrashMonitoring:*(*(*(a1 + 40) + 8) + 40)];
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100031754;
  v4[3] = &unk_100175880;
  v4[4] = *(a1 + 48);
  return [v2 xpcResumePairingClientCrashMonitoring:v4];
}

void sub_100031754(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_10003194C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003196C(uint64_t a1)
{
  if ((*(*(a1 + 32) + 46) & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v2 = *(a1 + 56);
    *(*(a1 + 32) + 45) = v2;
    v3 = nr_daemon_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v2 == 1)
    {
      if (!v4)
      {
        goto LABEL_11;
      }

      v5 = nr_daemon_log();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      v12 = 0;
      v6 = "Caching suspend crash monitoring";
      v7 = &v12;
    }

    else
    {
      if (!v4)
      {
        goto LABEL_11;
      }

      v5 = nr_daemon_log();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
LABEL_10:

LABEL_11:
        objc_storeStrong((*(a1 + 32) + 496), *(a1 + 40));
        if (!*(*(a1 + 32) + 488))
        {
          v8 = [NROSTransaction transactionWithName:@"crashWaitMKB"];
          v9 = *(a1 + 32);
          v10 = *(v9 + 488);
          *(v9 + 488) = v8;
        }

        return;
      }

      v11 = 0;
      v6 = "Caching resume crash monitoring";
      v7 = &v11;
    }

    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    goto LABEL_10;
  }
}

void sub_100031B5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableArray array];
  v16 = [v3 nextIndex];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v3 deviceCollection];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        v11 = [v3 deviceCollection];
        v12 = [v11 objectForKeyedSubscript:v10];

        if (([v12 isActive] & 1) != 0 || (objc_msgSend(v12, "isPaired") & 1) != 0 || objc_msgSend(v12, "isArchived"))
        {
          [v4 addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v13 = [*(*(a1 + 32) + 144) serviceFromClass:objc_opt_class()];
  v14 = +[NRQueue registryDaemonQueue];
  v15 = [v14 queue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100031DB0;
  v17[3] = &unk_100175C68;
  v18 = *(a1 + 40);
  [v13 cleanupPairedStoreWithUUIDs:v4 withIndex:v16 withQueue:v15 withCompletion:v17];
}

uint64_t sub_100031DB0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100032124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100032148(void *a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[NRPairingDaemon debounceOnQueue:block:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Debouncer timed out- calling block", &v9, 0xCu);
    }
  }

  v5 = a1[4];
  v6 = *(v5 + 512);
  *(v5 + 512) = 0;

  (*(a1[5] + 16))();
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_10003248C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000324A8(uint64_t a1)
{
  sleep(1u);
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_1000324F0(uint64_t a1, void *a2)
{
  v3 = a2;
  string = xpc_dictionary_get_string(v3, _xpc_event_key_name);
  if (string)
  {
    v5 = string;
    v6 = strlen(string);
    if (!strncmp("com.apple.purplebuddy.setupexited", v5, v6))
    {
      v17 = nr_daemon_log();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

      if (v18)
      {
        v19 = nr_daemon_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Buddy setup done notification received", buf, 2u);
        }
      }

      if (!CFPreferencesGetAppBooleanValue(@"DisplayGraduationUnpairInstructions", @"com.apple.Bridge", 0))
      {
        [*(a1 + 32) checkForWatchNeedsGraduation:&stru_100176C10];
      }

      *buf = 0;
      v24 = buf;
      v25 = 0x3032000000;
      v26 = sub_100023050;
      v27 = sub_100023060;
      v28 = [NROSTransaction transactionWithName:@"processLaunchEvents"];
      v20 = +[NRQueue registryDaemonQueue];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000328B8;
      v22[3] = &unk_100175880;
      v22[4] = buf;
      [v20 dispatchAfter:v22 withBlock:30.0];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v7 = [MCSettingsChangedNotification UTF8String];
      v8 = strlen(v5);
      if (!strncmp(v7, v5, v8) || (v9 = [MCRestrictionChangedNotification UTF8String], v10 = strlen(v5), !strncmp(v9, v5, v10)) || (v11 = objc_msgSend(MCEffectiveSettingsChangedNotification, "UTF8String"), v12 = strlen(v5), !strncmp(v11, v5, v12)))
      {
        v13 = nr_daemon_log();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

        if (v14)
        {
          v15 = nr_daemon_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received managed configuration change notification", buf, 2u);
          }
        }

        v16 = *(a1 + 32);
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100032914;
        v21[3] = &unk_100176C38;
        v21[4] = v16;
        [v16 grabHistoryWithReadBlock:v21];
      }
    }
  }
}

void sub_100032814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000328B8(uint64_t a1)
{
  v2 = +[NRRepeatingAlertEngine sharedInstance];
  [v2 presentAlertsIfNeeded];

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_100032914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = +[NRQueue registryDaemonQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000329B0;
    v5[3] = &unk_100175660;
    v5[4] = *(a1 + 32);
    [v4 dispatchAsync:v5];
  }
}