@interface CLTileSyncDelegate
- (BOOL)service:(id)a3 startSession:(id)a4 error:(id *)a5;
- (BOOL)syncSession:(id)a3 resetDataStoreWithError:(id *)a4;
- (CLTileSyncDelegate)initWithSyncManager:(void *)a3 silo:(id)a4;
- (unsigned)syncSession:(id)a3 enqueueChanges:(id)a4 error:(id *)a5;
- (void)initialSyncStateObserver:(id)a3 initialSyncDidCompleteForPairingIdentifier:(id)a4;
- (void)initialSyncStateObserver:(id)a3 syncDidCompleteForPairingIdentifier:(id)a4;
- (void)initialSyncStateObserver:(id)a3 syncDidResetForPairingIdentifier:(id)a4;
- (void)initialSyncStateObserverClientCanRetryFailedRequests:(id)a3;
- (void)service:(id)a3 didSwitchFromPairingID:(id)a4 toPairingID:(id)a5;
- (void)service:(id)a3 encounteredError:(id)a4 context:(id)a5;
- (void)service:(id)a3 sessionEnded:(id)a4 error:(id)a5;
- (void)service:(id)a3 willSwitchFromPairingID:(id)a4 toPairingID:(id)a5;
- (void)serviceDidPairDevice:(id)a3;
- (void)serviceDidUnpairDevice:(id)a3;
- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4;
- (void)syncCoordinator:(id)a3 didInvalidateSyncSession:(id)a4;
- (void)syncCoordinatorDidChangeSyncRestriction:(id)a3;
- (void)syncSession:(id)a3 applyChanges:(id)a4 completion:(id)a5;
- (void)syncSession:(id)a3 didEndWithError:(id)a4;
@end

@implementation CLTileSyncDelegate

- (CLTileSyncDelegate)initWithSyncManager:(void *)a3 silo:(id)a4
{
  v7.receiver = self;
  v7.super_class = CLTileSyncDelegate;
  result = [(CLTileSyncDelegate *)&v7 init];
  if (result)
  {
    result->fManager = a3;
    result->fSilo = a4;
    result->fPsSession = 0;
  }

  return result;
}

- (BOOL)service:(id)a3 startSession:(id)a4 error:(id *)a5
{
  v7 = sub_100465BE8(self->fManager, [a4 sessionMetadata]);
  v8 = *(self->fManager + 160);
  if (v8 == 82 || v8 == 73)
  {
    v10 = 120.0;
  }

  else
  {
    v10 = 900.0;
  }

  [a4 setMaxConcurrentMessages:1];
  [a4 setDelegate:self];
  [a4 setSerializer:objc_alloc_init(CLTileSyncSySerializer)];
  [a4 setTargetQueue:{-[CLSilo queue](self->fSilo, "queue")}];
  [a4 setSessionMetadata:v7];
  [a4 setPerMessageTimeout:450.0];
  [a4 setFullSessionTimeout:v10];
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v11 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134349056;
    v14 = v10;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "@GtsFlow, CS, startSession, 2, timeout, %{public}.0f", &v13, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018871D8(v10);
  }

  return 1;
}

- (void)service:(id)a3 sessionEnded:(id)a4 error:(id)a5
{
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v5 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "@GtsFlow, CS, endSession, 6", v6, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018873B8();
  }
}

- (void)serviceDidPairDevice:(id)a3
{
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v4 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    v5 = *(self->fManager + 160);
    v6[0] = 67240192;
    v6[1] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "@GtsSync, CsService, serviceDidPairDevice, state, %{public}c", v6, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101887494(self);
  }
}

- (void)serviceDidUnpairDevice:(id)a3
{
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v4 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    v5 = *(self->fManager + 160);
    v6[0] = 67240192;
    v6[1] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "@GtsSync, CsService, serviceDidUnpairDevice, state, %{public}c", v6, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101887584(self);
  }
}

- (void)service:(id)a3 encounteredError:(id)a4 context:(id)a5
{
  v7 = [objc_msgSend(a4 userInfo];
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v8 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    v9 = 136446466;
    v10 = [objc_msgSend(a4 "localizedDescription")];
    v11 = 2082;
    v12 = [objc_msgSend(v7 "localizedDescription")];
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "@GtsSync, CsError, 2, service, %{public}s, underlying, %{public}s", &v9, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101887674();
  }

  sub_1004660C0(self->fManager);
}

- (unsigned)syncSession:(id)a3 enqueueChanges:(id)a4 error:(id *)a5
{
  v7 = sub_1004662F8(self->fManager, [a3 sessionMetadata]);
  if (v7 & 1) == 0 || ((*(a4 + 2))(a4, *(self->fManager + 3)))
  {
    goto LABEL_8;
  }

  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v8 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "@GtsSync, CsSession, enqueue failed", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101887864();
    if ((v7 & 0x100) == 0)
    {
      return 1;
    }
  }

  else
  {
LABEL_8:
    if ((v7 & 0x100) == 0)
    {
      return 1;
    }
  }

  if (qword_1025D4630 != -1)
  {
    sub_101887948();
  }

  v10 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "@GtsFlow, CS, enqueueComplete, 4", v12, 2u);
  }

  v9 = 2;
  if (sub_10000A100(121, 2))
  {
    sub_101887970();
  }

  return v9;
}

- (void)syncSession:(id)a3 applyChanges:(id)a4 completion:(id)a5
{
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v8 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    v11 = 134349056;
    v12 = [a4 count];
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "@GtsSync, CsSession, applyChanges, %{public}lu\n", &v11, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101887A54();
  }

  if ([a4 count] >= 2)
  {
    if (qword_1025D4630 != -1)
    {
      sub_101887948();
    }

    v9 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_ERROR))
    {
      v10 = [a4 count];
      v11 = 134349056;
      v12 = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "@GtsSync, CsSession, More than 1 incoming change, %{public}lu, #CloneMe", &v11, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101887B44();
    }
  }

  sub_100466570(self->fManager, [a4 objectAtIndexedSubscript:0]);
  (*(a5 + 2))(a5, 1, 0);
}

- (void)syncSession:(id)a3 didEndWithError:(id)a4
{
  v6 = [objc_msgSend(a4 userInfo];
  if (a4)
  {
    v7 = v6;
    if (qword_1025D4630 != -1)
    {
      sub_101886EF8();
    }

    v8 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
    {
      v12 = 136446466;
      *v13 = [objc_msgSend(a4 "localizedDescription")];
      *&v13[8] = 2082;
      v14 = [objc_msgSend(v7 "localizedDescription")];
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "@GtsSync, CsError, 0, didEndWithError, %{public}s, underlying, %{public}s", &v12, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101887F24();
    }
  }

  v9 = sub_100466B38(self->fManager, a4 != 0);
  if (qword_1025D4630 != -1)
  {
    sub_101887948();
  }

  v10 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 67240448;
    *v13 = a4 != 0;
    *&v13[4] = 1026;
    *&v13[6] = v9;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "@GtsFlow, CS, sessionDidEnd, 5, error, %{public}d, synctrap, %{public}d", &v12, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101888028((a4 != 0), v9);
    if (!v9)
    {
      return;
    }
  }

  else if (!v9)
  {
    return;
  }

  if (qword_1025D4630 != -1)
  {
    sub_101887948();
  }

  v11 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "@GtsFlow, PS, syncDidCompleteTx, 2", &v12, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10188812C();
  }

  [(PSYServiceSyncSession *)self->fPsSession syncDidComplete];
}

- (BOOL)syncSession:(id)a3 resetDataStoreWithError:(id *)a4
{
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v4 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "@GtsSync, CsSession, resetDataStoreWithError", v6, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101888208();
  }

  return 1;
}

- (void)service:(id)a3 willSwitchFromPairingID:(id)a4 toPairingID:(id)a5
{
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v8 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    v9 = 136446466;
    v10 = [objc_msgSend(a4 "UUIDString")];
    v11 = 2082;
    v12 = [objc_msgSend(a5 "UUIDString")];
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "@GtsSync, CsService, willSwitchPairing, old, %{public}s, new, %{public}s", &v9, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018882E4();
  }

  sub_100467074(self->fManager, a5);
}

- (void)service:(id)a3 didSwitchFromPairingID:(id)a4 toPairingID:(id)a5
{
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v8 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    v9 = 136446466;
    v10 = [objc_msgSend(a4 "UUIDString")];
    v11 = 2082;
    v12 = [objc_msgSend(a5 "UUIDString")];
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "@GtsSync, CsService, didSwitchPairing, old, %{public}s, new, %{public}s", &v9, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10188852C();
  }

  sub_1004672D8(self->fManager, a4 == 0, a5 == 0);
}

- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4
{
  v7 = a4;

  self->fPsSession = a4;
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v8 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v12 = [objc_msgSend(a3 "activeSyncSession")];
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "@GtsSync, PsCoord, beginSyncSession, %{public}lu", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101888630();
  }

  fSilo = self->fSilo;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100467718;
  v10[3] = &unk_1024473F0;
  v10[4] = a3;
  v10[5] = self;
  [(CLSilo *)fSilo sync:v10];
}

- (void)syncCoordinator:(id)a3 didInvalidateSyncSession:(id)a4
{
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v6 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    v9 = 67240192;
    v10 = [a4 syncSessionType];
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "@GtsSync, PsCoord, didInvalidateSyncSession, %{public}d", &v9, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101888AEC(a4);
  }

  if (qword_1025D4630 != -1)
  {
    sub_101887948();
  }

  v7 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [a3 syncRestriction];
    v9 = 67240192;
    v10 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "@GtsFlow, PS, didInvalidateSession, 3, restriction, %{public}d", &v9, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101888BE4(a3);
  }
}

- (void)syncCoordinatorDidChangeSyncRestriction:(id)a3
{
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v5 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    *buf = 67240192;
    v9 = [a3 syncRestriction];
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "@GtsSync, PsCoord, syncCoordinatorDidChangeSyncRestriction, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101888CDC(a3);
  }

  fSilo = self->fSilo;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1004680B0;
  v7[3] = &unk_1024473F0;
  v7[4] = a3;
  v7[5] = self;
  [(CLSilo *)fSilo sync:v7];
}

- (void)initialSyncStateObserver:(id)a3 initialSyncDidCompleteForPairingIdentifier:(id)a4
{
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v4 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "@GtsSync, PsObserver, initialSyncDidCompleteForPairingID", v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10188907C();
  }
}

- (void)initialSyncStateObserver:(id)a3 syncDidCompleteForPairingIdentifier:(id)a4
{
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v5 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "@GtsSync, PsObserver, syncDidCompleteForPairingID", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101889158();
  }

  if (qword_1025D4630 != -1)
  {
    sub_101887948();
  }

  v6 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "@GtsFlow, PS, syncDidCompleteRx, 4", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101889234();
  }

  fSilo = self->fSilo;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1004686DC;
  v8[3] = &unk_102447418;
  v8[4] = self;
  [(CLSilo *)fSilo sync:v8];
}

- (void)initialSyncStateObserver:(id)a3 syncDidResetForPairingIdentifier:(id)a4
{
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v4 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "@GtsSync, PsObserver, syncDidResetForPairingID", v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018893FC();
  }
}

- (void)initialSyncStateObserverClientCanRetryFailedRequests:(id)a3
{
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v3 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "@GtsSync, PsObserver, initialSyncStateObserverClientCanRetryFailedRequests", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018894D8();
  }
}

@end