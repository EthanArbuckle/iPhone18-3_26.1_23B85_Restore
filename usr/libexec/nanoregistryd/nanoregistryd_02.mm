void sub_100065364(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 112));
  _Unwind_Resume(a1);
}

void sub_1000653CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 cbUUID];
    *buf = 138412546;
    v47 = v3;
    v48 = 2112;
    v49 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Candidate discovered: %@ (bluetooth UUID %@)", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [v3 identifier];
    if (!v7)
    {
LABEL_38:

      v6 = WeakRetained;
      goto LABEL_39;
    }

    v34 = [WeakRetained[9] objectForKeyedSubscript:v7];
    if (v34)
    {
      v8 = [v34 cbUUID];
      v9 = [v3 cbUUID];
      v10 = [v8 isEqual:v9];

      if (v10)
      {
        v11 = networkrelay_pairing_log_handle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v47 = v34;
          v48 = 2112;
          v49 = v3;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Duplicate candidate discovered with identical bluetooth UUID:- previous %@, new %@", buf, 0x16u);
        }

LABEL_12:

        goto LABEL_13;
      }

      v12 = [v34 cbUUID];
      v13 = [v3 cbUUID];
      v14 = [v12 isEqual:v13];

      if ((v14 & 1) == 0)
      {
        v11 = networkrelay_pairing_log_handle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v34 cbUUID];
          v16 = [v3 cbUUID];
          *buf = 138413058;
          v47 = v34;
          v48 = 2112;
          v49 = v15;
          v50 = 2112;
          v51 = v3;
          v52 = 2112;
          v53 = v16;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Duplicate candidate discovered with different bluetooth UUID:- previous %@ (%@), new %@ (%@)", buf, 0x2Au);
        }

        goto LABEL_12;
      }
    }

LABEL_13:
    [WeakRetained[9] setObject:v3 forKeyedSubscript:{v7, v34}];
    v17 = networkrelay_pairing_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = WeakRetained[9];
      *buf = 138412290;
      v47 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "_identifierCandidateMap: %@", buf, 0xCu);
    }

    v19 = WeakRetained;
    if (*(WeakRetained + 113) == 1)
    {
      if ([WeakRetained[10] containsObject:v7])
      {
        v20 = networkrelay_pairing_log_handle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v47 = 1;
          v48 = 2112;
          v49 = v3;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[Push-New] Not calling requestAuthMethodForDevice with method %lu on an already requested candidate %@", buf, 0x16u);
        }
      }

      else
      {
        [WeakRetained[10] addObject:v7];
        v21 = networkrelay_pairing_log_handle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v47 = v3;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[Push-New] Pushing a newly discovered candidate %@", buf, 0xCu);
        }

        v22 = WeakRetained[13];
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_1000659F8;
        v41[3] = &unk_100175FF0;
        v42 = v3;
        objc_copyWeak(&v44, (a1 + 32));
        v43 = v7;
        [v22 requestAuthMethodForDevice:v42 authMethod:1 withCompletion:v41];

        objc_destroyWeak(&v44);
        v20 = v42;
      }

      v19 = WeakRetained;
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v23 = v19[19];
    v24 = [v23 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v24)
    {
      v25 = *v38;
      do
      {
        v26 = 0;
        do
        {
          if (*v38 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v37 + 1) + 8 * v26);
          if (objc_opt_respondsToSelector())
          {
            v28 = [v3 cbUUID];
            v29 = [v3 metadata];
            [v27 discoveredCandidateIdentifier:v7 bluetoothIdentifier:v28 metadata:v29];
          }

          v26 = v26 + 1;
        }

        while (v24 != v26);
        v24 = [v23 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v24);
    }

    v30 = WeakRetained[15];
    if (v30)
    {
      v31 = [v3 identifier];
      v32 = [v30 isEqual:v31];

      if (v32)
      {
        v33 = networkrelay_pairing_log_handle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Newly discovered candidate identifier matches with pending candidate, pairing now", buf, 2u);
        }

        [WeakRetained _pairWithCandidate:v3 withPreSharedAuthData:WeakRetained[16] isAltAccountPairing:*(WeakRetained + 144)];
      }
    }

    goto LABEL_38;
  }

LABEL_39:
}

void sub_1000659F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Push-New] requestAuthMethodForDevice on %{public}@ completed with error = %{public}@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [*(WeakRetained + 10) removeObject:*(a1 + 40)];
    if ([*(a1 + 40) isEqual:v7[17]])
    {
      v8 = networkrelay_pairing_log_handle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Push-New] recently pushed candidate has PIN request pending", buf, 2u);
      }

      v9 = v7[1];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100065BA0;
      v10[3] = &unk_100175598;
      v10[4] = v7;
      v11 = *(a1 + 40);
      dispatch_async(v9, v10);
    }
  }
}

void sub_100065BAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 cbUUID];
    *buf = 138412546;
    v30 = v3;
    v31 = 2112;
    v32 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Candidate lost: %@ (bluetooth UUID %@)", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = [v3 identifier];
    if (!v7)
    {
LABEL_27:

      goto LABEL_28;
    }

    v8 = [WeakRetained[9] objectForKeyedSubscript:v7];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 isEqual:v3];
      v11 = networkrelay_pairing_log_handle();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        if (v12)
        {
          *buf = 138412290;
          v30 = v3;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Removing lost candidate %@ from identifier/candidate map", buf, 0xCu);
        }

        [WeakRetained[9] setObject:0 forKeyedSubscript:v7];
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v11 = WeakRetained[19];
        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v13)
        {
          v14 = v13;
          v23 = v9;
          v15 = *v25;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v25 != v15)
              {
                objc_enumerationMutation(v11);
              }

              v17 = *(*(&v24 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                [v17 lostCandidateWithIdentifier:v7];
              }
            }

            v14 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
          }

          while (v14);
          v9 = v23;
        }

        goto LABEL_24;
      }

      if (v12)
      {
        *buf = 138412546;
        v30 = v3;
        v31 = 2112;
        v32 = v9;
        v18 = "Recently lost candidate %@ is not equal to the one in identifier/candidate map %@";
        v19 = v11;
        v20 = 22;
        goto LABEL_23;
      }
    }

    else
    {
      v11 = networkrelay_pairing_log_handle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v3;
        v18 = "Recently lost candidate %@ is not in identifier/candidate map";
        v19 = v11;
        v20 = 12;
LABEL_23:
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
      }
    }

LABEL_24:

    v21 = networkrelay_pairing_log_handle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = WeakRetained[9];
      *buf = 138412290;
      v30 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "_identifierCandidateMap: %@", buf, 0xCu);
    }

    goto LABEL_27;
  }

LABEL_28:
}

void sub_100065EFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Scanning manager invalidated with %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained && WeakRetained[13])
  {
    v7 = networkrelay_pairing_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Niling pairing manager after external invalidation", buf, 2u);
    }

    v8 = *(v6 + 13);
    *(v6 + 13) = 0;

    if ((*(v6 + 114) & 1) == 0)
    {
      if (*(v6 + 112) == 1)
      {
        v9 = networkrelay_pairing_log_handle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Restart scanning after previous pairing manager went away", buf, 2u);
        }

        *(v6 + 112) = 0;
        [*(v6 + 9) removeAllObjects];
        [*(v6 + 4) removeAllObjects];
        v10 = *(v6 + 1);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100066184;
        block[3] = &unk_100175660;
        block[4] = v6;
        dispatch_async(v10, block);
      }

      if (*(v6 + 113) == 1)
      {
        v11 = networkrelay_pairing_log_handle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Restart pushing candidates after previous pairing manager went away", buf, 2u);
        }

        *(v6 + 113) = 0;
        v12 = *(v6 + 1);
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_10006618C;
        v13[3] = &unk_100175660;
        v13[4] = v6;
        dispatch_async(v12, v13);
      }
    }
  }
}

void sub_100066194(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = networkrelay_pairing_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to activate NRDevicePairingManager with error %{public}@", &v6, 0xCu);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained _startScanningForCandidates];
    }
  }
}

void sub_10006627C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = networkrelay_pairing_log_handle();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v2;
      v5 = "Start discovery failed with error %{public}@";
      v6 = v4;
      v7 = OS_LOG_TYPE_ERROR;
      v8 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, v7, v5, &v9, v8);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    v5 = "Discovery started";
    v6 = v4;
    v7 = OS_LOG_TYPE_DEFAULT;
    v8 = 2;
    goto LABEL_6;
  }
}

void sub_100066568(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 113))
  {
    v2 = networkrelay_pairing_log_handle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Already pushing candidates, no-op.", buf, 2u);
    }
  }

  else
  {
    *(v1 + 113) = 1;
    [*(a1 + 32) stopScanningForMigrationCandidates];
    [*(a1 + 32) resetMigrationPairingManager];
    v4 = networkrelay_pairing_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(*(a1 + 32) + 72);
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 72);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000666DC;
    v8[3] = &unk_100177D18;
    v8[4] = v6;
    v8[5] = 1;
    [v7 enumerateKeysAndObjectsUsingBlock:v8];
  }
}

void sub_1000666DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 80) containsObject:v5];
  v8 = [*(*(a1 + 32) + 88) containsObject:v5];
  v9 = v8;
  if (v7 & 1) != 0 || (v8)
  {
    v16 = networkrelay_pairing_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 40);
      *buf = 134218754;
      v23 = v17;
      v24 = 2112;
      v25 = v6;
      v26 = 1024;
      v27 = v7;
      v28 = 1024;
      v29 = v9;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[Push] Not calling requestAuthMethodForDevice with method %lu for candidate %@ (pending %{BOOL}d, presharedRequested %{BOOL}d)", buf, 0x22u);
    }
  }

  else
  {
    [*(*(a1 + 32) + 80) addObject:v5];
    [*(*(a1 + 32) + 88) addObject:v5];
    v10 = networkrelay_pairing_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      *buf = 134218242;
      v23 = v11;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[Push] Calling requestAuthMethodForDevice with method %lu on %@", buf, 0x16u);
    }

    v12 = *(a1 + 40);
    v13 = *(*(a1 + 32) + 104);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100066908;
    v18[3] = &unk_100177CF0;
    v14 = v6;
    v15 = *(a1 + 32);
    v19 = v14;
    v20 = v15;
    v21 = v5;
    [v13 requestAuthMethodForDevice:v14 authMethod:v12 withCompletion:v18];

    v16 = v19;
  }
}

void sub_100066908(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Push] requestAuthMethodForDevice on %{public}@ completed with error = %{public}@", buf, 0x16u);
  }

  [*(*(a1 + 40) + 80) removeObject:*(a1 + 48)];
  if ([*(a1 + 48) isEqual:*(*(a1 + 40) + 136)])
  {
    v6 = networkrelay_pairing_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Push] recently pushed candidate has PIN request pending", buf, 2u);
    }

    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = *(v8 + 8);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100066A9C;
    v10[3] = &unk_100175598;
    v10[4] = v8;
    v11 = v7;
    dispatch_async(v9, v10);
  }
}

void sub_100066BA8(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (*(v3 + 113) == 1)
  {
    *(v3 + 113) = 0;
  }

  else
  {
    v6 = v1;
    v7 = v2;
    v4 = networkrelay_pairing_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Not currently pushing candidates, no-op.", v5, 2u);
    }
  }
}

void sub_100066D80(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  *(v2 + 120) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 128);
  *(v4 + 128) = 0;

  v6 = *(a1 + 32);
  if ((*(v6 + 112) & 1) == 0)
  {
    [v6 startScanningForCandidates];
    v6 = *(a1 + 32);
  }

  if ((*(v6 + 114) & 1) == 0)
  {
    *(v6 + 114) = 1;
    v6 = *(a1 + 32);
  }

  v7 = [*(v6 + 72) objectForKeyedSubscript:*(a1 + 40)];
  if (v7)
  {
    [*(a1 + 32) _pairWithCandidate:v7 withPreSharedAuthData:*(a1 + 48) isAltAccountPairing:*(a1 + 56)];
  }

  else
  {
    v8 = networkrelay_pairing_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Did not find a candidate for pairing using pre-shared auth data with with identifier = %{public}@, marked as pending.", &v10, 0xCu);
    }

    objc_storeStrong((*(a1 + 32) + 120), *(a1 + 40));
    objc_storeStrong((*(a1 + 32) + 128), *(a1 + 48));
    *(*(a1 + 32) + 144) = *(a1 + 56);
  }
}

void sub_100067180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100067198(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:NRDevicePairingErrorOriginalNRUUIDKey];

  v5 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NetworkRelay reported ghost NetworkRelay device with identifier %@, unpairing", buf, 0xCu);
  }

  v6 = [[NRDeviceIdentifier alloc] initWithUUID:v4];
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 8);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100067340;
  v11[3] = &unk_100177D40;
  v12 = v6;
  v13 = v8;
  v14 = v7;
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v10 = v6;
  [NRDevicePairingManager unpairDevice:v10 queue:v9 withCompletion:v11];
}

void sub_100067340(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) nrDeviceIdentifier];
    v6 = [v5 UUIDString];
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unpairing ghost NetworkRelay device with Network Relay Identifier %{public}@ completed with error %{public}@", &v9, 0x16u);
  }

  v7 = networkrelay_pairing_log_handle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v8)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Not retry pairing since unpairing ghost NetworkRelay device failed", &v9, 2u);
    }

    [*(a1 + 40) _networkRelayAgentPairingCompletedWithIdentifier:0 error:v3];
  }

  else
  {
    if (v8)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Retry pairing after unpaired ghost NetworkRelay device", &v9, 2u);
    }

    [*(a1 + 40) _pairWithCandidate:*(a1 + 48) withPreSharedAuthData:*(a1 + 56) isAltAccountPairing:*(a1 + 64)];
  }
}

void sub_1000674CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) identifier];
    v6 = *(a1 + 32);
    v11 = 138543874;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Pairing using pre-shared auth data with candidate with identifier = %{public}@ (%{public}@) started with error %{public}@", &v11, 0x20u);
  }

  v7 = +[NSDate date];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (v3)
  {
    v10 = *(a1 + 40);
    if ([objc_opt_class() _shouldSilentlyRetryNetworkRelayPairingForError:v3])
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      [*(a1 + 40) _networkRelayAgentPairingCompletedWithIdentifier:0 error:v3];
    }
  }
}

void sub_100067614(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412546;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "startPairingDevice result:- error %@, device %@", &v18, 0x16u);
  }

  v8 = +[NSDate date];
  if (v5)
  {
    v9 = *(a1 + 32);
    if ([objc_opt_class() _shouldSilentlyRetryNetworkRelayPairingForError:v5])
    {
      (*(*(a1 + 40) + 16))();
      v10 = [v5 userInfo];
      v11 = [v10 objectForKeyedSubscript:NRDevicePairingErrorOriginalCBUUIDKey];

      if (v11)
      {
        v12 = [NSSet setWithObject:v11];
        [*(a1 + 32) _notifyDelegatesOfPreviouslyPairedBluetoothIdentifiers:v12];
      }

      v13 = 0;
      v14 = 1;
    }

    else
    {
      *(*(a1 + 32) + 114) = 0;
      [*(a1 + 32) invalidatePairingManagerIfIdle];
      v14 = 0;
      v13 = 0;
    }
  }

  else
  {
    v15 = [v6 device];
    v16 = [v15 candidate];
    v13 = [v16 cbUUID];

    v14 = 0;
  }

  v17 = *(a1 + 56);
  [v8 timeIntervalSinceDate:*(*(*(a1 + 48) + 8) + 40)];
  [NRCoreAnalyticsReporter reportNetworkRelayPairingResultWithAuthMethod:v17 resultError:v5 timeElapsed:?];
  if ((v14 & 1) == 0)
  {
    [*(a1 + 32) _networkRelayAgentPairingCompletedWithIdentifier:v13 error:v5];
  }
}

void sub_1000678D0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) containsObject:*(a1 + 40)];
  v3 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = 138543618;
    v6 = v4;
    v7 = 1024;
    v8 = v2 ^ 1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Candidate with identifier %{public}@ is ready to accept PIN request (no auth request pending): %{BOOL}d", &v5, 0x12u);
  }

  if (v2)
  {
    objc_storeStrong((*(a1 + 32) + 136), *(a1 + 40));
  }

  else
  {
    [*(a1 + 32) _requestPINPairingForCandidateWithIdentifier:*(a1 + 40)];
  }
}

void sub_100067BF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[PIN] requestAuthMethodForDevice completed with error = %{public}@", &v7, 0xCu);
  }

  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 96);
    *(v5 + 96) = 0;

    [*(a1 + 32) _networkRelayAgentPairingCompletedWithIdentifier:0 error:v3];
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 96), *(a1 + 40));
  }
}

void sub_100067E38(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 114) & 1) == 0)
  {
    *(v2 + 114) = 1;
    v2 = *(a1 + 32);
  }

  v3 = *(v2 + 72);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100067EF0;
  v6[3] = &unk_100177E30;
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6[4] = v2;
  v8 = v4;
  v7 = v5;
  v9 = *(a1 + 56);
  [v3 enumerateKeysAndObjectsUsingBlock:v6];
}

void sub_100067EF0(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v8 identifier];
  v10 = [v9 isEqual:*(*(a1 + 32) + 96)];

  if (v10)
  {
    v11 = objc_alloc_init(NRDevicePairingTarget);
    [v11 setCandidate:v8];
    [v11 setAuthMethod:*(a1 + 48)];
    [v11 setAuthData:*(a1 + 40)];
    if (*(a1 + 56) == 1)
    {
      v12 = objc_alloc_init(NRDevicePairingProperties);
      [v12 setIsAltAccountPairing:1];
      [v11 setProperties:v12];
    }

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100068234;
    v28[3] = &unk_100177DE0;
    v13 = *(a1 + 40);
    v28[4] = *(a1 + 32);
    v29 = v13;
    v30 = *(a1 + 56);
    v14 = objc_retainBlock(v28);
    v15 = networkrelay_pairing_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v11;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Calling startPairingDevice with pairing target %@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v32 = 0x3032000000;
    v33 = sub_100064584;
    v34 = sub_100064594;
    v35 = 0;
    v16 = *(a1 + 32);
    v17 = *(v16 + 104);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100068550;
    v24[3] = &unk_100177E08;
    v24[4] = v16;
    v25 = v8;
    p_buf = &buf;
    v26 = v14;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100068688;
    v20[3] = &unk_100177DB8;
    v20[4] = *(a1 + 32);
    v18 = v26;
    v19 = *(a1 + 48);
    v22 = &buf;
    v23 = v19;
    v21 = v18;
    [v17 startPairingDevice:v11 withCompletion:v24 resultBlock:v20];
    *a4 = 1;

    _Block_object_dispose(&buf, 8);
  }
}

void sub_100068234(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:NRDevicePairingErrorOriginalNRUUIDKey];

  v5 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NetworkRelay reported ghost NetworkRelay device with identifier %@, unpairing", buf, 0xCu);
  }

  v6 = [[NRDeviceIdentifier alloc] initWithUUID:v4];
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 8);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000683C8;
  v11[3] = &unk_100177D68;
  v12 = v6;
  v13 = v8;
  v14 = v7;
  v15 = *(a1 + 48);
  v10 = v6;
  [NRDevicePairingManager unpairDevice:v10 queue:v9 withCompletion:v11];
}

void sub_1000683C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) nrDeviceIdentifier];
    v6 = [v5 UUIDString];
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unpairing ghost NetworkRelay device with Network Relay Identifier %{public}@ completed with error %{public}@", &v9, 0x16u);
  }

  v7 = networkrelay_pairing_log_handle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v8)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Not retry pairing since unpairing ghost NetworkRelay device failed", &v9, 2u);
    }

    [*(a1 + 40) _networkRelayAgentPairingCompletedWithIdentifier:0 error:v3];
  }

  else
  {
    if (v8)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Retry pairing after unpaired ghost NetworkRelay device", &v9, 2u);
    }

    [*(a1 + 40) passPINAuthDataToPairingCandidate:*(a1 + 48) isAltAccountPairing:*(a1 + 56)];
  }
}

void sub_100068550(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 96);
    v11 = 138543874;
    v12 = v6;
    v13 = 2114;
    v14 = v5;
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Pairing using PIN auth data with candidate with identifier = %{public}@ (%{public}@) started with error %{public}@", &v11, 0x20u);
  }

  v7 = +[NSDate date];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (v3)
  {
    v10 = *(a1 + 32);
    if ([objc_opt_class() _shouldSilentlyRetryNetworkRelayPairingForError:v3])
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      [*(a1 + 32) _networkRelayAgentPairingCompletedWithIdentifier:0 error:v3];
    }
  }
}

void sub_100068688(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412546;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "startPairingDevice result:- error %@, device %@", &v18, 0x16u);
  }

  v8 = +[NSDate date];
  if (v5)
  {
    v9 = *(a1 + 32);
    if ([objc_opt_class() _shouldSilentlyRetryNetworkRelayPairingForError:v5])
    {
      (*(*(a1 + 40) + 16))();
      v10 = [v5 userInfo];
      v11 = [v10 objectForKeyedSubscript:NRDevicePairingErrorOriginalCBUUIDKey];

      if (v11)
      {
        v12 = [NSSet setWithObject:v11];
        [*(a1 + 32) _notifyDelegatesOfPreviouslyPairedBluetoothIdentifiers:v12];
      }

      v13 = 0;
      v14 = 1;
    }

    else
    {
      *(*(a1 + 32) + 114) = 0;
      [*(a1 + 32) invalidatePairingManagerIfIdle];
      v14 = 0;
      v13 = 0;
    }
  }

  else
  {
    v15 = [v6 device];
    v16 = [v15 candidate];
    v13 = [v16 cbUUID];

    v14 = 0;
  }

  v17 = *(a1 + 56);
  [v8 timeIntervalSinceDate:*(*(*(a1 + 48) + 8) + 40)];
  [NRCoreAnalyticsReporter reportNetworkRelayPairingResultWithAuthMethod:v17 resultError:v5 timeElapsed:?];
  if ((v14 & 1) == 0)
  {
    [*(a1 + 32) _networkRelayAgentPairingCompletedWithIdentifier:v13 error:v5];
  }
}

void sub_10006927C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 128));
  _Unwind_Resume(a1);
}

void sub_1000692D4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = networkrelay_pairing_log_handle();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v2;
      v5 = "Start migration discovery failed with error %{public}@";
      v6 = v4;
      v7 = OS_LOG_TYPE_ERROR;
      v8 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, v7, v5, &v9, v8);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    v5 = "Migration discovery started";
    v6 = v4;
    v7 = OS_LOG_TYPE_DEFAULT;
    v8 = 2;
    goto LABEL_6;
  }
}

void sub_1000693B8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[NRDeviceIdentifier alloc] initWithUUID:v3];

  [v2 addObject:v4];
}

void sub_100069430(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 nrDeviceIdentifier];
    v6 = [v5 nrDeviceIdentifier];
    v7 = [v6 UUIDString];
    v8 = [v3 cbUUID];
    v9 = [v8 UUIDString];
    *buf = 138412802;
    v25 = v3;
    v26 = 2112;
    v27 = v7;
    v28 = 2112;
    v29 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Migration candidate discovered: %@ (NetworkRelay UUID %@, Bluetooth UUID %@)", buf, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = [v3 nrDeviceIdentifier];
    v12 = [v11 nrDeviceIdentifier];

    if (v12)
    {
      [WeakRetained[8] setObject:v3 forKey:v12];
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v13 = WeakRetained[19];
      v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v20;
        do
        {
          v17 = 0;
          do
          {
            if (*v20 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v19 + 1) + 8 * v17);
            if (objc_opt_respondsToSelector())
            {
              [v18 discoveredMigrationCandidateWithNetworkRelayIdentifier:{v12, v19}];
            }

            v17 = v17 + 1;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v15);
      }
    }
  }
}

void sub_100069668(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 cbUUID];
    v6 = [v5 UUIDString];
    *buf = 138412546;
    v25 = v3;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Migration candidate lost: %@ (CBUUID %@)", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = [v3 cbUUID];
    if (v8)
    {
      v18 = v8;
      v9 = *(WeakRetained + 8);
      v10 = [v3 cbUUID];
      [v9 removeObjectForKey:v10];

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v11 = *(WeakRetained + 19);
      v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v20;
        do
        {
          v15 = 0;
          do
          {
            if (*v20 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v19 + 1) + 8 * v15);
            if (objc_opt_respondsToSelector())
            {
              v17 = [v3 cbUUID];
              [v16 lostMigrationCandidateWithBluetoothIdentifier:v17];
            }

            v15 = v15 + 1;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v13);
      }

      v8 = v18;
    }
  }
}

void sub_100069880(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Scanning manager for migration invalidated with %@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained resetMigrationPairingManager];
  }
}

void sub_100069954(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = networkrelay_pairing_log_handle();
    v6 = v5;
    if (v3)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v14 = v3;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to activate NRDevicePairingManager for migration with error %{public}@", buf, 0xCu);
      }

      [WeakRetained resetMigrationPairingManager];
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Activated NRDevicePairingManager for migration without any error", buf, 2u);
      }

      v7 = [*(*(a1 + 32) + 40) copy];
      v8 = WeakRetained[6];
      WeakRetained[6] = v7;

      v9 = networkrelay_pairing_log_handle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Starting migration discovery (new manager)", buf, 2u);
      }

      v10 = WeakRetained[7];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100069B58;
      v11[3] = &unk_100177CA8;
      objc_copyWeak(&v12, (a1 + 40));
      [v10 startDiscoveryWithCompletion:v11];
      objc_destroyWeak(&v12);
    }
  }
}

void sub_100069B58(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = networkrelay_pairing_log_handle();
    v6 = v5;
    if (v3)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = 138543362;
        v8 = v3;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Start migration discovery failed with error %{public}@", &v7, 0xCu);
      }

      [WeakRetained resetMigrationPairingManager];
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v7) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Migration discovery started", &v7, 2u);
      }
    }
  }
}

void sub_10006A130(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Auth method request from migration candidate with NetworkRelay identifier: %@ completed with error %@", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

void sub_10006A5D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, char a23)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v23 + 40));
  _Block_object_dispose(&a23, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10006A60C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "startPairingDevice completed with error %@", &v10, 0xCu);
  }

  v5 = +[NSDate date];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      [WeakRetained _networkRelayAgentPairingCompletedWithIdentifier:0 error:v3];
    }

    else
    {
      WeakRetained[114] = 1;
    }
  }
}

void sub_10006A71C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "startPairingDevice result:- error %@, device %@", &v15, 0x16u);
  }

  v8 = +[NSDate date];
  if (v5)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v6 device];
    v11 = [v10 candidate];
    v9 = [v11 cbUUID];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _networkRelayAgentPairingCompletedWithIdentifier:v9 error:v5];
  }

  v14 = *(a1 + 48);
  [v8 timeIntervalSinceDate:*(*(*(a1 + 32) + 8) + 40)];
  [NRCoreAnalyticsReporter reportNetworkRelayPairingResultWithAuthMethod:v14 resultError:v5 timeElapsed:?];
}

void sub_10006AB50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) nrDeviceIdentifier];
    v6 = [v5 UUIDString];
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unpairing NetworkRelay device with Network Relay Identifier %{public}@ completed with error %{public}@", &v7, 0x16u);
  }

  [*(a1 + 40) _notifyDelegatesOfUnpairingCompletionWithError:v3];
}

void sub_10006AEE8(id a1)
{
  v1 = objc_alloc_init(NetworkRelayAgent);
  v2 = qword_1001B3870;
  qword_1001B3870 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_10006C3A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = [*(a1 + 40) _makeIsSetupNoDeviceCollection:v4 diffWithPairingID:*(a1 + 32)];
  v7 = [v5 applyDiff:v6];
  v8 = [*(a1 + 40) _makeIsPairedDeviceCollection:v4 diffWithPairingID:*(a1 + 32) pair:*(a1 + 56)];

  v9 = [v5 applyDiff:v8];
  v10 = [*(a1 + 48) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006C4C8;
  block[3] = &unk_100175660;
  block[4] = *(a1 + 40);
  dispatch_async(v10, block);

  return 0;
}

void sub_10006C4C8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

uint64_t sub_10006C69C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = [*(a1 + 40) _makeIsPairedDeviceCollection:v4 diffWithPairingID:*(a1 + 32) pair:(*(a1 + 56) & 1) == 0];

  v7 = [v5 applyDiff:v6];
  v8 = [*(a1 + 48) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006C794;
  block[3] = &unk_100175660;
  block[4] = *(a1 + 40);
  dispatch_async(v8, block);

  return 0;
}

void sub_10006C794(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

void sub_10006CD64(uint64_t a1)
{
  v3 = [*(a1 + 32) registry];
  LOBYTE(v2) = 1;
  [v3 unpairDeviceWithPairingID:*(a1 + 40) obliterationString:0 shouldBrick:&__kCFBooleanFalse storeUnpair:&__kCFBooleanFalse migrationUnpair:&__kCFBooleanFalse shouldPreserveESim:&__kCFBooleanTrue pairingReport:*(a1 + 48) remoteUnpairRequestUUID:0 shouldConnectionWithDevice:v2];
}

void sub_10006D214(uint64_t a1)
{
  v2 = [*(a1 + 32) registry];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006D2B8;
  v5[3] = &unk_100177F88;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 grabHistoryWithReadBlock:v5];
}

void sub_10006D2B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v32 = a3;
  v6 = [v5 deviceCollection];
  v7 = [v6 objectForKeyedSubscript:*(a1 + 32)];

  v8 = [v5 switchIndex];
  v31 = v5;
  v9 = [v5 deviceCollection];
  v10 = [v9 count];

  v11 = [v7 objectForKeyedSubscript:NRDevicePropertyHWModelString];
  v12 = [v11 value];

  v13 = [v7 objectForKeyedSubscript:NRDevicePropertyEnclosureMaterial];
  v14 = [v13 value];
  v15 = v14;

  v16 = [v7 objectForKeyedSubscript:NRDevicePropertyBuildType];
  v17 = [v16 value];

  if (_NRIsInternalInstall())
  {
    v18 = v8;
    v19 = [v7 objectForKeyedSubscript:NRDevicePropertyIsInternalInstall];
    v20 = [v19 value];
    v21 = [v20 BOOLValue];

    if (v21)
    {
      v22 = [v7 objectForKeyedSubscript:NRDevicePropertySerialNumber];
      v23 = [v22 value];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = [v32 securePropertyForID:v23];

        v23 = v24;
      }

      v8 = v18;
      v25 = v23;
    }

    else
    {
      v25 = 0;
      v8 = v18;
    }
  }

  else
  {
    v25 = 0;
  }

  objc_initWeak(&location, *(a1 + 40));
  v26 = [*(a1 + 40) serviceRegistry];
  v27 = [v26 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006D5CC;
  block[3] = &unk_100177F60;
  objc_copyWeak(&v37, &location);
  v38 = v8;
  v39 = v10;
  v34 = v12;
  v35 = v25;
  v36 = v17;
  v40 = v15;
  v28 = v17;
  v29 = v25;
  v30 = v12;
  dispatch_async(v27, block);

  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);
}

void sub_10006D5CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained serviceRegistry];
  v3 = [v2 serviceFromClass:objc_opt_class()];

  v4 = [WeakRetained pairingReport];
  v5 = *(a1 + 64);
  v6 = *(a1 + 68);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = [v3 pairingClientPhase];
  BYTE4(v11) = 0;
  LODWORD(v11) = *(a1 + 72);
  [v4 submitPairingReportWithPairingAttemptCounter:0 andSwitchCounter:v5 andPairedDeviceCount:v6 andGizmoHardware:v7 andGizmoSerial:v8 andBuildType:v9 screenName:v10 idsDisconnectCounter:0 pairingStartTime:0 andEnclosureMaterial:v11 shouldLogOnly:?];
}

uint64_t sub_10006D9C8(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0);
  }

  return result;
}

void sub_10006DC24(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v12 = sub_100101F3C(a1[6]);
  if (sub_100101E3C(a1[6]))
  {
    v4 = sub_100101F50(a1[6]);
  }

  else
  {
    v4 = 0;
  }

  if (sub_100101EBC(a1[6]))
  {
    v5 = sub_100101F94(a1[6]);
  }

  else
  {
    v5 = 0;
  }

  if (sub_100101EFC(a1[6]))
  {
    v6 = sub_100101FB0(a1[6]);
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_100101E7C(a1[6]);
  if (v7)
  {
    v8 = [NSNumber numberWithInt:sub_100101F6C(a1[6])];
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_100101F80(a1[6]);
  v10 = a1[7];
  v11 = [v10 idsBTUUID];
  [v2 remoteObject:v3 receivedUnpairRequestWithAdvertisedName:v12 shouldObliterate:v4 shouldBrick:v5 shouldPreserveESim:v6 withPairingFailureCode:v8 withAbortReason:v9 withRequestIdentifier:v10 fromIDSBTUUID:v11];

  if (v7)
  {
  }
}

uint64_t sub_10006E090(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10006E0A8(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

uint64_t sub_10006E0C4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10006E2B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v18 = v3;
    v5 = [NRPBPingResponse alloc];
    v6 = [v18 protobuf];
    v7 = [v6 data];
    v8 = [(NRPBPingResponse *)v5 initWithData:v7];

    v9 = sub_100102768(v8);
    v10 = *(a1 + 40);
    v11 = +[NSDate date];
    [v11 timeIntervalSinceReferenceDate];
    v13 = v12;
    v14 = sub_100102768(v8);

    v15 = *(a1 + 32);
    if (v15)
    {
      (*(v15 + 16))(v15, 1, v9 - v10, v13 - v14);
    }
  }

  else
  {
    v16 = *(a1 + 32);
    if (!v16)
    {
      goto LABEL_8;
    }

    v18 = 0;
    v16 = (*(v16 + 16))(v16, 0, 0.0, 0.0);
  }

  v4 = v18;
LABEL_8:

  return _objc_release_x1(v16, v4);
}

id sub_10006E614(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_10010611C(*(a1 + 40));

  return [v1 receivedPingRequestOfType:v2];
}

id sub_10006E828(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1000FDF00(*(a1 + 40));

  return [v1 remoteObjectReceivedWatchMigrationCompletion:v2];
}

void sub_10006EA48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_100103C5C(*(a1 + 40));
  [v1 remoteObjectReveivedWatchMigrationMetricSessionID:v2];
}

void sub_10006EBA0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) clientQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10006EC6C;
    v5[3] = &unk_100175FA0;
    v6 = v3;
    v7 = *(a1 + 40);
    dispatch_async(v4, v5);
  }
}

void sub_10006ED7C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) clientQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10006EE48;
    v5[3] = &unk_100175FA0;
    v6 = v3;
    v7 = *(a1 + 40);
    dispatch_async(v4, v5);
  }
}

void sub_10006EF70(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) clientQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10006F03C;
    v5[3] = &unk_100175FA0;
    v6 = v3;
    v7 = *(a1 + 40);
    dispatch_async(v4, v5);
  }
}

void sub_10006F164(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) clientQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10006F230;
    v5[3] = &unk_100175FA0;
    v6 = v3;
    v7 = *(a1 + 40);
    dispatch_async(v4, v5);
  }
}

void sub_10006F28C(id a1)
{
  v1 = dispatch_queue_create("com.apple.NanoRegistry.WakingTimerScheduler", 0);
  v2 = qword_1001B3880;
  qword_1001B3880 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10006F6D8(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Dispatch timer fired", v6, 2u);
    }
  }

  return [*(a1 + 32) evaluateTimers];
}

id sub_10006F774(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received time zone notification: (com.apple.system.timezone)", v6, 2u);
    }
  }

  return [*(a1 + 32) handleTimeEvent];
}

id sub_10006F810(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received clock set notification: (com.apple.system.clock_set)", v6, 2u);
    }
  }

  return [*(a1 + 32) handleTimeEvent];
}

uint64_t sub_10006F94C(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1001B3890;
  qword_1001B3890 = v1;

  return _objc_release_x1(v1, v2);
}

id sub_10006FA3C(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = [v5 identifier];
      v16 = 134218242;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Scheduling timer (%p) with identifier: (%@)", &v16, 0x16u);
    }
  }

  [*(*(a1 + 40) + 24) addObject:*(a1 + 32)];
  v7 = *(a1 + 40);
  v8 = [objc_opt_class() now];
  [*(a1 + 32) setStartTime:v8];
  v9 = *(a1 + 32);
  v10 = [v9 startTime];
  [*(a1 + 32) delay];
  [v9 setEarliestFireTime:(v10 + v11 * 1000000000.0)];
  v12 = *(a1 + 32);
  v13 = [v12 earliestFireTime];
  [*(a1 + 32) gracePeriod];
  [v12 setDeadline:(v13 + v14 * 1000000000.0)];
  return [*(a1 + 40) evaluateTimers:v8];
}

void sub_10006FC78(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 134217984;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cancelling timer (%p)", buf, 0xCu);
    }
  }

  [*(*(a1 + 40) + 24) removeObject:*(a1 + 32)];
  v6 = *(a1 + 40);
  if (*(v6 + 32) == *(a1 + 32))
  {
    *(v6 + 32) = 0;
  }

  v7 = +[WakingTimerScheduler timerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006FDD4;
  block[3] = &unk_100175660;
  block[4] = *(a1 + 40);
  dispatch_async(v7, block);
}

void sub_1000700EC(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v14;
    *&v4 = 134217984;
    v12 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = nr_daemon_log();
        v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

        if (v10)
        {
          v11 = nr_daemon_log();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v12;
            v18 = v8;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Firing timer (%p)", buf, 0xCu);
          }
        }

        [v8 fireTimer];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v5);
  }

  sub_1000DF814(*(a1 + 40));
}

void sub_1000724B4(uint64_t a1, int a2)
{
  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138412546;
      v11 = v7;
      v12 = 1024;
      v13 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Graduate request to BT UUID %@ success = %{BOOL}d", buf, 0x12u);
    }
  }

  v8 = [*(*(a1 + 40) + 16) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100072600;
  block[3] = &unk_100175660;
  block[4] = *(a1 + 40);
  dispatch_async(v8, block);
}

void sub_100072600(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

void sub_10007293C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
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

id sub_10007297C(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1000729B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v4 = *(*(a1 + 40) + 8);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v16 = sub_100072BFC;
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

void sub_100072BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100072BFC(void *a1)
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

id sub_100073048(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) containsObject:*(a1 + 40)];
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v2)
  {
    if (v4)
    {
      v5 = nr_daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v7 = *(v6 + 8);
        v8 = *(v6 + 56);
        v18 = 138543618;
        v19 = v7;
        v20 = 2114;
        v21 = v8;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionWaitForConnectivity: Device %{public}@ IS paired in IDS %{public}@", &v18, 0x16u);
      }
    }

    v9 = [*(a1 + 48) serviceFromClass:objc_opt_class()];
    v10 = *(a1 + 32);
    v11 = *(v10 + 24);
    *(v10 + 24) = v9;

    [*(*(a1 + 32) + 24) addConnectivityObserver:?];
    v12 = *(a1 + 56);
    if (v12)
    {
      [v12 doubleValue];
      [*(a1 + 32) setTimeout:?];
    }

    return [*(a1 + 32) checkForConnectivity];
  }

  else
  {
    if (v4)
    {
      v14 = nr_daemon_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        v16 = *(v15 + 8);
        v17 = *(v15 + 56);
        v18 = 138543618;
        v19 = v16;
        v20 = 2114;
        v21 = v17;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionWaitForConnectivity: Device %{public}@ IS NOT paired in IDS %{public}@", &v18, 0x16u);
      }
    }

    return [*(a1 + 32) transactionDidComplete];
  }
}

void sub_100073210(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling IDSLocalPairingGetPairedDevicesWithCompletionBlock", buf, 2u);
    }
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v5 = [*(a1 + 40) queue];
  IDSLocalPairingGetPairedDevicesWithCompletionBlock();

  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v6 = [*(a1 + 40) queue];
  IDSLocalPairingGetPairingDevicesWithCompletionBlock();
}

uint64_t sub_10007339C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 56) addObjectsFromArray:a2];
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t sub_1000733F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 56) addObjectsFromArray:a2];
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_100073D80(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        (*(*(*(&v8 + 1) + 8 * v6) + 16))(*(*(&v8 + 1) + 8 * v6));
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_100073FC8(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_1000742E8(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_100074758(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = sub_1000034AC();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = sub_1000034AC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v14 = "NO";
      if (a2)
      {
        v14 = "YES";
      }

      *buf = 134219010;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      v26 = 2080;
      v27 = v14;
      v28 = 2112;
      v29 = v7;
      v30 = 2112;
      v31 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "EPWatchPusher[%p]: For advertisedName=%@ calling completion(%s, %@) (Message: %@)", buf, 0x34u);
    }
  }

  v15 = +[EPFactory queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100074920;
  block[3] = &unk_100177168;
  v16 = *(a1 + 48);
  v21 = a2;
  v19 = v7;
  v20 = v16;
  v17 = v7;
  dispatch_async(v15, block);
}

uint64_t sub_100074B98(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___NRPBBTMigrationCiphertext__ciphertext;
LABEL_21:
        v14 = PBReaderReadData();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___NRPBBTMigrationCiphertext__salt;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_100075C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100075C70(uint64_t a1, void *a2)
{
  v3 = [a2 activeDeviceID];
  if (v3)
  {
    v4 = [*(a1 + 32) serviceFromClass:objc_opt_class()];
    *(*(*(a1 + 40) + 8) + 24) = [v4 shouldWaitForBridgeNotificationForPairingID:v3];
    v5 = nr_daemon_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(*(*(a1 + 40) + 8) + 24);
        v11 = 136315394;
        v12 = "[EPSagaTransactionNotification _shouldWaitForCurrentNotification:]_block_invoke";
        v13 = 1024;
        v14 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: should wait: %{BOOL}d", &v11, 0x12u);
      }
    }

LABEL_9:

    goto LABEL_10;
  }

  v9 = nr_daemon_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

  if (v10)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100100E30(v4);
    }

    goto LABEL_9;
  }

LABEL_10:
}

uint64_t start()
{
  _set_user_dir_suffix();
  v0 = objc_autoreleasePoolPush();
  if (_NRIsInternalInstall())
  {
    v1 = [NSMutableDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/DeviceRegistry.state/tests.plist"];
    v2 = v1;
    if (v1)
    {
      v3 = [v1 objectForKeyedSubscript:@"BootSleepDuration"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 integerValue] >= 1)
      {
        v4 = nr_daemon_log();
        v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

        if (v5)
        {
          v6 = nr_daemon_log();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            sub_100100EB4(v3, v6);
          }
        }

        sleep([v3 integerValue]);
        v7 = nr_daemon_log();
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

        if (v8)
        {
          v9 = nr_daemon_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_100100F40(v9);
          }
        }
      }
    }
  }

  v10 = nr_daemon_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

  if (v11)
  {
    v12 = nr_daemon_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100100F84(v12);
    }
  }

  if (_NRIsInternalInstall())
  {
    v13 = nr_daemon_log();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v15 = nr_daemon_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v63 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Build Configuration: NANOREGISTRY_IOSMAC 0", v63, 2u);
      }
    }

    v16 = nr_daemon_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      v18 = nr_daemon_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v63 = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Build Configuration: NANOREGISTRY_NOT_MACOS 1", v63, 2u);
      }
    }

    v19 = nr_daemon_log();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (v20)
    {
      v21 = nr_daemon_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v63 = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Build Configuration: NANOREGISTRY_WATCH 0", v63, 2u);
      }
    }

    v22 = nr_daemon_log();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

    if (v23)
    {
      v24 = nr_daemon_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *v63 = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Build Configuration: NANOREGISTRY_PHONE 1", v63, 2u);
      }
    }

    v25 = nr_daemon_log();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

    if (v26)
    {
      v27 = nr_daemon_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *v63 = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Build Configuration: NANOREGISTRY_BUILD_DAEMON 1", v63, 2u);
      }
    }

    v28 = nr_daemon_log();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

    if (v29)
    {
      v30 = nr_daemon_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *v63 = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Build Configuration: NANOREGISTRY_SIMULATED_PAIRING 0", v63, 2u);
      }
    }

    v31 = nr_daemon_log();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);

    if (v32)
    {
      v33 = nr_daemon_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *v63 = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Build Configuration: NANOREGISTRY_EMBEDDED 1", v63, 2u);
      }
    }

    v34 = nr_daemon_log();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);

    if (v35)
    {
      v36 = nr_daemon_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *v63 = 0;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Build Configuration: NRREGISTRYCLIENT_DEBUG 0", v63, 2u);
      }
    }

    v37 = nr_daemon_log();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);

    if (v38)
    {
      v39 = nr_daemon_log();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *v63 = 0;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Build Configuration: NRREGISTRYSERVER_DEBUG 1", v63, 2u);
      }
    }

    v40 = nr_daemon_log();
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);

    if (v41)
    {
      v42 = nr_daemon_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *v63 = 0;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Build Configuration: NRXPCCALL_DEBUG 0", v63, 2u);
      }
    }

    v43 = nr_daemon_log();
    v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);

    if (v44)
    {
      v45 = nr_daemon_log();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *v63 = 0;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Build Configuration: NRLOCALPROPERTY_DEBUG 0", v63, 2u);
      }
    }

    v46 = nr_daemon_log();
    v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);

    if (v47)
    {
      v48 = nr_daemon_log();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *v63 = 0;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Build Configuration: NRDISCOVERY_DEBUG 0", v63, 2u);
      }
    }

    v49 = nr_daemon_log();
    v50 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);

    if (v50)
    {
      v51 = nr_daemon_log();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *v63 = 0;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Build Configuration: NR_YYYYYYYYYY 1", v63, 2u);
      }
    }
  }

  v52 = nr_daemon_log();
  v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);

  if (v53)
  {
    v54 = nr_daemon_log();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Creating NRPairingDaemon", v63, 2u);
    }
  }

  v55 = +[NRPairingDaemon sharedInstance];
  v56 = nr_daemon_log();
  v57 = v56;
  if (v55)
  {
    v58 = os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);

    if (v58)
    {
      v59 = nr_daemon_log();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *v63 = 0;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "NRPairingDaemon created", v63, 2u);
      }

LABEL_83:
    }
  }

  else
  {
    v60 = os_log_type_enabled(v56, OS_LOG_TYPE_ERROR);

    if (v60)
    {
      v59 = nr_daemon_log();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        sub_100101060(v59);
      }

      goto LABEL_83;
    }
  }

  objc_autoreleasePoolPop(v0);
  v61 = +[NSRunLoop mainRunLoop];
  [v61 run];

  return 0;
}

void sub_1000769FC(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 transactionDidComplete:*(a1 + 32)];
}

void sub_100076D88(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100076E38;
  v6[3] = &unk_1001780F0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  [IXAppInstallCoordinator setRemovability:v4 forAppWithBundleID:v5 completion:v6];
}

void sub_100076E38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nr_daemon_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = IXStringForAppRemovability();
      v16 = 138412802;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = v3;
      v9 = "Failed to set %@ as %@ with error %@";
      v10 = v5;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 32;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v10, v11, v9, &v16, v12);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v13 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v14 = *(a1 + 40);
      v8 = IXStringForAppRemovability();
      v16 = 138412546;
      v17 = v15;
      v18 = 2112;
      v19 = v8;
      v9 = "Successfully set %@ as %@";
      v10 = v5;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 22;
      goto LABEL_7;
    }

LABEL_8:
  }
}

uint64_t sub_100077104(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___NRPBBTMigrationChallengeWrite__encryptedPhoneName;
LABEL_21:
        v14 = PBReaderReadData();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___NRPBBTMigrationChallengeWrite__challenge;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

id sub_1000777E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);

  return [v4 checkForIRK];
}

void sub_10007806C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_100078094(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = [WeakRetained registry];
  v15 = [v14 collection];
  v16 = [v15 activeDeviceID];

  v17 = +[NRQueue registryDaemonQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100078224;
  v20[3] = &unk_100178140;
  objc_copyWeak(&v24, (a1 + 40));
  v18 = v16;
  v21 = v18;
  v22 = *(a1 + 32);
  v19 = v9;
  v23 = v19;
  [v17 dispatchAsync:v20];

  objc_destroyWeak(&v24);
}

void sub_100078224(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v3 = a1[4];
    if (v3 != WeakRetained[15] && ([v3 isEqual:?] & 1) == 0)
    {
      objc_storeStrong(WeakRetained + 15, a1[4]);
      [WeakRetained queryDeviceSyncStatusIfNeeded];
      [a1[5] checkAssertionFactoryForAssertion];
      [a1[5] update];
    }

    v21 = WeakRetained;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = [a1[6] allPairingIDs];
    v4 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v30;
      v7 = NRDevicePropertyMigrationConsent;
      v24 = NRDevicePropertyMigrationConsentDate;
      v19 = NRDevicePropertyMigrationConsent;
      v20 = *v30;
      do
      {
        v8 = 0;
        v22 = v5;
        do
        {
          if (*v30 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v29 + 1) + 8 * v8);
          v10 = [a1[6] objectForKeyedSubscript:v9];
          v11 = [v10 diff];
          v12 = [v11 objectForKeyedSubscript:v7];
          v13 = [v11 objectForKeyedSubscript:v24];
          if (v12 | v13)
          {
            v14 = nr_daemon_log();
            v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

            if (v15)
            {
              v16 = nr_daemon_log();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: Looks like the device registry has updated some consent flags- going to check whether we should kick off migration", buf, 2u);
              }
            }

            v17 = [v21 _hasMigrationConsent:v9];
            v18 = +[NRQueue registryDaemonQueue];
            v25[0] = _NSConcreteStackBlock;
            v25[1] = 3221225472;
            v25[2] = sub_10007851C;
            v25[3] = &unk_100176198;
            v26 = v21;
            v27 = v17;
            [v18 dispatchAsync:v25];

            v7 = v19;
            v6 = v20;
            v5 = v22;
          }

          v8 = v8 + 1;
        }

        while (v5 != v8);
        v5 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v5);
    }

    WeakRetained = v21;
  }
}

id sub_10007851C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    if (*(a1 + 40) == 1)
    {
      [result setShouldClearAdvertisingIntervalTimeouts:1];
      *(*(a1 + 32) + 14) = 1;
      result = *(a1 + 32);
    }

    return [result update];
  }

  return result;
}

id sub_100078584(uint64_t a1)
{
  [*(a1 + 32) checkAssertionFactoryForAssertion];
  v2 = *(a1 + 32);

  return [v2 update];
}

void sub_100078844(uint64_t a1, void *a2)
{
  v3 = [a2 activeDevice];
  v4 = v3;
  if (v3 && [v3 isPaired] && (objc_msgSend(v4, "isArchived") & 1) == 0)
  {
    v9 = [v4 objectForKeyedSubscript:NRDevicePropertyPairingID];
    v5 = [v9 value];
  }

  else
  {
    v5 = 0;
  }

  v6 = +[NRQueue registryDaemonQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007895C;
  v10[3] = &unk_100175598;
  v7 = *(a1 + 32);
  v11 = v5;
  v12 = v7;
  v8 = v5;
  [v6 dispatchAsync:v10];
}

void sub_10007895C(uint64_t a1)
{
  if (([*(a1 + 32) isEqual:*(*(a1 + 40) + 104)] & 1) == 0)
  {
    v2 = nr_daemon_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

    if (v3)
    {
      v4 = nr_daemon_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: active device changed resetting sync status", buf, 2u);
      }
    }

    objc_storeStrong((*(a1 + 40) + 104), *(a1 + 32));
    *(*(a1 + 40) + 18) = 0;
    *(*(a1 + 40) + 19) = 0;
  }

  v5 = *(a1 + 40);
  if (*(v5 + 104) && (*(v5 + 18) & 1) == 0 && (*(v5 + 19) & 1) == 0)
  {
    v6 = nr_daemon_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = nr_daemon_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: querying sync status", buf, 2u);
      }
    }

    v9 = *(*(a1 + 40) + 104);
    *(*(a1 + 40) + 19) = 1;
    v10 = *(a1 + 40);
    v11 = *(v10 + 112);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100078B2C;
    v13[3] = &unk_100178190;
    v14 = v9;
    v15 = v10;
    v12 = v9;
    [v11 requestInitialSyncStateForPairingIdentifier:v12 completion:v13];
  }
}

void sub_100078B2C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = nr_daemon_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = nr_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "NO";
      if (a2)
      {
        v9 = "YES";
      }

      *buf = 136315394;
      v20 = v9;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: sync status response hasCompletedSync=%s error=%@", buf, 0x16u);
    }
  }

  v10 = +[NRQueue registryDaemonQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100078CCC;
  v14[3] = &unk_100175CE0;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v15 = v11;
  v16 = v12;
  v17 = v5;
  v18 = a2;
  v13 = v5;
  [v10 dispatchAsync:v14];
}

id sub_100078CCC(uint64_t a1)
{
  result = [*(a1 + 32) isEqual:*(*(a1 + 40) + 104)];
  if (result && (v3 = *(a1 + 40), *(v3 + 19) == 1))
  {
    if (*(a1 + 48))
    {
      *(v3 + 18) = 0;
    }

    else
    {
      *(v3 + 18) = 1;
      *(*(a1 + 40) + 17) = *(a1 + 56) ^ 1;
    }

    result = [*(a1 + 40) update];
  }

  else if (!*(a1 + 48))
  {
    result = [*(a1 + 40) queryDeviceSyncStatusIfNeeded];
  }

  *(*(a1 + 40) + 19) = 0;
  return result;
}

id sub_100078DEC(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: PairedSync says retrying failed pairing attempts", v6, 2u);
    }
  }

  return [*(a1 + 32) queryDeviceSyncStatusIfNeeded];
}

id sub_100078F40(uint64_t a1)
{
  result = [*(a1 + 32) isEqual:*(*(a1 + 40) + 104)];
  if (result)
  {
    v3 = nr_daemon_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = nr_daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: PairedSync says sync reset... querying sync status", v6, 2u);
      }
    }

    *(*(a1 + 40) + 18) = 0;
    return [*(a1 + 40) queryDeviceSyncStatusIfNeeded];
  }

  return result;
}

id sub_1000790B0(uint64_t a1)
{
  result = [*(a1 + 32) isEqual:*(*(a1 + 40) + 104)];
  if (result)
  {
    v3 = nr_daemon_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = nr_daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: PairedSync says sync complete", v6, 2u);
      }
    }

    *(*(a1 + 40) + 18) = 1;
    *(*(a1 + 40) + 19) = 0;
    *(*(a1 + 40) + 17) = 0;
    return [*(a1 + 40) update];
  }

  return result;
}

id sub_100079738(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: kSBSLockStateNotifyKey received", v6, 2u);
    }
  }

  return [*(a1 + 32) update];
}

id sub_1000797D4(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: kMobileKeyBagLockStatusNotifyToken received", v6, 2u);
    }
  }

  return [*(a1 + 32) update];
}

id sub_100079870(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "com.apple.springboard.finishedstartup";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: %s received", &v6, 0xCu);
    }
  }

  return [*(a1 + 32) update];
}

id sub_100079B74(uint64_t a1)
{
  v2 = sub_1000034AC();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = sub_1000034AC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = 0x40F5180000000000;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%f seconds advertising timeout expired", &v8, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 88);
  *(v5 + 88) = 0;

  return [*(a1 + 32) update];
}

void sub_100079C60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) registry];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100079D20;
  v6[3] = &unk_100178228;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 grabRegistryWithReadBlock:v6];
}

void sub_100079D20(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(*(a1 + 32) + 104)];
  v4 = [v3 isPaired];
  v5 = [v3 isArchived];
  v6 = +[NRQueue registryDaemonQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100079E30;
  v9[3] = &unk_100178200;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v10 = v7;
  v11 = v8;
  v12 = *(a1 + 48);
  v13 = *(a1 + 49);
  v14 = v4;
  v15 = v5;
  v16 = *(a1 + 51);
  v17 = *(a1 + 55);
  [v6 dispatchAsync:v9];
}

void sub_100079E30(uint64_t a1)
{
  v2 = +[EPNanoRegistryStatusCodeElection sharedInstance];
  v3 = [v2 statusCode];

  if (![*(a1 + 32) count])
  {
    v9 = nr_daemon_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = nr_daemon_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: no more migratable candidates", buf, 2u);
      }
    }

    *(*(a1 + 40) + 11) = 0;
    v12 = *(a1 + 40);
    v13 = *(v12 + 48);
    *(v12 + 48) = 0;

    v14 = *(a1 + 40);
    v15 = *(v14 + 32);
    *(v14 + 32) = 0;

    v16 = *(a1 + 40);
    v17 = *(v16 + 96);
    *(v16 + 96) = 0;

    [*(a1 + 40) unregisterForNotifications];
    v18 = *(*(a1 + 40) + 88);
    if (v18)
    {
      [v18 invalidate];
      v19 = *(a1 + 40);
      v20 = *(v19 + 88);
      *(v19 + 88) = 0;
    }

    v21 = +[NRFeatureFlags sharedInstance];
    if ([v21 networkRelayPairing])
    {
      v22 = *(*(a1 + 40) + 56);

      if (!v22)
      {
        return;
      }

      v21 = networkrelay_pairing_log_handle();
      v23 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (v3 != 4)
      {
        if (v23)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: NetworkRelayPairing migration discovery in progress but no more candidates, stopping discovery", buf, 2u);
        }

        [*(*(a1 + 40) + 56) removeAllMigrationScanCandidates];
        [*(a1 + 40) stopNetworkRelayWatchScan];
        return;
      }

      if (v23)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: NetworkRelayPairing migration pairing in progress, leave it alone", buf, 2u);
      }
    }

    return;
  }

  [*(a1 + 40) registerForNotifications];
  if (!*(*(a1 + 40) + 32))
  {
    v4 = [NROSTransaction transactionWithName:@"migrationAutoTrigger"];
    v5 = *(a1 + 40);
    v6 = *(v5 + 32);
    *(v5 + 32) = v4;
  }

  v7 = *(a1 + 49);
  if (*(a1 + 48) != 1)
  {
    v8 = v7 ^ 1;
    if ((v7 ^ 1))
    {
      goto LABEL_21;
    }

LABEL_20:
    v8 = *(a1 + 50) ^ 1;
    goto LABEL_21;
  }

  if (*(a1 + 49))
  {
    goto LABEL_20;
  }

  v8 = 0;
LABEL_21:
  v24 = *(a1 + 40);
  if (*(v24 + 104) && (*(v24 + 18) != 1 || *(v24 + 17) == 1) && *(a1 + 51) == 1)
  {
    v25 = *(a1 + 52) ^ 1;
  }

  else
  {
    v25 = 0;
  }

  v26 = nr_daemon_log();
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

  if (v27)
  {
    v28 = nr_daemon_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(*(a1 + 40) + 16);
      *buf = 67109632;
      *v92 = v8 & 1;
      *&v92[4] = 1024;
      *&v92[6] = v29;
      v93 = 1024;
      v94 = v25 & 1;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: locked=%{BOOL}d, _hasSwitchAssertion=%{BOOL}d, needsSync=%{BOOL}d", buf, 0x14u);
    }
  }

  v30 = *(a1 + 40);
  if (v8 & 1) != 0 || ((*(v30 + 16) | v25))
  {
    if (*(v30 + 48))
    {
      v31 = nr_daemon_log();
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);

      if (v32)
      {
        v33 = nr_daemon_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = "Locked";
          if (v25)
          {
            v34 = "Needs Sync";
          }

          if (*(*(a1 + 40) + 16))
          {
            v35 = "Busy";
          }

          else
          {
            v35 = v34;
          }

          *buf = 136315138;
          *v92 = v35;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: %s, aborting discovery", buf, 0xCu);
        }
      }

      v36 = *(a1 + 40);
      v37 = *(v36 + 48);
      *(v36 + 48) = 0;

      v30 = *(a1 + 40);
    }

    [v30 cancelTimer];
    v38 = *(a1 + 40);
    v39 = *(v38 + 96);
    *(v38 + 96) = 0;

    *(*(a1 + 40) + 11) = 0;
    v40 = +[NRFeatureFlags sharedInstance];
    if (![v40 networkRelayPairing])
    {
      goto LABEL_49;
    }

    v41 = *(*(a1 + 40) + 56);

    if (v41)
    {
      v40 = networkrelay_pairing_log_handle();
      v42 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
      if (v3 == 4)
      {
        if (v42)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: NetworkRelayPairing migration discovery in progress and actively migrating", buf, 2u);
        }

LABEL_49:

        goto LABEL_50;
      }

      if (v42)
      {
        *buf = 134217984;
        *v92 = v3;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: NetworkRelayPairing migration discovery in progress but not actively migrating (StatusCode %lu), stopping", buf, 0xCu);
      }

      [*(a1 + 40) stopNetworkRelayWatchScan];
    }
  }

LABEL_50:
  v43 = [*(a1 + 40) migrator];
  v44 = [v43 isBusy];

  if (*(a1 + 53) == 1 && (v44 & 1) == 0 && (v3 & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    if ((*(a1 + 54) & 1) == 0)
    {
      v68 = nr_daemon_log();
      v69 = os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT);

      if (!v69)
      {
        return;
      }

      v70 = nr_daemon_log();
      if (!os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_84;
      }

      *buf = 0;
      v71 = "EPMigrationAutoTrigger: SpringBoard has not finished setting up";
      goto LABEL_83;
    }

    v45 = *(a1 + 40);
    if (*(v45 + 13) & 1) != 0 || (*(v45 + 14) & 1) != 0 || (*(a1 + 55) & 1) != 0 || (*(v45 + 11))
    {
      if (*(a1 + 48))
      {
LABEL_59:
        *(v45 + 13) = 0;
        *(*(a1 + 40) + 9) = *(a1 + 53);
        v46 = nr_daemon_log();
        v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);

        if (!v47)
        {
          goto LABEL_64;
        }

        v48 = nr_daemon_log();
        if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_63;
        }

        *buf = 0;
        v49 = "EPMigrationAutoTrigger: Forcing migration discovery for some reason";
        goto LABEL_62;
      }

      if (*(a1 + 49) == 1)
      {
        if (*(a1 + 50) == 1)
        {
          goto LABEL_59;
        }

LABEL_109:
        if (*(a1 + 56) != 1)
        {
          return;
        }

        v81 = nr_daemon_log();
        v82 = os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT);

        if (v82)
        {
          v83 = nr_daemon_log();
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: Starting migration discovery because there is no passcode and we've become UI Unlocked", buf, 2u);
          }
        }

        v84 = [*(a1 + 40) isDate:*(*(a1 + 40) + 72) agedMoreThan:60.0];
        v85 = nr_daemon_log();
        v86 = os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT);

        if (v84)
        {
          if (v86)
          {
            v48 = nr_daemon_log();
            if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_63;
            }

            *buf = 0;
            v49 = "EPMigrationAutoTrigger: Starting migration discovery because there is no passcode and we've become UI Unlocked";
LABEL_62:
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, v49, buf, 2u);
LABEL_63:
          }

LABEL_64:
          v50 = *(*(a1 + 40) + 96);
          if (!v50)
          {
            v51 = nr_daemon_log();
            v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);

            if (v52)
            {
              v53 = nr_daemon_log();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: Starting to wait for the key", buf, 2u);
              }
            }

            v54 = [*(a1 + 40) keymaster];
            v55 = [v54 newResourceWithDelegate:*(a1 + 40)];
            v56 = *(a1 + 40);
            v57 = *(v56 + 96);
            *(v56 + 96) = v55;

            v50 = *(*(a1 + 40) + 96);
          }

          v58 = [v50 availability];
          v59 = *(a1 + 40);
          if (v58 == 1)
          {
            v60 = [*(v59 + 96) key];

            if (v60)
            {
              v61 = nr_daemon_log();
              v62 = os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);

              if (v62)
              {
                v63 = nr_daemon_log();
                if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: Got the key!", buf, 2u);
                }
              }

              *(*(a1 + 40) + 11) = 0;
              v64 = +[NSDate date];
              v65 = *(a1 + 40);
              v66 = *(v65 + 72);
              *(v65 + 72) = v64;

              v67 = *(a1 + 40);
              if (*(v67 + 48))
              {
                if ((*(v67 + 13) & 1) == 0 && *(v67 + 14) != 1)
                {
LABEL_105:
                  [v67 sendMessageToAvailableWatchesWithInterval:0 completion:86400.0];
                  v78 = *(a1 + 40);
                  v90[0] = _NSConcreteStackBlock;
                  v90[1] = 3221225472;
                  v90[2] = sub_10007A96C;
                  v90[3] = &unk_1001781D8;
                  v90[4] = v78;
                  [v78 calculateNextMessageSendIntervalWithCompletion:v90];
LABEL_106:
                  v79 = +[NRFeatureFlags sharedInstance];
                  v80 = [v79 networkRelayPairing];

                  if (v80)
                  {
                    [*(a1 + 40) startNetworkRelayWatchScanWithCompletion:0];
                  }

                  return;
                }
              }

              else
              {
                *(v67 + 12) = 0;
                v67 = *(a1 + 40);
              }

              [v67 startMigrationAfterTimeout:5.0];
              [*(a1 + 40) startWatchScanWithCompletion:0];
              v67 = *(a1 + 40);
              if (*(v67 + 14))
              {
                *(v67 + 14) = 0;
                [*(a1 + 40) resetAllMessageSendTimersWithCompletion:0];
                v67 = *(a1 + 40);
              }

              goto LABEL_105;
            }

            *(*(a1 + 40) + 11) = 1;
            v76 = nr_daemon_log();
            v77 = os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT);

            if (!v77)
            {
              goto LABEL_106;
            }

            v74 = nr_daemon_log();
            if (!os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
LABEL_101:

              goto LABEL_106;
            }

            *buf = 0;
            v75 = "EPMigrationAutoTrigger: Whoa, key was there, now it's gone.";
          }

          else
          {
            *(v59 + 11) = 1;
            v72 = nr_daemon_log();
            v73 = os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT);

            if (!v73)
            {
              goto LABEL_106;
            }

            v74 = nr_daemon_log();
            if (!os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_101;
            }

            *buf = 0;
            v75 = "EPMigrationAutoTrigger: Can't get the key";
          }

          _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, v75, buf, 2u);
          goto LABEL_101;
        }

        if (!v86)
        {
          return;
        }

        v70 = nr_daemon_log();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v71 = "EPMigrationAutoTrigger: Too soon to start migration discovery because there is no passcode and we've become UI Unlocked";
          goto LABEL_83;
        }

        goto LABEL_84;
      }
    }

    else if (*(a1 + 49))
    {
      goto LABEL_109;
    }

    if (*(a1 + 57) != 1)
    {
      return;
    }

    v87 = [v45 isDate:*(v45 + 72) agedMoreThan:60.0];
    v88 = nr_daemon_log();
    v89 = os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT);

    if (v87)
    {
      if (v89)
      {
        v48 = nr_daemon_log();
        if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_63;
        }

        *buf = 0;
        v49 = "EPMigrationAutoTrigger: Starting migration discovery because the phone has become unlocked";
        goto LABEL_62;
      }

      goto LABEL_64;
    }

    if (!v89)
    {
      return;
    }

    v70 = nr_daemon_log();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v71 = "EPMigrationAutoTrigger: Too soon to start migration discovery because the phone has become unlocked";
LABEL_83:
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, v71, buf, 2u);
    }

LABEL_84:
  }
}

void sub_10007A96C(uint64_t a1, double a2)
{
  if (a2 <= 0.0)
  {
    if (*(*(a1 + 32) + 88))
    {
      v11 = sub_1000034AC();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

      if (v12)
      {
        v13 = sub_1000034AC();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Canceling the advertising request timer", buf, 2u);
        }
      }

      [*(*(a1 + 32) + 88) invalidate];
      v14 = *(a1 + 32);
      v15 = *(v14 + 88);
      *(v14 + 88) = 0;
    }
  }

  else if (!*(*(a1 + 32) + 88))
  {
    v4 = sub_1000034AC();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = sub_1000034AC();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v18 = a2;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting a timer to send an advertising request because %f seconds remain in the interval", buf, 0xCu);
      }
    }

    v7 = +[EPFactory queue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10007AB90;
    v16[3] = &unk_100175660;
    v16[4] = *(a1 + 32);
    v8 = [TimerFactory timerWithIdentifier:@"com.apple.nanoregistry.migrationautotrigger.advertisingrequestmessage" delay:1 gracePeriod:v7 waking:v16 handlerQueue:a2 handlerBlock:0.0];
    v9 = *(a1 + 32);
    v10 = *(v9 + 88);
    *(v9 + 88) = v8;
  }
}

uint64_t sub_10007ADD4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

uint64_t sub_10007B2D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  *(v2 + 152) = 0;

  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 40) UUIDString];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: Alert delay timer timeout for device %@", &v9, 0xCu);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

uint64_t sub_10007B3D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  *(v2 + 152) = 0;

  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 40) UUIDString];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: Alert delay timer canceled for device %@", &v9, 0xCu);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_10007B5E0(id *a1, uint64_t a2)
{
  v3 = [NSSet setWithArray:a2];
  v4 = [a1[4] shortTermFailureLockoutFilterBluetoothIdentifiers:v3];
  v5 = [a1[4] registry];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007B6E8;
  v9[3] = &unk_100176148;
  v10 = v4;
  v6 = a1[5];
  v7 = a1[4];
  v11 = v6;
  v12 = v7;
  v13 = a1[6];
  v8 = v4;
  [v5 grabRegistryWithReadBlock:v9];
}

void sub_10007B6E8(uint64_t a1, void *a2)
{
  v26 = a2;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v24 = a1;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v32;
    v7 = _NRDevicePropertyBluetoothIdentifier;
    *&v4 = 138543618;
    v23 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        v10 = [v26 objectForKeyedSubscript:{v9, v23}];
        v11 = [v10 objectForKeyedSubscript:v7];
        v12 = [v11 value];

        v13 = +[NRFeatureFlags sharedInstance];
        if ([v13 networkRelayPairing])
        {
          v14 = [[NSUUID alloc] initWithUUIDString:@"8240CA17-6F5D-4C8F-85C4-F4A705A0C20F"];
          v15 = [v10 supportsCapability:v14];
        }

        else
        {
          v15 = 0;
        }

        v16 = networkrelay_pairing_log_handle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v9 UUIDString];
          *buf = v23;
          v36 = v17;
          v37 = 1024;
          v38 = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[Checking for direct BT migration] Migratable device with ID %{public}@ should use NetworkRelay = %{BOOL}d", buf, 0x12u);
        }

        if (!((v12 == 0) | v15 & 1))
        {
          [*(v24 + 40) addObject:v12];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v5);
  }

  if ([*(v24 + 40) count])
  {
    v18 = +[NRQueue registryDaemonQueue];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10007B9FC;
    v27[3] = &unk_1001768B0;
    v19 = *(v24 + 40);
    v20 = *(v24 + 48);
    v21 = *(v24 + 56);
    v28 = v19;
    v29 = v20;
    v30 = v21;
    [v18 dispatchAsync:v27];

    v22 = v28;
LABEL_19:

    goto LABEL_20;
  }

  if (*(v24 + 56))
  {
    v22 = +[NRQueue registryDaemonQueue];
    [v22 dispatchAsync:*(v24 + 56)];
    goto LABEL_19;
  }

LABEL_20:
}

void sub_10007B9FC(void *a1)
{
  v7 = +[EPFactory sharedFactory];
  [v7 setDiscovererDeviceUUIDs:a1[4]];
  [v7 setDiscovererShouldScanForProximity:1];
  v2 = +[EPFactory sharedFactory];
  v3 = [v2 newDiscovererWithDelegate:a1[5]];
  v4 = a1[5];
  v5 = *(v4 + 48);
  *(v4 + 48) = v3;

  v6 = a1[6];
  if (v6)
  {
    (*(v6 + 16))();
  }
}

void sub_10007BC0C(id *a1, uint64_t a2)
{
  v3 = [NSSet setWithArray:a2];
  v4 = [a1[4] shortTermFailureLockoutFilterBluetoothIdentifiers:v3];
  v5 = [a1[4] registry];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007BD14;
  v9[3] = &unk_100176148;
  v10 = v4;
  v6 = a1[5];
  v7 = a1[4];
  v11 = v6;
  v12 = v7;
  v13 = a1[6];
  v8 = v4;
  [v5 grabRegistryWithReadBlock:v9];
}

void sub_10007BD14(uint64_t a1, void *a2)
{
  v3 = a2;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v22 = a1;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v29;
    v8 = _NRDevicePropertyNetworkRelayIdentifier;
    *&v5 = 138543618;
    v21 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [v3 objectForKeyedSubscript:{*(*(&v28 + 1) + 8 * i), v21}];
        v11 = [v10 objectForKeyedSubscript:v8];
        v12 = [v11 value];

        v13 = +[NRFeatureFlags sharedInstance];
        if ([v13 networkRelayPairing])
        {
          v14 = [[NSUUID alloc] initWithUUIDString:@"8240CA17-6F5D-4C8F-85C4-F4A705A0C20F"];
          v15 = [v10 supportsCapability:v14];
        }

        else
        {
          v15 = 0;
        }

        v16 = networkrelay_pairing_log_handle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v12 UUIDString];
          *buf = v21;
          v33 = v17;
          v34 = 1024;
          v35 = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[Checking for NetworkRelay migration] Migratable device with ID %{public}@ should use NetworkRelay = %{BOOL}d", buf, 0x12u);
        }

        if (((v12 != 0) & v15) == 1)
        {
          [*(v22 + 40) addObject:v12];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v6);
  }

  if ([*(v22 + 40) count])
  {
    v18 = +[NRQueue registryDaemonQueue];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10007C038;
    v25[3] = &unk_1001768B0;
    *obja = *(v22 + 40);
    v19 = obja[0];
    v26 = vextq_s8(*obja, *obja, 8uLL);
    v27 = *(v22 + 56);
    [v18 dispatchAsync:v25];
  }

  else if (*(v22 + 56))
  {
    v20 = +[NRQueue registryDaemonQueue];
    [v20 dispatchAsync:*(v22 + 56)];
  }
}

uint64_t sub_10007C038(void *a1)
{
  [*(a1[4] + 56) addMigrationScanCandidates:a1[5]];
  [*(a1[4] + 56) startScanningForMigrationCandidates];
  result = a1[6];
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10007C1C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) registry];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10007C290;
  v8[3] = &unk_1001782A0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v12 = *(a1 + 48);
  v11 = v6;
  v7 = v3;
  [v4 grabRegistryWithReadBlock:v8];
}

void sub_10007C290(uint64_t a1, void *a2)
{
  v28 = a2;
  v26 = +[NSMutableSet set];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v30;
    *&v4 = 138412802;
    v25 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        v9 = [v28 objectForKeyedSubscript:{v8, v25}];
        v10 = [*(a1 + 40) _cloudIdentifierForDevice:v9];
        if (![*(a1 + 40) hasMessageTimeIntervalExpired:v10 forCloudIdentifier:*(a1 + 56)])
        {
          v18 = sub_1000034AC();
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

          if (!v19)
          {
            goto LABEL_21;
          }

          v20 = sub_1000034AC();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v8 UUIDString];
            *buf = 138412546;
            v34 = v21;
            v35 = 2112;
            v36 = v10;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "sendMessageToAvailableWatchesWithInterval: Not sending to %@ (%@) because of lockout time interval", buf, 0x16u);
            goto LABEL_19;
          }

LABEL_20:

          goto LABEL_21;
        }

        v11 = [*(a1 + 40) cloud];
        v12 = [v11 deviceUniqueIdentifiers];
        v13 = [v12 containsObject:v10];

        v14 = sub_1000034AC();
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

        if (!v13)
        {
          if (!v15)
          {
            goto LABEL_21;
          }

          v20 = sub_1000034AC();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v8 UUIDString];
            v22 = [*(a1 + 40) cloud];
            v23 = [v22 deviceUniqueIdentifiers];
            *buf = v25;
            v34 = v21;
            v35 = 2112;
            v36 = v10;
            v37 = 2112;
            v38 = v23;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "sendMessageToAvailableWatchesWithInterval: %@ (%@) not in cloud identifiers list yet (%@)", buf, 0x20u);

LABEL_19:
          }

          goto LABEL_20;
        }

        if (v15)
        {
          v16 = sub_1000034AC();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v8 UUIDString];
            *buf = 138412546;
            v34 = v17;
            v35 = 2112;
            v36 = v10;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "sendMessageToAvailableWatchesWithInterval: Adding %@ (%@) to device list", buf, 0x16u);
          }
        }

        [v26 addObject:v10];
LABEL_21:
      }

      v5 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v5);
  }

  [*(a1 + 40) sendMessageToWatchWithRawCloudIdentifiers:v26];
  v24 = +[NRQueue registryDaemonQueue];
  [v24 dispatchAsync:*(a1 + 48)];
}

void sub_10007CB08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) registry];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10007CBD0;
  v8[3] = &unk_1001773E8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  [v4 grabRegistryWithReadBlock:v8];
}

void sub_10007CBD0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v19 = a3;
  +[NSMutableSet set];
  v18 = v17 = a1;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    v10 = _NRDevicePropertyMigrationIDSCloudIdentifier;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [v5 objectForKeyedSubscript:*(*(&v20 + 1) + 8 * v11)];
        v13 = [v12 objectForKeyedSubscript:v10];
        v14 = [v13 value];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v19 objectForKeyedSubscript:v14];
          if (v15)
          {
            [v18 addObject:v15];
          }
        }

        v11 = v11 + 1;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  [*(v17 + 40) setLastMessageSendDate:0 forRawCloudIdentifiers:v18];
  v16 = +[NRQueue registryDaemonQueue];
  [v16 dispatchAsync:*(v17 + 48)];
}

void sub_10007CED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007CEEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) registry];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007CFCC;
  v9[3] = &unk_100178318;
  v5 = *(a1 + 32);
  v10 = v3;
  v11 = v5;
  v13 = *(a1 + 56);
  v8 = *(a1 + 40);
  v6 = v8;
  v12 = v8;
  v7 = v3;
  [v4 grabRegistryWithReadBlock:v9];
}

void sub_10007CFCC(uint64_t a1, void *a2)
{
  v3 = a2;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    obj = v4;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [v3 objectForKeyedSubscript:*(*(&v29 + 1) + 8 * v8)];
        v10 = [*(a1 + 40) _cloudIdentifierForDevice:v9];
        v11 = [*(a1 + 40) cloud];
        v12 = [v11 deviceUniqueIdentifiers];
        v13 = [v12 containsObject:v10];

        if (v13)
        {
          v14 = [NSString stringWithFormat:@"%@.%@", @"lastAdvertisingNotificationDate", v10];
          v15 = [*(*(a1 + 40) + 80) objectForKeyedSubscript:v14];
          if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            *(*(*(a1 + 56) + 8) + 24) = 0;
LABEL_21:

            v24 = obj;
            goto LABEL_22;
          }

          v15 = v15;
          [v15 doubleValue];
          v17 = v16 - *(a1 + 64) + 86400.0;
          v18 = *(*(a1 + 56) + 8);
          if (v17 <= 0.0)
          {
            *(v18 + 24) = 0;

            goto LABEL_21;
          }

          v19 = *(v18 + 24);
          if (v19 < 0.0 || v19 > v17)
          {
            *(v18 + 24) = v17;
          }
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v4 = obj;
      v6 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v21 = +[NRQueue registryDaemonQueue];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10007D2A4;
  v26[3] = &unk_1001771E0;
  v22 = *(a1 + 48);
  v23 = *(a1 + 56);
  v27 = v22;
  v28 = v23;
  [v21 dispatchAsync:v26];

  v24 = v27;
LABEL_22:
}

void sub_10007D750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10007D77C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 64);
    *(v2 + 64) = 0;
  }
}

void sub_10007D794(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v4 = *(a1 + 32);
    v5 = +[NSDate date];
    [v4 setLastMessageSendDate:v5 forRawCloudIdentifiers:*(a1 + 40)];

    v6 = WeakRetained;
    if (WeakRetained)
    {
      WeakRetained[13] = 1;
      [WeakRetained update];
      v6 = WeakRetained;
    }
  }
}

void sub_10007DC44(id *a1, void *a2)
{
  v3 = a2;
  if ([v3 count] && !objc_msgSend(a1[4], "count") && !objc_msgSend(a1[5], "count"))
  {
    v4 = nr_daemon_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = nr_daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: there are migratable watches, but none were discovered", buf, 2u);
      }
    }

    notify_post([NRMigrationDevicesCannotBeDiscoveredDarwinNotification UTF8String]);
  }

  v7 = [NSSet setWithArray:v3];
  v8 = [a1[6] shortTermFailureLockoutFilterBluetoothIdentifiers:v7];
  v9 = [a1[6] registry];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10007DE24;
  v16[3] = &unk_1001783E0;
  v17 = v8;
  v10 = a1[4];
  v11 = a1[5];
  v15 = *(a1 + 3);
  v12 = *(&v15 + 1);
  *&v13 = v10;
  *(&v13 + 1) = v11;
  v18 = v13;
  v19 = v15;
  v14 = v8;
  [v9 grabRegistryWithReadBlock:v16];
}

void sub_10007DE24(uint64_t a1, void *a2)
{
  v3 = a2;
  v27 = a1;
  v4 = [*(a1 + 32) allObjects];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10007E1A8;
  v35[3] = &unk_1001766B8;
  v28 = v3;
  v36 = v28;
  v5 = [v4 sortedArrayUsingComparator:v35];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    v10 = _NRDevicePropertyBluetoothIdentifier;
    v11 = _NRDevicePropertyNetworkRelayIdentifier;
    obj = v6;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        v14 = [v28 objectForKeyedSubscript:{v13, obj}];
        v15 = [v14 objectForKeyedSubscript:v10];
        v16 = [v15 value];

        v17 = [v14 objectForKeyedSubscript:v11];
        v18 = [v17 value];

        if (([*(v27 + 40) containsObject:v16] & 1) != 0 || objc_msgSend(*(v27 + 48), "containsObject:", v18))
        {
          v20 = nr_daemon_log();
          v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

          if (v21)
          {
            v22 = nr_daemon_log();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v38 = v16;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: device btID: %@ is migratable, and was discovered, will attempt to migrate", buf, 0xCu);
            }
          }

          notify_post([NRMigrationDeviceFoundBeginningMigrationDarwinNotification UTF8String]);
          [*(v27 + 56) cancelMigrationSoftErrorAlertDelayTimerWithDeviceID:0];
          v23 = dispatch_get_global_queue(17, 0);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10007E28C;
          block[3] = &unk_1001758F8;
          v24 = *(v27 + 56);
          block[4] = v13;
          block[5] = v24;
          v30 = v16;
          v25 = v16;
          dispatch_async(v23, block);

          v6 = obj;
          goto LABEL_17;
        }
      }

      v6 = obj;
      v8 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v19 = *(v27 + 64);
  if (v19)
  {
    (*(v19 + 16))(v19, 0);
  }

LABEL_17:
}

id sub_10007E1A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v9 = NRDevicePropertyPairedDate;
  v10 = [v7 objectForKeyedSubscript:NRDevicePropertyPairedDate];
  v11 = [v10 value];

  v12 = [v8 objectForKeyedSubscript:v9];
  v13 = [v12 value];

  v14 = [v13 compare:v11];
  return v14;
}

void sub_10007E28C(uint64_t a1)
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = [v2 deviceForPairingID:*(a1 + 32)];

  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) UUIDString];
      *buf = 138412546;
      v15 = v7;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: MRU eligible NRDevice[%@] = %@", buf, 0x16u);
    }
  }

  v8 = +[NRMigrator sharedMigrator];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007E440;
  v10[3] = &unk_100175F00;
  v11 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v12 = *(a1 + 48);
  v13 = v3;
  v9 = v3;
  [v8 beginMigrationWithDevice:v9 withCompletion:v10];
}

void sub_10007E440(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NRQueue registryDaemonQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007E528;
  v7[3] = &unk_1001783B8;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v6 = v3;
  [v4 dispatchAsync:v7];
}

void sub_10007E528(uint64_t a1)
{
  *(*(a1 + 32) + 18) = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  *(v2 + 96) = 0;

  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10010140C(a1, v6);
    }
  }

  v7 = *(a1 + 32);
  v8 = [objc_opt_class() failureTypeWithError:*(a1 + 40)];
  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        [*(a1 + 32) addBluetoothIdentifierToShortTermFailureLockout:*(a1 + 56)];
        v13 = nr_daemon_log();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

        if (v14)
        {
          v15 = nr_daemon_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_100101524();
          }
        }
      }
    }

    else
    {
      v30 = nr_daemon_log();
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);

      if (v31)
      {
        v32 = nr_daemon_log();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: Migration succeeded", &buf, 2u);
        }
      }

      v33 = [*(a1 + 32) migrator];
      [v33 setMigrationConsent:0 forDeviceID:*(a1 + 48) completion:0];
    }
  }

  else
  {
    switch(v8)
    {
      case 2:
        v16 = nr_daemon_log();
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

        if (v17)
        {
          v18 = nr_daemon_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_1001014E8();
          }
        }

        v19 = [*(a1 + 32) migrator];
        [v19 setMigrationConsent:0 forDeviceID:*(a1 + 48) completion:0];

        *&buf = 0;
        *(&buf + 1) = &buf;
        v38 = 0x3032000000;
        v39 = sub_10007EA1C;
        v40 = sub_10007EA2C;
        v41 = [NROSTransaction transactionWithName:@"retryMigrationAlert"];
        v20 = *(a1 + 32);
        v21 = *(a1 + 48);
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_10007EA34;
        v36[3] = &unk_100178390;
        v36[4] = &buf;
        [v20 setMigrationSoftErrorAlertDelayTimer:v21 deviceID:v36 withBlock:120.0];
        _Block_object_dispose(&buf, 8);

        break;
      case 3:
        v22 = nr_daemon_log();
        v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

        if (v23)
        {
          v24 = nr_daemon_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_1001014AC();
          }
        }

        v25 = +[NRRepeatingAlertEngine sharedInstance];
        [v25 resetStateForAlertWithName:@"MigrationFailedPermanentlyForThisWatch"];

        v26 = +[NRRepeatingAlertEngine sharedInstance];
        [v26 setEnabled:1 withName:@"MigrationFailedPermanentlyForThisWatch"];

        v27 = +[NRRepeatingAlertEngine sharedInstance];
        [v27 presentAlertsIfNeeded];

        v28 = [*(a1 + 32) migrator];
        [v28 setMigrationConsent:0 forDeviceID:*(a1 + 48) completion:0];

        v29 = dispatch_get_global_queue(17, 0);
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_10007EAE4;
        v34[3] = &unk_100175660;
        v35 = *(a1 + 64);
        dispatch_async(v29, v34);

        break;
      case 4:
        v9 = nr_daemon_log();
        v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

        if (v10)
        {
          v11 = nr_daemon_log();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *(a1 + 40);
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "EPMigrationAutoTrigger: Ignorable Error: %@", &buf, 0xCu);
          }
        }

        break;
    }
  }
}

void sub_10007E9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10007EA1C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10007EA34(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = +[NRRepeatingAlertEngine sharedInstance];
    [v3 resetStateForAlertWithName:@"MigrationFailed"];

    v4 = +[NRRepeatingAlertEngine sharedInstance];
    [v4 setEnabled:1 withName:@"MigrationFailed"];

    v5 = +[NRRepeatingAlertEngine sharedInstance];
    [v5 presentAlertsIfNeeded];
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_10007EAE4(uint64_t a1)
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  [v2 unpairWithDevice:*(a1 + 32) withOptions:0 operationHasBegun:0];
}

void sub_10007EBF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10007EC14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10007ECA0;
  v3[3] = &unk_100178430;
  v3[4] = *(a1 + 32);
  [WeakRetained startMigrationOnMRUIfWatchWasFoundWithCompletion:v3];
}

void sub_10007ECA0(uint64_t a1, char a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  *(v4 + 48) = 0;

  if ((a2 & 1) == 0)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 96);
    *(v6 + 96) = 0;
  }
}

void sub_10007F2C4(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = [v3 isAltAccount];
  v5 = [v3 isArchived];
  v6 = [v3 objectForKeyedSubscript:_NRDevicePropertyBluetoothIdentifier];
  v7 = [v6 value];

  v8 = [*(a1 + 40) _cloudIdentifierForDevice:v3];
  v9 = [v3 objectForKeyedSubscript:_NRDevicePropertyAltAccountIdentifier];
  v10 = [v9 value];

  if (v10)
  {
    v11 = [*(a1 + 40) registry];
    v12 = [v11 secureProperties];
    v13 = [v12 objectForKeyedSubscript:v10];
  }

  else
  {
    v13 = 0;
  }

  v14 = +[NRQueue registryDaemonQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10007F4C4;
  v20[3] = &unk_100178480;
  v15 = *(a1 + 32);
  v20[4] = *(a1 + 40);
  v21 = v8;
  v22 = v15;
  v16 = *(a1 + 48);
  v24 = v7;
  v25 = v16;
  v26 = v5;
  v27 = v4;
  v23 = v13;
  v17 = v7;
  v18 = v13;
  v19 = v8;
  [v14 dispatchAsync:v20];
}

void sub_10007F4C4(uint64_t a1)
{
  v2 = [*(a1 + 32) cloud];
  v3 = [v2 deviceUniqueIdentifiers];
  v4 = [v3 containsObject:*(a1 + 40)];

  v55 = @"ExtendedDeviceLockState";
  v56 = &__kCFBooleanTrue;
  [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  v5 = MKBGetDeviceLockState();
  v6 = v5;
  v7 = v5 < 8;
  v8 = MKBDeviceUnlockedSinceBoot();
  v9 = [*(*(a1 + 32) + 144) serviceFromClass:objc_opt_class()];
  v10 = [v9 hasAccounts];
  v11 = [*(a1 + 32) keymaster];
  v12 = [v11 newResourceWithDelegate:*(a1 + 32)];

  if (!v8)
  {
    v19 = nr_daemon_log();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (!v20)
    {
      goto LABEL_30;
    }

    v21 = nr_daemon_log();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    v22 = [*(a1 + 48) UUIDString];
    *buf = 136315394;
    v52 = "[EPMigrationAutoTrigger isDevice:readyToMigrate:]_block_invoke_2";
    v53 = 2114;
    v54 = v22;
    v23 = "%s: %{public}@ NO- Phone needs to be unlocked.";
LABEL_28:
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v23, buf, 0x16u);

    goto LABEL_29;
  }

  if ((*(a1 + 80) & 1) == 0)
  {
    v24 = nr_daemon_log();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

    if (!v25)
    {
LABEL_18:
      v29 = *(*(a1 + 72) + 16);
LABEL_31:
      v29();
      goto LABEL_32;
    }

    v26 = nr_daemon_log();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
LABEL_17:

      goto LABEL_18;
    }

    v27 = [*(a1 + 48) UUIDString];
    *buf = 136315394;
    v52 = "[EPMigrationAutoTrigger isDevice:readyToMigrate:]_block_invoke";
    v53 = 2114;
    v54 = v27;
    v28 = "%s: %{public}@ NO- NanoRegistry device does not exist or is not archived.";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v28, buf, 0x16u);

    goto LABEL_17;
  }

  if ((v10 & 1) == 0)
  {
    v30 = nr_daemon_log();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);

    if (!v31)
    {
      goto LABEL_30;
    }

    v21 = nr_daemon_log();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    v22 = [*(a1 + 48) UUIDString];
    *buf = 136315394;
    v52 = "[EPMigrationAutoTrigger isDevice:readyToMigrate:]_block_invoke";
    v53 = 2114;
    v54 = v22;
    v23 = "%s: %{public}@ NO- There are no IDS accounts on the phone yet.";
    goto LABEL_28;
  }

  if (((*(a1 + 81) | v4) & 1) == 0)
  {
    v32 = nr_daemon_log();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);

    if (!v33)
    {
      goto LABEL_30;
    }

    v21 = nr_daemon_log();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    v22 = [*(a1 + 48) UUIDString];
    *buf = 136315394;
    v52 = "[EPMigrationAutoTrigger isDevice:readyToMigrate:]_block_invoke";
    v53 = 2114;
    v54 = v22;
    v23 = "%s: %{public}@ NO- IDS does not yet have a matching IDSDevice to send a cloud message to.";
    goto LABEL_28;
  }

  if (*(a1 + 81) && !*(a1 + 56))
  {
    v36 = nr_daemon_log();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);

    if (!v37)
    {
      goto LABEL_18;
    }

    v26 = nr_daemon_log();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v27 = [*(a1 + 48) UUIDString];
    *buf = 136315394;
    v52 = "[EPMigrationAutoTrigger isDevice:readyToMigrate:]_block_invoke";
    v53 = 2114;
    v54 = v27;
    v28 = "%s: %{public}@ NO- We don't have an account identifier for the alt account.";
    goto LABEL_16;
  }

  if ((v7 & (0xC9u >> v6) & 1) == 0)
  {
    v34 = nr_daemon_log();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);

    if (v35)
    {
      v21 = nr_daemon_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [*(a1 + 48) UUIDString];
        *buf = 136315394;
        v52 = "[EPMigrationAutoTrigger isDevice:readyToMigrate:]_block_invoke";
        v53 = 2114;
        v54 = v22;
        v23 = "%s: %{public}@ NO- The phone is locked.";
        goto LABEL_28;
      }

LABEL_29:
    }

LABEL_30:
    v29 = *(*(a1 + 72) + 16);
    goto LABEL_31;
  }

  v13 = [v12 key];

  if (!v13)
  {
    v38 = [*(*(a1 + 32) + 144) optionalServiceFromClass:objc_opt_class()];
    v39 = [v38 enabled];
    v40 = nr_daemon_log();
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);

    if (v39)
    {
      if (v41)
      {
        v42 = nr_daemon_log();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = [*(a1 + 48) UUIDString];
          *buf = 136315394;
          v52 = "[EPMigrationAutoTrigger isDevice:readyToMigrate:]_block_invoke";
          v53 = 2114;
          v54 = v43;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%s: %{public}@ NO- The migration key is not yet available in the keychain", buf, 0x16u);
        }

LABEL_44:
      }
    }

    else if (v41)
    {
      v42 = nr_daemon_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v44 = [*(a1 + 48) UUIDString];
        *buf = 136315394;
        v52 = "[EPMigrationAutoTrigger isDevice:readyToMigrate:]_block_invoke";
        v53 = 2114;
        v54 = v44;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%s: %{public}@ NO- Keychain sync is not enabled", buf, 0x16u);
      }

      goto LABEL_44;
    }

    (*(*(a1 + 72) + 16))();

    goto LABEL_32;
  }

  v14 = [EPCheckBluetoothForIRK alloc];
  v15 = *(a1 + 64);
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_10007FBE0;
  v45[3] = &unk_100178458;
  v50 = *(a1 + 81);
  v16 = *(a1 + 48);
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v46 = v16;
  v47 = v17;
  v48 = v18;
  v49 = *(a1 + 72);

LABEL_32:
}

uint64_t sub_10007FBE0(uint64_t a1, uint64_t a2)
{
  if (a2 == 4)
  {
    v3 = *(a1 + 64);
    v4 = nr_daemon_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v3)
    {
      if (!v5)
      {
        return (*(*(a1 + 56) + 16))();
      }

      v6 = nr_daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 32) UUIDString];
        v15 = 136315394;
        v16 = "[EPMigrationAutoTrigger isDevice:readyToMigrate:]_block_invoke";
        v17 = 2114;
        v18 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: %{public}@ YES- Looks like we're good to go for altAccount migration!  Not sending advertisement request yet", &v15, 0x16u);
      }
    }

    else
    {
      if (v5)
      {
        v11 = nr_daemon_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [*(a1 + 32) UUIDString];
          v15 = 136315394;
          v16 = "[EPMigrationAutoTrigger isDevice:readyToMigrate:]_block_invoke";
          v17 = 2114;
          v18 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: %{public}@ YES- Looks like we're good to go! Sending an advertisement request!", &v15, 0x16u);
        }
      }

      v13 = *(a1 + 40);
      v6 = [NSSet setWithObject:*(a1 + 48)];
      [v13 sendMessageToWatchWithRawCloudIdentifiers:v6];
    }

    goto LABEL_14;
  }

  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) UUIDString];
      v15 = 136315394;
      v16 = "[EPMigrationAutoTrigger isDevice:readyToMigrate:]_block_invoke";
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: %{public}@ NO- Bluetooth does not have the key needed to discover the watch.", &v15, 0x16u);
    }

LABEL_14:
  }

  return (*(*(a1 + 56) + 16))();
}

void sub_1000803B8(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1[4])
  {
    v5 = [v3 objectForKeyedSubscript:?];
    v6 = [v5 objectForKeyedSubscript:_NRDevicePropertyBluetoothIdentifier];
    v7 = [v6 value];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 objectForKeyedSubscript:a1[4]];
  v9 = [v8 objectForKeyedSubscript:NRDevicePropertyIsAltAccount];
  v10 = [v9 value];

  v11 = [a1[5] queue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100080568;
  v14[3] = &unk_1001784A8;
  v15 = a1[4];
  v16 = a1[6];
  v17 = v10;
  v18 = v7;
  v19 = a1[7];
  v20 = a1[8];
  v12 = v7;
  v13 = v10;
  dispatch_async(v11, v14);
}

void sub_100080568(uint64_t a1)
{
  v28 = +[NSMutableArray array];
  v26 = [EPRoutingSlipEntry alloc];
  v2 = objc_opt_class();
  v36[0] = @"switchToNRDeviceUUID";
  v3 = [[EPSagaOperandUUID alloc] initWithUUID:*(a1 + 32)];
  v37[0] = v3;
  v36[1] = @"shouldWaitForConnectivity";
  v4 = [[EPSagaOperandNumber alloc] initWithNumber:&__kCFBooleanFalse];
  v37[1] = v4;
  v36[2] = @"shouldRollBack";
  v5 = [[EPSagaOperandNumber alloc] initWithNumber:&__kCFBooleanTrue];
  v37[2] = v5;
  v36[3] = @"setDaemonsEnabled";
  v6 = [[EPSagaOperandNumber alloc] initWithNumber:&off_100186E38];
  v37[3] = v6;
  v36[4] = @"shouldWaitForAssertion";
  v7 = [[EPSagaOperandNumber alloc] initWithNumber:*(a1 + 40)];
  v37[4] = v7;
  v36[5] = @"destinationIsAltAccount";
  v8 = [[EPSagaOperandNumber alloc] initWithNumber:*(a1 + 48)];
  v37[5] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:6];
  v10 = [(EPRoutingSlipEntry *)v26 initWithName:@"assertion" transactionClass:v2 operands:v9];

  [v28 addObject:v10];
  if (*(a1 + 56))
  {
    v27 = [EPRoutingSlipEntry alloc];
    v11 = objc_opt_class();
    v34[0] = @"pingType";
    v12 = [[EPSagaOperandNumber alloc] initWithNumber:&off_100186E50];
    v35[0] = v12;
    v34[1] = @"idsMessagePriority";
    v13 = [[EPSagaOperandNumber alloc] initWithNumber:&off_100186E68];
    v35[1] = v13;
    v34[2] = @"idsDeviceIdentifier";
    v14 = [[EPSagaOperandUUID alloc] initWithUUID:*(a1 + 56)];
    v35[2] = v14;
    v34[3] = @"waitForPingResponse";
    v15 = [[EPSagaOperandNumber alloc] initWithNumber:*(a1 + 48)];
    v35[3] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:4];
    v17 = [(EPRoutingSlipEntry *)v27 initWithName:@"sendPing" transactionClass:v11 operands:v16];

    [v28 addObject:v17];
    v10 = v17;
  }

  v18 = [EPRoutingSlipEntry alloc];
  v19 = objc_opt_class();
  v32 = @"nrDeviceIdentifier";
  v20 = [[EPSagaOperandUUID alloc] initWithUUID:*(a1 + 32)];
  v33 = v20;
  v21 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v22 = [(EPRoutingSlipEntry *)v18 initWithName:@"reunionSync" transactionClass:v19 operands:v21];

  [v28 addObject:v22];
  v23 = [*(a1 + 64) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000809E4;
  block[3] = &unk_100175688;
  v24 = *(a1 + 72);
  v30 = v28;
  v31 = v24;
  v25 = v28;
  dispatch_async(v23, block);
}

void sub_100080C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
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

id sub_100080C9C(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_100080CD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v4 = *(*(a1 + 40) + 8);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v16 = sub_100080F1C;
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

void sub_100080EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100080F1C(void *a1)
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

void sub_10008127C(id *a1)
{
  if ([*(a1[4] + 1) containsObject:a1[5]])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000813A0;
    block[3] = &unk_1001756F8;
    v2 = a1[6];
    *&v3 = a1[5];
    *(&v3 + 1) = a1[4];
    *v7 = v3;
    v4 = a1[7];
    v5 = a1[6];
    *&v6 = v4;
    *(&v6 + 1) = v5;
    v10 = *v7;
    v11 = v6;
    dispatch_async(v2, block);
  }

  else
  {
    v8 = [a1[4] delegate];
    [v8 transactionDidComplete:a1[4]];
  }
}

void sub_1000813A0(uint64_t a1)
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
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling IDSLocalPairingDeletePairedDevice %@", buf, 0xCu);
    }
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = v6;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v13 = v10;
  v11 = *(a1 + 56);
  IDSLocalPairingDeletePairedDevice();
}

void sub_10008152C(uint64_t a1, void *a2)
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
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionUnpairIDSDevice IDSLocalPairingDeletePairedDevice completed with error = %@", buf, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v7 = *(a1 + 56);
  IDSLocalPairingStopForDevice();
}

void sub_100081684(uint64_t a1, void *a2)
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
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionUnpairIDSDevice IDSLocalPairingStopForDevice completed with error = %@", buf, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  v9 = *(a1 + 40);
  v8 = [*(a1 + 48) queue];
  IDSLocalPairingUnpairForDevice();
}

void sub_1000817CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionUnpairIDSDevice IDSLocalPairingUnpairForDevice completed with error = %@", &v8, 0xCu);
    }
  }

  v7 = [*(a1 + 32) delegate];
  [v7 transactionDidComplete:*(a1 + 32)];
}

void sub_1000818C0(uint64_t a1)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v2 = [*(a1 + 40) queue];
  IDSLocalPairingGetPairedDevicesWithCompletionBlock();

  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v3 = [*(a1 + 40) queue];
  IDSLocalPairingGetPairingDevicesWithCompletionBlock();
}

uint64_t sub_1000819E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 8) addObjectsFromArray:a2];
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t sub_100081A40(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 8) addObjectsFromArray:a2];
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_100081D44(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = [v3 objectForKeyedSubscript:_NRDevicePropertyBluetoothIdentifier];
  v5 = [v4 value];

  if (v5)
  {
    v6 = dispatch_get_global_queue(25, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100081EFC;
    block[3] = &unk_1001756F8;
    v17 = v5;
    v18 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v19 = v7;
    v20 = v8;
    dispatch_async(v6, block);
  }

  else
  {
    v9 = [*(*(a1 + 56) + 48) queue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100082148;
    v12[3] = &unk_1001758F8;
    v13 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v14 = v10;
    v15 = v11;
    dispatch_async(v9, v12);

    v6 = v13;
  }
}

void sub_100081EFC(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionUnpairDevice: beginTransactionWithRoutingSlipEntry calling IDSLocalPairingUnpairStartForDevice", buf, 2u);
    }
  }

  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v6 = [*(*(a1 + 56) + 48) queue];
  IDSLocalPairingUnpairStartForDevice();
}

void sub_10008202C(uint64_t a1, void *a2)
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
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionUnpairDevice: beginTransactionWithRoutingSlipEntry IDSLocalPairingUnpairStartForDevice completed %@", buf, 0xCu);
    }
  }

  if (v3)
  {
    v7 = [*(a1 + 32) errors];
    [v7 addObject:v3];
  }

  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10.receiver = *(a1 + 48);
  v10.super_class = EPSagaTransactionUnpairDevice;
  objc_msgSendSuper2(&v10, "beginTransactionWithRoutingSlipEntry:serviceRegistry:", v9, v8);
}

id sub_100082148(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v4.receiver = *(a1 + 48);
  v4.super_class = EPSagaTransactionUnpairDevice;
  return objc_msgSendSuper2(&v4, "beginTransactionWithRoutingSlipEntry:serviceRegistry:", v2, v1);
}

uint64_t sub_100082524(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10008253C(uint64_t a1, void *a2)
{
  if (*(*(*(a1 + 104) + 8) + 40))
  {
    v3 = [a2 objectForKeyedSubscript:?];
    v4 = [v3 objectForKeyedSubscript:_NRDevicePropertyBluetoothIdentifier];
    v5 = [v4 value];

    v6 = [v3 objectForKeyedSubscript:_NRDevicePropertyNetworkRelayIdentifier];
    v55 = [v6 value];

    v7 = [v3 objectForKeyedSubscript:NRDevicePropertyAdvertisedName];
    v54 = [v7 value];

    if ([*(a1 + 40) BOOLValue])
    {
      v8 = 1;
    }

    else
    {
      v8 = [v3 isArchived];
    }

    v16 = [v3 isPaired];
    v53 = v8;
    v17 = v8 ^ 1;
    v52 = [v3 isAltAccount];
    v18 = [*(a1 + 48) objectForKeyedSubscript:@"shouldConnectDevice"];
    v19 = [v18 BOOLValue];

    v56 = v5;
    if (v5)
    {
      v20 = v17;
    }

    else
    {
      v20 = 0;
    }

    v21 = [v3 isSetup];
    v22 = [v3 objectForKeyedSubscript:NRDevicePropertyWatchBuddyStage];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
      v24 = v23;
      if (v23)
      {
        v25 = [v23 unsignedIntValue];
        if (!*(*(*(a1 + 112) + 8) + 40) && (v25 & 1) != 0)
        {
          v26 = nr_daemon_log();
          v50 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

          if (v50)
          {
            v27 = nr_daemon_log();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Watch to unpair is past activation state, setting obliteration even though not originally requested", buf, 2u);
            }
          }

          v28 = *(*(a1 + 112) + 8);
          v29 = *(v28 + 40);
          *(v28 + 40) = @"unpairingPastActivation";
        }
      }
    }

    v51 = v22;
    v30 = v16 & v17;
    v31 = v19;
    v32 = v20 & v19;
    v33 = v21 & v17;
    v34 = [[NSUUID alloc] initWithUUIDString:@"8240CA17-6F5D-4C8F-85C4-F4A705A0C20F"];
    if ([v3 supportsCapability:v34])
    {
      v35 = +[NRFeatureFlags sharedInstance];
      if ([v35 networkRelayPairing])
      {
        v36 = 1;
      }

      else
      {
        v37 = +[NRSystemProperties sharedInstance];
        v36 = [v37 isVirtualDevice];
      }
    }

    else
    {
      v36 = 0;
    }

    v38 = [*(*(a1 + 32) + 48) queue];
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_100082AB4;
    v57[3] = &unk_1001784D0;
    v68 = v32;
    v39 = *(a1 + 104);
    v69 = v53;
    v66 = v39;
    v58 = v56;
    v70 = v31;
    v40 = *(a1 + 56);
    v71 = v30;
    v41 = *(a1 + 64);
    v72 = v52;
    v67 = *(a1 + 112);
    v42 = *(a1 + 72);
    v43 = *(a1 + 80);
    *&v44 = v42;
    *(&v44 + 1) = v43;
    *&v45 = v40;
    *(&v45 + 1) = v41;
    v59 = v45;
    v60 = v44;
    v61 = *(a1 + 88);
    v62 = v54;
    v73 = v36;
    v74 = v33;
    v46 = *(a1 + 32);
    v63 = v55;
    v64 = v46;
    v65 = *(a1 + 96);
    v47 = v55;
    v48 = v54;
    v49 = v56;
    dispatch_async(v38, v57);

    v15 = v51;
  }

  else
  {
    v9 = nr_daemon_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

    if (v10)
    {
      v11 = nr_daemon_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100101560(v11);
      }
    }

    v12 = +[NSMutableArray array];
    v13 = [*(*(a1 + 32) + 40) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100082A98;
    block[3] = &unk_100175688;
    v14 = *(a1 + 96);
    v77 = v12;
    v78 = v14;
    v3 = v12;
    dispatch_async(v13, block);

    v15 = v78;
  }
}

void sub_100082AB4(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  if (*(a1 + 128) == 1)
  {
    v3 = [EPRoutingSlipEntry alloc];
    v4 = objc_opt_class();
    v140[0] = @"switchToNRDeviceUUID";
    v5 = [[EPSagaOperandUUID alloc] initWithUUID:*(*(*(a1 + 112) + 8) + 40)];
    v141[0] = v5;
    v140[1] = @"shouldWaitForAssertion";
    v6 = [[EPSagaOperandNumber alloc] initWithNumber:&__kCFBooleanTrue];
    v141[1] = v6;
    v7 = [NSDictionary dictionaryWithObjects:v141 forKeys:v140 count:2];
    v8 = [(EPRoutingSlipEntry *)v3 initWithName:@"switch" transactionClass:v4 operands:v7];

    [v2 addObject:v8];
LABEL_3:

    goto LABEL_12;
  }

  v9 = nr_daemon_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v8 = nr_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"NO";
      if (*(a1 + 129))
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v13 = *(a1 + 32);
      if (*(a1 + 130))
      {
        v11 = @"YES";
      }

      *buf = 138412802;
      *v136 = v12;
      *&v136[8] = 2112;
      v137 = v13;
      v138 = 2112;
      v139 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not going to create switch transaction.                          Is migrationUnpair %@;                          bluetoothID %@;                          shouldConnectDevice %@", buf, 0x20u);
    }

    goto LABEL_3;
  }

LABEL_12:
  v14 = [EPRoutingSlipEntry alloc];
  v15 = objc_opt_class();
  v133[0] = @"nrDeviceIdentifier";
  v16 = [[EPSagaOperandUUID alloc] initWithUUID:*(*(*(a1 + 112) + 8) + 40)];
  v134[0] = v16;
  v133[1] = @"pairingReport";
  v17 = [[EPSagaOperandPairingReport alloc] initWithPairingReport:*(a1 + 40)];
  v134[1] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v134 forKeys:v133 count:2];
  v19 = [(EPRoutingSlipEntry *)v14 initWithName:@"updateDeviceForUnpairing" transactionClass:v15 operands:v18];

  [v2 addObject:v19];
  if (*(a1 + 128) == 1)
  {
    v20 = [EPRoutingSlipEntry alloc];
    v21 = objc_opt_class();
    v131[0] = @"idsDeviceIdentifier";
    v22 = [[EPSagaOperandUUID alloc] initWithUUID:*(a1 + 32)];
    v132[0] = v22;
    v131[1] = @"timeoutDuration";
    v23 = [[EPSagaOperandNumber alloc] initWithNumber:&off_100186E80];
    v132[1] = v23;
    v131[2] = @"showUnpairAlert";
    v24 = [EPSagaOperandNumber alloc];
    if (*(a1 + 131))
    {
      v25 = &__kCFBooleanTrue;
    }

    else
    {
      v25 = &__kCFBooleanFalse;
    }

    v26 = [(EPSagaOperandNumber *)v24 initWithNumber:v25];
    v132[2] = v26;
    v27 = [NSDictionary dictionaryWithObjects:v132 forKeys:v131 count:3];
    v28 = [(EPRoutingSlipEntry *)v20 initWithName:@"waitForConnectivity" transactionClass:v21 operands:v27];

    [v2 addObject:v28];
    v19 = v28;
  }

  else
  {
    v29 = nr_daemon_log();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

    if (v30)
    {
      v31 = nr_daemon_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = @"NO";
        if (*(a1 + 129))
        {
          v33 = @"YES";
        }

        else
        {
          v33 = @"NO";
        }

        v34 = *(a1 + 32);
        if (*(a1 + 130))
        {
          v32 = @"YES";
        }

        *buf = 138412802;
        *v136 = v33;
        *&v136[8] = 2112;
        v137 = v34;
        v138 = 2112;
        v139 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Not going to create waitForConnectivity transaction.                          Is migrationUnpair %@;                          bluetoothID %@;                          shouldConnectDevice %@", buf, 0x20u);
      }
    }
  }

  if (*(a1 + 131) == 1 && ([*(a1 + 48) BOOLValue] & 1) == 0)
  {
    v35 = [EPRoutingSlipEntry alloc];
    v36 = objc_opt_class();
    v129[0] = @"nrDeviceIdentifier";
    v37 = [[EPSagaOperandUUID alloc] initWithUUID:*(*(*(a1 + 112) + 8) + 40)];
    v130[0] = v37;
    v129[1] = @"completeHealthSyncForUnpairing";
    v38 = [[EPSagaOperandNumber alloc] initWithNumber:&__kCFBooleanTrue];
    v130[1] = v38;
    v39 = [NSDictionary dictionaryWithObjects:v130 forKeys:v129 count:2];
    v40 = [(EPRoutingSlipEntry *)v35 initWithName:@"triggerHealthSync" transactionClass:v36 operands:v39];

    [v2 addObject:v40];
    v19 = v40;
  }

  if (*(a1 + 132) == 1)
  {
    v41 = [EPRoutingSlipEntry alloc];
    v42 = objc_opt_class();
    v127 = @"nrDeviceIdentifier";
    v43 = [[EPSagaOperandUUID alloc] initWithUUID:*(*(*(a1 + 112) + 8) + 40)];
    v128 = v43;
    v44 = [NSDictionary dictionaryWithObjects:&v128 forKeys:&v127 count:1];
    v45 = [(EPRoutingSlipEntry *)v41 initWithName:@"TearDownTinkerHealthSyncZones" transactionClass:v42 operands:v44];

    [v2 addObject:v45];
    v19 = v45;
  }

  v46 = [EPRoutingSlipEntry alloc];
  v47 = objc_opt_class();
  v125 = @"setDaemonsEnabled";
  v48 = [[EPSagaOperandNumber alloc] initWithNumber:&off_100186E98];
  v126 = v48;
  v49 = [NSDictionary dictionaryWithObjects:&v126 forKeys:&v125 count:1];
  v50 = [(EPRoutingSlipEntry *)v46 initWithName:@"disableDaemons" transactionClass:v47 operands:v49];

  [v2 addObject:v50];
  if (*(a1 + 32))
  {
    if ((*(a1 + 129) & 1) == 0)
    {
      v106 = [EPRoutingSlipEntry alloc];
      v105 = objc_opt_class();
      v123[0] = @"nrDeviceIdentifier";
      v108 = [[EPSagaOperandUUID alloc] initWithUUID:*(*(*(a1 + 112) + 8) + 40)];
      v124[0] = v108;
      v123[1] = @"idsDeviceIdentifier";
      v107 = [[EPSagaOperandUUID alloc] initWithUUID:*(a1 + 32)];
      v124[1] = v107;
      v123[2] = @"shouldObliterate";
      v51 = [EPSagaOperandNumber alloc];
      if (*(*(*(a1 + 120) + 8) + 40))
      {
        v52 = &__kCFBooleanTrue;
      }

      else
      {
        v52 = &__kCFBooleanFalse;
      }

      v104 = [(EPSagaOperandNumber *)v51 initWithNumber:v52];
      v124[2] = v104;
      v123[3] = @"shouldPreserveESim";
      v53 = [[EPSagaOperandNumber alloc] initWithNumber:*(a1 + 56)];
      v124[3] = v53;
      v123[4] = @"shouldBrick";
      v54 = [[EPSagaOperandNumber alloc] initWithNumber:*(a1 + 64)];
      v124[4] = v54;
      v123[5] = @"pairingReport";
      v55 = [[EPSagaOperandPairingReport alloc] initWithPairingReport:*(a1 + 40)];
      v124[5] = v55;
      v123[6] = @"remoteUnpairRequestID";
      v56 = [[EPSagaOperandUUID alloc] initWithUUID:*(a1 + 72)];
      v124[6] = v56;
      v123[7] = @"advertisedName";
      v57 = [[EPSagaOperandString alloc] initWithString:*(a1 + 80)];
      v124[7] = v57;
      v58 = [NSDictionary dictionaryWithObjects:v124 forKeys:v123 count:8];
      v59 = [(EPRoutingSlipEntry *)v106 initWithName:@"unpairMessage" transactionClass:v105 operands:v58];

      [v2 addObject:v59];
      v50 = v59;
    }

    if (([*(a1 + 48) BOOLValue] & 1) == 0)
    {
      v60 = [EPRoutingSlipEntry alloc];
      v61 = objc_opt_class();
      v121 = @"idsDeviceIdentifier";
      v62 = [[EPSagaOperandUUID alloc] initWithUUID:*(a1 + 32)];
      v122 = v62;
      v63 = [NSDictionary dictionaryWithObjects:&v122 forKeys:&v121 count:1];
      v64 = [(EPRoutingSlipEntry *)v60 initWithName:@"unpairIDS" transactionClass:v61 operands:v63];

      [v2 addObject:v64];
      if (*(a1 + 129))
      {
        v50 = v64;
      }

      else
      {
        v65 = *(a1 + 133);
        v66 = [EPRoutingSlipEntry alloc];
        v67 = objc_opt_class();
        if (v65)
        {
          v117 = @"networkRelayID";
          v68 = [[EPSagaOperandUUID alloc] initWithUUID:*(a1 + 88)];
          v118 = v68;
          v69 = [NSDictionary dictionaryWithObjects:&v118 forKeys:&v117 count:1];
          v70 = @"unpairNetworkRelay";
        }

        else
        {
          v119 = @"coreBluetoothID";
          v68 = [[EPSagaOperandUUID alloc] initWithUUID:*(a1 + 32)];
          v120 = v68;
          v69 = [NSDictionary dictionaryWithObjects:&v120 forKeys:&v119 count:1];
          v70 = @"unpairBluetooth";
        }

        v50 = [(EPRoutingSlipEntry *)v66 initWithName:v70 transactionClass:v67 operands:v69];

        [v2 addObject:v50];
      }
    }
  }

  if ((*(a1 + 129) & 1) == 0)
  {
    v71 = [[EPRoutingSlipEntry alloc] initWithName:@"deleteICloudPaymentCards" transactionClass:objc_opt_class() operands:&__NSDictionary0__struct];

    [v2 addObject:v71];
    v50 = v71;
  }

  if ((*(a1 + 132) & 1) == 0 && ((*(a1 + 134) & 1) != 0 || *(a1 + 129) == 1))
  {
    v74 = nr_daemon_log();
    v75 = os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT);

    if (v75)
    {
      v76 = nr_daemon_log();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        v77 = *(a1 + 134);
        v78 = *(a1 + 129);
        *buf = 67109376;
        *v136 = v77;
        *&v136[4] = 1024;
        *&v136[6] = v78;
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Adding createBackup to EPSagaTransactionUnpairDevice: isSetup: %{BOOL}d migrationUnpair: %{BOOL}d", buf, 0xEu);
      }
    }

    v79 = [EPRoutingSlipEntry alloc];
    v80 = objc_opt_class();
    v115 = @"nrDeviceIdentifier";
    v81 = [[EPSagaOperandUUID alloc] initWithUUID:*(*(*(a1 + 112) + 8) + 40)];
    v116 = v81;
    v82 = [NSDictionary dictionaryWithObjects:&v116 forKeys:&v115 count:1];
    v83 = [(EPRoutingSlipEntry *)v79 initWithName:@"createBackup" transactionClass:v80 operands:v82];

    v73 = &NRPairedDeviceRegistryPairedDeviceDidChangeCapabilitiesDarwinNotification_ptr;
    v72 = a1;
    [v2 addObject:v83];
    v50 = v83;
  }

  else
  {
    v72 = a1;
    v73 = &NRPairedDeviceRegistryPairedDeviceDidChangeCapabilitiesDarwinNotification_ptr;
  }

  v84 = [EPRoutingSlipEntry alloc];
  v85 = objc_opt_class();
  v113 = @"nrDeviceIdentifier";
  v86 = v72;
  v87 = [[EPSagaOperandUUID alloc] initWithUUID:*(*(*(v72 + 112) + 8) + 40)];
  v114 = v87;
  [v73[127] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
  v89 = v88 = v73;
  v90 = [(EPRoutingSlipEntry *)v84 initWithName:@"quarantineFiles" transactionClass:v85 operands:v89];

  [v2 addObject:v90];
  v91 = [EPRoutingSlipEntry alloc];
  v92 = objc_opt_class();
  v111 = @"nrDeviceIdentifier";
  v93 = [[EPSagaOperandUUID alloc] initWithUUID:*(*(*(v86 + 112) + 8) + 40)];
  v112 = v93;
  v94 = [v88[127] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
  v95 = [(EPRoutingSlipEntry *)v91 initWithName:@"deleteFiles" transactionClass:v92 operands:v94];

  [v2 addObject:v95];
  v96 = [EPRoutingSlipEntry alloc];
  v97 = objc_opt_class();
  v109 = @"transactionDiff";
  v98 = [EPSagaOperandDiff alloc];
  v99 = [*(v86 + 96) _deviceCollectionDiffWithPairingID:*(*(*(v86 + 112) + 8) + 40)];
  v100 = [(EPSagaOperandDiff *)v98 initWithDiff:v99];
  v110 = v100;
  v101 = [v88[127] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
  v102 = [(EPRoutingSlipEntry *)v96 initWithName:@"deleteFromDeviceCollection" transactionClass:v97 operands:v101];

  [v2 addObject:v102];
  v103 = [[EPRoutingSlipEntry alloc] initWithName:@"updateAppRemovability" transactionClass:objc_opt_class() operands:&__NSDictionary0__struct];

  [v2 addObject:v103];
  (*(*(v86 + 104) + 16))();
}

void sub_100083D04(uint64_t a1, void *a2)
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
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Tinker migration sent", v8, 2u);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

void sub_100083DBC(uint64_t a1, void *a2)
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
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Tinker migration response %@", buf, 0xCu);
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
    v14 = [NSError errorWithDomain:@"com.apple.nanoregistry.NRRemoteObjectTinker" code:1 userInfo:v11];
    (*(v7 + 16))(v7, v14, 0);

    goto LABEL_10;
  }
}

void sub_100084110(uint64_t a1, void *a2)
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
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cloud terms sent to tinker watches", v8, 2u);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

void sub_10008439C(id a1, NSError *a2)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cloud SystemVersion message sent", v5, 2u);
    }
  }
}

void sub_10008455C(id a1, NSError *a2)
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

void sub_100084728(uint64_t a1, void *a2)
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

void sub_1000847E0(uint64_t a1, void *a2)
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

void sub_100084A54(uint64_t a1, void *a2)
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
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Phone Side Information for Watch transfer sent", v8, 2u);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

void sub_100084E34(uint64_t a1)
{
  v2 = [*(a1 + 32) _deviceDetailsFromCollectionHistory:*(a1 + 40)];
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 56);
      v7 = [v2 migratingDeviceId];
      v16 = 136315650;
      v17 = "[NRRTCMigrationReporter finishMigrationMetricWithDeviceHistory:success:error:]_block_invoke";
      v18 = 1024;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s success %{BOOL}d - migrating Device ID: %@", &v16, 0x1Cu);
    }
  }

  v8 = [*(a1 + 48) domain];
  v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 48) code]);
  v10 = [*(a1 + 48) userInfo];
  v11 = [v10 objectForKey:NSLocalizedDescriptionKey];

  v12 = [*(a1 + 32) migrationReportManager];
  [v12 setErrorCode:v9 domain:v8 description:v11];

  v13 = [*(a1 + 32) migrationReportManager];
  [v13 addDeviceDetails:v2];

  v14 = [*(a1 + 32) migrationReportManager];
  [v14 setIsAutomation:_NRIsAutomated()];

  v15 = [*(a1 + 32) migrationReportManager];
  [v15 setMigrationSucceeded:*(a1 + 56)];

  [*(a1 + 32) _submitRTCMetric];
}

void sub_100085498(uint64_t a1)
{
  if (!*(*(a1 + 32) + 16))
  {
    v2 = [[BRRTCMigrationReportManager alloc] initWithPairingID:*(a1 + 40)];
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = v2;
  }

  v5 = *(a1 + 56);
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      [*(*(a1 + 32) + 16) setMigrationDeviceUnpairedBecauseStale:1];
    }

    else if (v5 == 5)
    {
      [*(*(a1 + 32) + 16) setMigrationDeviceUnpairedByUserAction:1];
    }
  }

  else if (v5)
  {
    if (v5 == 2)
    {
      [*(*(a1 + 32) + 16) setMigrationDeviceUnpairedBecauseKeychainIsOff:1];
    }
  }

  else
  {
    [*(*(a1 + 32) + 16) setMigrationFailedBTKeysNotSynced:1];
  }

  v7 = [*(a1 + 32) _deviceDetailsFromCollectionHistory:*(a1 + 48)];
  v6 = [*(a1 + 32) migrationReportManager];
  [v6 addDeviceDetails:v7];

  [*(a1 + 32) _submitRTCMetric];
}

void sub_100086D78(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) devicesDictionary];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [*(a1 + 32) devicesDictionary];
        v9 = [v8 objectForKeyedSubscript:v7];

        if ([v9 pendingPairingRequest])
        {
          [*(a1 + 40) advertiser:*(a1 + 40) receivedPairingRequestForDevice:v9];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_100087F28(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 characteristic];
  v6 = *(a1 + 32);
  v7 = *(v6 + 128);
  *(v6 + 128) = v5;

  v8 = [*(a1 + 40) central];
  v9 = *(a1 + 32);
  v10 = *(v9 + 136);
  *(v9 + 136) = v8;

  v11 = [*(a1 + 40) value];
  [v4 advertiser:v4 receivedData:v11];
}

id sub_100087FE4(uint64_t a1, int a2)
{
  v4 = sub_1000A98C0();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = sub_1000A98C0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"failure";
      if (a2)
      {
        v7 = @"success";
      }

      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Calling CoreBluetooth CBPeripheralManager respondToRequest:withResult: with %{public}@", &v10, 0xCu);
    }
  }

  if (a2)
  {
    v8 = 0;
  }

  else
  {
    v8 = 3;
  }

  return [*(a1 + 32) respondToRequest:*(a1 + 40) withResult:v8];
}

void sub_1000883C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000A98C0();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = sub_1000A98C0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 length]);
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Calling CoreBluetooth CBPeripheralManager respondToRequest:withResult: data.length=%{public}@", &v10, 0xCu);
    }
  }

  if (v3)
  {
    v8 = [v3 subdataWithRange:{objc_msgSend(*(a1 + 32), "offset"), objc_msgSend(v3, "length") - objc_msgSend(*(a1 + 32), "offset")}];
    [*(a1 + 32) setValue:v8];

    v9 = 0;
  }

  else
  {
    v9 = 6;
  }

  [*(a1 + 40) respondToRequest:*(a1 + 32) withResult:v9];
}

void sub_100088C4C(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100088CD4;
  v2[3] = &unk_1001785C0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 enumerateResourcesWithBlock:v2];
}

void sub_100088E5C(id a1)
{
  v1 = objc_alloc_init(NRTailspinCapture);
  v2 = qword_1001B38B0;
  qword_1001B38B0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100089088(uint64_t a1)
{
  v2 = nr_daemon_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v26 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#tailspin happening for %@", buf, 0xCu);
  }

  v4 = +[NSFileManager defaultManager];
  v24 = 0;
  v5 = [v4 createDirectoryAtPath:@"/private/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/NanoRegistry" withIntermediateDirectories:1 attributes:0 error:&v24];
  v6 = v24;

  if (v5)
  {
    v7 = [*(a1 + 40) formatter];
    v8 = +[NSDate now];
    v9 = [v7 stringFromDate:v8];

    v10 = [NSString stringWithFormat:@"%@_%@.tailspin", *(a1 + 32), v9];
    v11 = [@"/private/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/NanoRegistry" stringByAppendingPathComponent:v10];
    v12 = objc_alloc_init(NSMutableDictionary);
    [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:UnsafePointer];
    v13 = [NSString stringWithFormat:@"Client %@ XPC call took too long", *(a1 + 32)];
    [v12 setObject:v13 forKeyedSubscript:UnsafePointer];

    if (*(a1 + 48))
    {
      v14 = [NSNumber numberWithUnsignedLongLong:?];
      [v12 setObject:v14 forKeyedSubscript:UnsafePointer];
    }

    v15 = open([v11 UTF8String], 1538, 432);
    if (v15 == -1)
    {
      if (([*(a1 + 40) loggedOpenFail] & 1) == 0)
      {
        v21 = nr_daemon_log();
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

        if (v22)
        {
          v23 = nr_daemon_log();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_100101680(v11, v23);
          }
        }

        [*(a1 + 40) setLoggedOpenFail:1];
      }
    }

    else
    {
      v16 = v15;
      v17 = tailspin_dump_output_with_options_sync();
      close(v16);
      v18 = nr_daemon_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 32);
        v20 = CFAbsoluteTimeGetCurrent() - *(a1 + 56);
        *buf = 138412802;
        v26 = v19;
        v27 = 2048;
        v28 = v20;
        v29 = 1024;
        v30 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#tailspin for %@ complete %.02f sec, success: %{BOOL}d", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v9 = nr_daemon_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#tailspin error making target directory %@", buf, 0xCu);
    }
  }
}

void sub_100089658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100089678(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionPrepareIDSServices: Initialized IDS services.", buf, 2u);
    }
  }

  v5 = [*(*(a1 + 32) + 8) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100089788;
  block[3] = &unk_100175EB8;
  objc_copyWeak(&v7, (a1 + 40));
  dispatch_async(v5, block);

  objc_destroyWeak(&v7);
}

void sub_100089788(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _transactionCompleted];
}

void sub_100089A54(uint64_t a1)
{
  v2 = nr_daemon_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_daemon_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionPrepareIDSServices: Timeout triggered", v8, 2u);
    }
  }

  dispatch_source_cancel(*(*(a1 + 32) + 16));
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = 0;

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _transactionCompleted];
}

uint64_t sub_100089CF8(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1001B38B8;
  qword_1001B38B8 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_100089DC8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() sharedInstance];
  v4 = [v3 activityGroups];
  [v4 addObject:*(a1 + 40)];

  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "NRPowerAssertion activity group added: %{public}@", &v9, 0xCu);
    }
  }
}

uint64_t sub_10008A3F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10008A40C(uint64_t a1)
{
  [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
  v2 = +[NSUUID UUID];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = objc_opt_new();
  [v5 setName:*(a1 + 40)];
  [v5 setUuid:*(*(*(a1 + 48) + 8) + 40)];
  [*(*(a1 + 32) + 16) setObject:v5 forKeyedSubscript:*(*(*(a1 + 48) + 8) + 40)];
  if ([*(a1 + 32) containsProcessGroup])
  {
    v6 = *(a1 + 32);
    if (!*(v6 + 48))
    {
      v7 = [NROSTransaction transactionWithName:@"powerAssertion"];
      v8 = *(a1 + 32);
      v9 = *(v8 + 48);
      *(v8 + 48) = v7;

      v6 = *(a1 + 32);
    }

    if (!*(v6 + 12))
    {
      if (*(v6 + 8))
      {
        v10 = nr_daemon_log();
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

        if (v11)
        {
          v12 = nr_daemon_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Not creating NRPowerAssertion power assertion because the lockout timer has timed out!", buf, 2u);
          }
        }
      }

      else
      {
        [v6 takeAssertion];
        if (!*(*(a1 + 32) + 64))
        {
          v13 = nr_daemon_log();
          v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

          if (v14)
          {
            v15 = nr_daemon_log();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "NRPowerAssertion creating lockout timer", buf, 2u);
            }
          }

          v16 = *(a1 + 32);
          v17 = *(v16 + 40);
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_10008A690;
          v21[3] = &unk_100175660;
          v21[4] = v16;
          v18 = [TimerFactory timerWithIdentifier:@"com.apple.nanoregistry.NRPowerAssertion.assertionLockoutTimer" delay:1 gracePeriod:v17 waking:v21 handlerQueue:456.0 handlerBlock:0.0];
          v19 = *(a1 + 32);
          v20 = *(v19 + 64);
          *(v19 + 64) = v18;
        }
      }
    }
  }

  [*(a1 + 32) dumpProcesses:*(*(*(a1 + 48) + 8) + 40) isAdded:1];
}

void sub_10008AAA4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 12))
  {
    v3 = [*(a1 + 40) isEqual:*(v2 + 56)];
    v2 = *(a1 + 32);
    if ((v3 & 1) == 0)
    {
      v4 = [objc_opt_class() takeAssertionWithSuffix:*(a1 + 40)];
      v2 = *(a1 + 32);
      if (v4)
      {
        [objc_opt_class() releaseAssertion:*(*(a1 + 32) + 12)];
        *(*(a1 + 32) + 12) = v4;
        v2 = *(a1 + 32);
      }
    }
  }

  v5 = *(a1 + 40);
  v6 = (v2 + 56);

  objc_storeStrong(v6, v5);
}

void sub_10008ABAC(uint64_t a1)
{
  v2 = [*(a1 + 32) containsProcessGroup];
  v3 = *(a1 + 32);
  if (v2)
  {
    if ((*(v3 + 8) & 1) == 0)
    {
      *(v3 + 8) = 1;
      v4 = *(*(a1 + 32) + 12);
      if (v4)
      {
        IOPMAssertionRelease(v4);
        *(*(a1 + 32) + 12) = 0;
        v5 = nr_daemon_log();
        v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

        if (v6)
        {
          v7 = nr_daemon_log();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Assertion lockout timer: NRPowerAssertion power assertion released, _assertionLockoutTimerDidTimeOut set", buf, 2u);
          }

LABEL_13:
        }
      }
    }
  }

  else if (*(v3 + 48))
  {
    v8 = nr_daemon_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = nr_daemon_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Assertion lockout timer: No power assertion called for, no reset items, NRPowerAssertion releasing transaction", v14, 2u);
      }
    }

    v11 = *(a1 + 32);
    v7 = *(v11 + 48);
    *(v11 + 48) = 0;
    goto LABEL_13;
  }

  v12 = *(a1 + 32);
  v13 = *(v12 + 64);
  *(v12 + 64) = 0;
}

id NRClassesForPropertiesWithArray(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (qword_1001B38D0 == -1)
  {
    if (v1)
    {
LABEL_3:
      v3 = [NSMutableSet setWithSet:qword_1001B38C8];
      v4 = [NSSet setWithArray:v2];
      [v3 unionSet:v4];

      goto LABEL_6;
    }
  }

  else
  {
    sub_100101720();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v3 = qword_1001B38C8;
LABEL_6:

  return v3;
}

void sub_10008B424(id a1)
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
  v1 = [NSArray arrayWithObjects:&v4 count:11];
  v2 = [NSSet setWithArray:v1, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13];
  v3 = qword_1001B38C8;
  qword_1001B38C8 = v2;
}

uint64_t sub_10008B80C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        v59 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v59 & 0x7F) << v5;
        if ((v59 & 0x80) == 0)
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
      if ((v12 >> 3) > 3)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v50 = 0;
          v51 = 0;
          v52 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v60 = 0;
            v53 = [a2 position] + 1;
            if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
            {
              v55 = [a2 data];
              [v55 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v52 |= (v60 & 0x7F) << v50;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v11 = v51++ >= 9;
            if (v11)
            {
              v33 = 0;
              goto LABEL_101;
            }
          }

          if ([a2 hasError])
          {
            v33 = 0;
          }

          else
          {
            v33 = v52;
          }

LABEL_101:
          v57 = 16;
LABEL_102:
          *(a1 + v57) = v33;
          goto LABEL_103;
        }

        if (v13 != 3)
        {
          goto LABEL_54;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 36) |= 0x10u;
        while (1)
        {
          v63 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v63 & 0x7F) << v21;
          if ((v63 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_96;
          }
        }

        v20 = (v23 != 0) & ~[a2 hasError];
LABEL_96:
        v56 = 33;
        goto LABEL_97;
      }

      v34 = PBReaderReadString();
      v35 = *(a1 + 24);
      *(a1 + 24) = v34;

LABEL_103:
      v58 = [a2 position];
      if (v58 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 5)
    {
      if (v13 != 6)
      {
        if (v13 != 7)
        {
LABEL_54:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_103;
        }

        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 36) |= 4u;
        while (1)
        {
          v65 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v65 & 0x7F) << v27;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            v33 = 0;
            goto LABEL_94;
          }
        }

        if ([a2 hasError])
        {
          v33 = 0;
        }

        else
        {
          v33 = v29;
        }

LABEL_94:
        v57 = 20;
        goto LABEL_102;
      }

      v44 = 0;
      v45 = 0;
      v46 = 0;
      *(a1 + 36) |= 8u;
      while (1)
      {
        v61 = 0;
        v47 = [a2 position] + 1;
        if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
        {
          v49 = [a2 data];
          [v49 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v46 |= (v61 & 0x7F) << v44;
        if ((v61 & 0x80) == 0)
        {
          break;
        }

        v44 += 7;
        v11 = v45++ >= 9;
        if (v11)
        {
          LOBYTE(v20) = 0;
          goto LABEL_88;
        }
      }

      v20 = (v46 != 0) & ~[a2 hasError];
LABEL_88:
      v56 = 32;
    }

    else
    {
      if (v13 == 4)
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 36) |= 1u;
        while (1)
        {
          v64 = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v64 & 0x7F) << v37;
          if ((v64 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            v43 = 0;
            goto LABEL_86;
          }
        }

        if ([a2 hasError])
        {
          v43 = 0;
        }

        else
        {
          v43 = v39;
        }

LABEL_86:
        *(a1 + 8) = v43;
        goto LABEL_103;
      }

      if (v13 != 5)
      {
        goto LABEL_54;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 36) |= 0x20u;
      while (1)
      {
        v62 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v62 & 0x7F) << v14;
        if ((v62 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          LOBYTE(v20) = 0;
          goto LABEL_90;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_90:
      v56 = 34;
    }

LABEL_97:
    *(a1 + v56) = v20;
    goto LABEL_103;
  }

  return [a2 hasError] ^ 1;
}

void sub_10008C7B0(uint64_t a1)
{
  v2 = [*(a1 + 32) _makeActiveDeviceCollectionDiffWithPairingID:*(a1 + 40)];
  v3 = [*(a1 + 48) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008C888;
  block[3] = &unk_1001758F8;
  v6 = *(a1 + 56);
  v7 = v2;
  v8 = *(a1 + 32);
  v4 = v2;
  dispatch_async(v3, block);
}

void sub_10008C888(uint64_t a1)
{
  v2 = [[EPSagaOperandDiff alloc] initWithDiff:*(a1 + 40)];
  v3 = [*(a1 + 32) operands];
  [v3 setObject:v2 forKeyedSubscript:@"deviceCollectionWaitingTransactionDiff"];

  v4 = [*(a1 + 48) delegate];
  [v4 transactionDidComplete:*(a1 + 48)];
}

void sub_10008EDA0(uint64_t a1)
{
  v1 = a1;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    v20 = v1;
    do
    {
      v6 = 0;
      v7 = "collection:deviceDidBecomeUnproximate:";
      do
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v21 + 1) + 8 * v6);
        v9 = sub_1000A98C0();
        v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

        if (v10)
        {
          v11 = sub_1000A98C0();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = [v8 uuid];
            v13 = [v12 UUIDString];
            [v8 name];
            v14 = v7;
            v15 = v4;
            v16 = v5;
            v18 = v17 = v2;
            *buf = 138412546;
            v26 = v13;
            v27 = 2112;
            v28 = v18;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "EPDeviceCollection: Device %@ %@ has become unproximate (cleared)", buf, 0x16u);

            v2 = v17;
            v5 = v16;
            v4 = v15;
            v7 = v14;
            v1 = v20;
          }
        }

        v19 = *(*(v1 + 40) + 8);
        if (objc_opt_respondsToSelector())
        {
          [*(*(v1 + 40) + 8) collection:*(v1 + 40) deviceDidBecomeUnproximate:v8];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v4);
  }
}

void sub_10008EFAC(uint64_t a1)
{
  v1 = a1;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    v20 = v1;
    do
    {
      v6 = 0;
      v7 = "collection:deviceDidBecomeUndisplayable:";
      do
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v21 + 1) + 8 * v6);
        v9 = sub_1000A98C0();
        v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

        if (v10)
        {
          v11 = sub_1000A98C0();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = [v8 uuid];
            v13 = [v12 UUIDString];
            [v8 name];
            v14 = v7;
            v15 = v4;
            v16 = v5;
            v18 = v17 = v2;
            *buf = 138412546;
            v26 = v13;
            v27 = 2112;
            v28 = v18;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "EPDeviceCollection: Device %@ %@ has become undisplayable (cleared)", buf, 0x16u);

            v2 = v17;
            v5 = v16;
            v4 = v15;
            v7 = v14;
            v1 = v20;
          }
        }

        v19 = *(*(v1 + 40) + 8);
        if (objc_opt_respondsToSelector())
        {
          [*(*(v1 + 40) + 8) collection:*(v1 + 40) deviceDidBecomeUndisplayable:v8];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v4);
  }
}

void sub_10008F1B8(uint64_t a1)
{
  v1 = a1;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = [*(a1 + 32) allValues];
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    v20 = v1;
    do
    {
      v6 = 0;
      v7 = "collection:deviceDidDisappear:";
      do
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v21 + 1) + 8 * v6);
        v9 = sub_1000A98C0();
        v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

        if (v10)
        {
          v11 = sub_1000A98C0();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = [v8 uuid];
            v13 = [v12 UUIDString];
            [v8 name];
            v14 = v7;
            v15 = v4;
            v16 = v5;
            v18 = v17 = v2;
            *buf = 138412546;
            v26 = v13;
            v27 = 2112;
            v28 = v18;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "EPDeviceCollection: Device %@ %@ has expired (cleared)", buf, 0x16u);

            v2 = v17;
            v5 = v16;
            v4 = v15;
            v7 = v14;
            v1 = v20;
          }
        }

        v19 = *(*(v1 + 40) + 8);
        if (objc_opt_respondsToSelector())
        {
          [*(*(v1 + 40) + 8) collection:*(v1 + 40) deviceDidDisappear:v8];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v4);
  }
}

uint64_t sub_10008FEE8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 8);

    return [v5 collection:? deviceDidBecomeUnproximate:?];
  }

  return result;
}

uint64_t sub_10008FF44(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 8);

    return [v5 collection:? deviceDidBecomeUndisplayable:?];
  }

  return result;
}

uint64_t sub_10008FFA0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 8);

    return [v5 collection:? deviceDidDisappear:?];
  }

  return result;
}

uint64_t sub_10008FFFC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 8);

    return [v5 collection:? deviceDidBecomeDisplayable:?];
  }

  return result;
}

uint64_t sub_100090058(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 8);

    return [v5 collection:? deviceDidBecomeProximate:?];
  }

  return result;
}

uint64_t sub_10009023C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 8);

    return [v5 collection:? deviceDidAppear:?];
  }

  return result;
}

id sub_1000903CC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 32) + 8) collection:*(a1 + 32) deviceDidAppear:*(a1 + 40)];
  }

  v3 = *(a1 + 32);

  return [v3 update];
}

uint64_t sub_100091098(uint64_t a1, void *a2)
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
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
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
        v20 = objc_alloc_init(NRPBNSError);
        objc_storeStrong((a1 + 8), v20);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !sub_1000D8DF0(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_34;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_34:
        *(a1 + 16) = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100091600(uint64_t a1)
{
  v2 = qword_1001B38D8;
  if (!qword_1001B38D8)
  {
    v3 = sub_1000916D4();
    v4 = qword_1001B38D8;
    qword_1001B38D8 = v3;

    v2 = qword_1001B38D8;
  }

  v5 = [NSNumber numberWithUnsignedInteger:a1];
  v6 = [v2 objectForKeyedSubscript:v5];

  if (!v6)
  {
    return 200;
  }

  v7 = qword_1001B38D8;
  v8 = [NSNumber numberWithUnsignedInteger:a1];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v9 integerValue];

  return v10;
}

id sub_1000916D4()
{
  v2[0] = &off_100186EF8;
  v2[1] = &off_100186F28;
  v3[0] = &off_100186F10;
  v3[1] = &off_100186F40;
  v2[2] = &off_100186F58;
  v2[3] = &off_100186F70;
  v3[2] = &off_100186F10;
  v3[3] = &off_100186F88;
  v2[4] = &off_100186FA0;
  v2[5] = &off_100186FD0;
  v3[4] = &off_100186FB8;
  v3[5] = &off_100186FE8;
  v2[6] = &off_100187000;
  v2[7] = &off_100187030;
  v3[6] = &off_100187018;
  v3[7] = &off_100187048;
  v2[8] = &off_100187060;
  v2[9] = &off_100187090;
  v3[8] = &off_100187078;
  v3[9] = &off_100187078;
  v2[10] = &off_1001870A8;
  v2[11] = &off_1001870D8;
  v3[10] = &off_1001870C0;
  v3[11] = &off_1001870F0;
  v2[12] = &off_100187108;
  v2[13] = &off_100187138;
  v3[12] = &off_100187120;
  v3[13] = &off_100187150;
  v2[14] = &off_100187168;
  v2[15] = &off_100187198;
  v3[14] = &off_100187180;
  v3[15] = &off_100186F10;
  v2[16] = &off_1001871B0;
  v2[17] = &off_1001871E0;
  v3[16] = &off_1001871C8;
  v3[17] = &off_1001871F8;
  v2[18] = &off_100187210;
  v2[19] = &off_100187240;
  v3[18] = &off_100187228;
  v3[19] = &off_100187258;
  v2[20] = &off_100187270;
  v2[21] = &off_1001872A0;
  v3[20] = &off_100187288;
  v3[21] = &off_1001872B8;
  v2[22] = &off_1001872D0;
  v2[23] = &off_100187300;
  v3[22] = &off_1001872E8;
  v3[23] = &off_100187318;
  v2[24] = &off_100187330;
  v2[25] = &off_100187360;
  v3[24] = &off_100187348;
  v3[25] = &off_1001870F0;
  v2[26] = &off_100187378;
  v2[27] = &off_100187390;
  v3[26] = &off_1001870F0;
  v3[27] = &off_1001873A8;
  v0 = [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:28];

  return v0;
}

uint64_t sub_100091E30(uint64_t a1)
{
  v2 = qword_1001B38F0;
  if (!qword_1001B38F0)
  {
    v12[0] = &off_1001873C0;
    v12[1] = &off_100187150;
    v13[0] = &off_1001873C0;
    v13[1] = &off_1001873C0;
    v12[2] = &off_100186FE8;
    v12[3] = &off_1001873D8;
    v13[2] = &off_1001873C0;
    v13[3] = &off_1001873C0;
    v12[4] = &off_1001873F0;
    v12[5] = &off_100186F40;
    v13[4] = &off_1001873C0;
    v13[5] = &off_1001873C0;
    v12[6] = &off_1001870C0;
    v12[7] = &off_100187408;
    v13[6] = &off_1001873C0;
    v13[7] = &off_1001873C0;
    v12[8] = &off_100187180;
    v12[9] = &off_100187420;
    v13[8] = &off_1001873C0;
    v13[9] = &off_1001873C0;
    v12[10] = &off_100187438;
    v12[11] = &off_100187228;
    v13[10] = &off_1001873C0;
    v13[11] = &off_1001873C0;
    v12[12] = &off_100187318;
    v12[13] = &off_1001871C8;
    v13[12] = &off_1001873C0;
    v13[13] = &off_100187150;
    v12[14] = &off_100186F10;
    v12[15] = &off_100186F88;
    v13[14] = &off_100187150;
    v13[15] = &off_100187150;
    v12[16] = &off_100186FB8;
    v12[17] = &off_100187450;
    v13[16] = &off_100187150;
    v13[17] = &off_100187150;
    v12[18] = &off_1001871F8;
    v12[19] = &off_100187258;
    v13[18] = &off_100187150;
    v13[19] = &off_100187150;
    v12[20] = &off_100187078;
    v12[21] = &off_100187468;
    v13[20] = &off_100186FE8;
    v13[21] = &off_100186FE8;
    v12[22] = &off_100187480;
    v12[23] = &off_100187498;
    v13[22] = &off_100186FE8;
    v13[23] = &off_100186FE8;
    v12[24] = &off_100187018;
    v12[25] = &off_1001874B0;
    v13[24] = &off_1001873D8;
    v13[25] = &off_1001873D8;
    v12[26] = &off_1001870F0;
    v12[27] = &off_1001874C8;
    v13[26] = &off_1001873F0;
    v13[27] = &off_1001873F0;
    v12[28] = &off_1001873A8;
    v12[29] = &off_1001874E0;
    v13[28] = &off_1001873F0;
    v13[29] = &off_1001873F0;
    v12[30] = &off_100187120;
    v12[31] = &off_1001874F8;
    v13[30] = &off_1001873F0;
    v13[31] = &off_1001873F0;
    v12[32] = &off_100187048;
    v12[33] = &off_100187510;
    v13[32] = &off_100186F40;
    v13[33] = &off_100186F40;
    v12[34] = &off_100187528;
    v12[35] = &off_100187540;
    v13[34] = &off_100186F40;
    v13[35] = &off_100186F40;
    v12[36] = &off_100187558;
    v12[37] = &off_100187570;
    v13[36] = &off_100186F40;
    v13[37] = &off_100186F40;
    v12[38] = &off_100187588;
    v12[39] = &off_1001875A0;
    v13[38] = &off_100186F40;
    v13[39] = &off_100186F40;
    v12[40] = &off_1001875B8;
    v12[41] = &off_1001875D0;
    v13[40] = &off_100186F40;
    v13[41] = &off_1001875D0;
    v3 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:42];
    v4 = qword_1001B38F0;
    qword_1001B38F0 = v3;

    v2 = qword_1001B38F0;
  }

  v5 = [NSNumber numberWithUnsignedInt:a1];
  v6 = [v2 objectForKeyedSubscript:v5];

  if (!v6)
  {
    return 200;
  }

  v7 = qword_1001B38F0;
  v8 = [NSNumber numberWithUnsignedInt:a1];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v9 integerValue];

  return v10;
}

id sub_10009216C(uint64_t a1)
{
  v2 = qword_1001B38E0;
  if (!qword_1001B38E0)
  {
    v8[0] = &off_1001873C0;
    v8[1] = &off_100187150;
    v9[0] = @"NRPairingReportReasonSuccessOrUserAbort";
    v9[1] = @"NRPairingReportReasonInitialTimeout";
    v8[2] = &off_100186FE8;
    v8[3] = &off_1001873D8;
    v9[2] = @"NRPairingReportReasonMessageSendFailure";
    v9[3] = @"NRPairingReportReasonActivationFailure";
    v8[4] = &off_1001873F0;
    v8[5] = &off_100186F40;
    v9[4] = @"NRPairingReportReasonCrashWriteFailure";
    v9[5] = @"NRPairingReportReasonNonuserAbort";
    v8[6] = &off_1001875D0;
    v9[6] = @"NRPairingReportReasonOther";
    v3 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:7];
    v4 = qword_1001B38E0;
    qword_1001B38E0 = v3;

    v2 = qword_1001B38E0;
  }

  v5 = [NSNumber numberWithUnsignedInt:a1];
  v6 = [v2 objectForKeyedSubscript:v5];

  return v6;
}

id sub_1000922D4(uint64_t a1)
{
  v2 = qword_1001B38E8;
  if (!qword_1001B38E8)
  {
    v8[0] = &off_1001873C0;
    v8[1] = &off_100187150;
    v9[0] = @"NRPairingReportSubreasonSuccess";
    v9[1] = @"NRPairingReportSubreasonCompanionUserAbort";
    v8[2] = &off_100186FE8;
    v8[3] = &off_1001873D8;
    v9[2] = @"NRPairingReportSubreasonGizmoUserAbort";
    v9[3] = @"NRPairingReportSubreasonBridgeResigned";
    v8[4] = &off_1001873F0;
    v8[5] = &off_100186F40;
    v9[4] = @"NRPairingReportSubreasonSetupResigned";
    v9[5] = @"NRPairingReportSubreasonCompanionBluetoothTurnedOff";
    v8[6] = &off_1001870C0;
    v8[7] = &off_100187408;
    v9[6] = @"NRPairingReportSubreasonCompanionVersionOld";
    v9[7] = @"NRPairingReportSubreasonSoftwareUpdateAbort";
    v8[8] = &off_100187180;
    v8[9] = &off_100187420;
    v9[8] = @"NRPairingReportSubreasonManagedConfigRestriction";
    v9[9] = @"NRPairingReportSubreasonGizmoTroubleConnectingAbort";
    v8[10] = &off_100187438;
    v8[11] = &off_1001871C8;
    v9[10] = @"NRPairingReportSubreasonCompanionTroubleConnectingAbort";
    v9[11] = @"NRPairingReportSubreasonCompanionBluetoothDiscoveryTimeout";
    v8[12] = &off_100186F10;
    v8[13] = &off_100186F88;
    v9[12] = @"NRPairingReportSubreasonCompanionBluetoothConnectTimeout";
    v9[13] = @"NRPairingReportSubreasonCompanionIDSConnectTimeout";
    v8[14] = &off_100186FB8;
    v8[15] = &off_100187450;
    v9[14] = @"NRPairingReportSubreasonCompanionInitialPropertyReceiveTimeout";
    v9[15] = @"NRPairingReportSubreasonGizmoInitialPropertyReceiveTimeout";
    v8[16] = &off_100187078;
    v8[17] = &off_100187468;
    v9[16] = @"NRPairingReportSubreasonNanoRegistryCompanionMessageSendFailure";
    v9[17] = @"NRPairingReportSubreasonNanoRegistryGizmoMessageSendFailure";
    v8[18] = &off_100187480;
    v8[19] = &off_100187498;
    v9[18] = @"NRPairingReportSubreasonBridgeCompanionMessageSendFailure";
    v9[19] = @"NRPairingReportSubreasonSetupGizmoSendFailure";
    v8[20] = &off_100187018;
    v8[21] = &off_1001874B0;
    v9[20] = @"NRPairingReportSubreasonCompanionActivationFailure";
    v9[21] = @"NRPairingReportSubreasonGizmoActivationFailure";
    v8[22] = &off_1001870F0;
    v8[23] = &off_1001874C8;
    v9[22] = @"NRPairingReportSubreasonCompanionPairingClientDied";
    v9[23] = @"NRPairingReportSubreasonGizmoPairingClientDied";
    v8[24] = &off_1001873A8;
    v8[25] = &off_1001874E0;
    v9[24] = @"NRPairingReportSubreasonCompanionNanoRegistryDied";
    v9[25] = @"NRPairingReportSubreasonGizmoNanoRegistryDied";
    v8[26] = &off_100187120;
    v8[27] = &off_1001874F8;
    v9[26] = @"NRPairingReportSubreasonCompanionFileWriteError";
    v9[27] = @"NRPairingReportSubreasonGizmoFileWriteError";
    v8[28] = &off_100187048;
    v8[29] = &off_100187510;
    v9[28] = @"NRPairingReportSubreasonCompanionClientAbort";
    v9[29] = @"NRPairingReportSubreasonGizmoClientAbort";
    v8[30] = &off_100187528;
    v8[31] = &off_100187540;
    v9[30] = @"NRPairingReportSubreasonSharingDMissingInfo";
    v9[31] = @"NRPairingReportSubreasonSharingDKeyStorage";
    v8[32] = &off_100187558;
    v8[33] = &off_100187570;
    v9[32] = @"NRPairingReportSubreasonSharingDKeyCreation";
    v9[33] = @"NRPairingReportSubreasonSharingDSendRequest";
    v8[34] = &off_100187588;
    v8[35] = &off_1001875A0;
    v9[34] = @"NRPairingReportSubreasonSharingDSendResponse";
    v9[35] = @"NRPairingReportSubreasonSharingDResponseTimeout";
    v8[36] = &off_1001875B8;
    v8[37] = &off_1001875D0;
    v9[36] = @"NRPairingReportSubreasonSharingDResponseCreation";
    v9[37] = @"NRPairingReportSubreasonOther";
    v8[38] = &off_1001871F8;
    v8[39] = &off_100187228;
    v9[38] = @"NRPairingReportSubreasonCompanionBluetoothConnectFailure";
    v9[39] = @"NRPairingReportSubreasonCompanionBluetoothBadPIN";
    v8[40] = &off_100187318;
    v8[41] = &off_100187348;
    v9[40] = @"NRPairingReportSubreasonAlreadyPairedWithDevice";
    v9[41] = @"NRPairingReportSubreasonNetworkRelayPairingFailed";
    v3 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:42];
    v4 = qword_1001B38E8;
    qword_1001B38E8 = v3;

    v2 = qword_1001B38E8;
  }

  v5 = [NSNumber numberWithUnsignedInt:a1];
  v6 = [v2 objectForKeyedSubscript:v5];

  return v6;
}

void sub_100094298(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1000950CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000950EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 pairingID];
  v6 = [v4 deviceForPairingID:v5];

  *(*(*(a1 + 40) + 8) + 24) = [v6 isAltAccount];
}

uint64_t sub_100096E00(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 48)) initWithQueue:*(a1 + 32) delegate:*(a1 + 40)];
  v2 = qword_1001B3918;
  qword_1001B3918 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_100096EC8(id a1)
{
  v1 = qword_1001B3930;
  qword_1001B3930 = &off_100187EF8;

  v2 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [&off_100187EF8 count]);
  if ([&off_100187EF8 count])
  {
    v3 = 0;
    do
    {
      v4 = [NSNumber numberWithInt:v3];
      v5 = [&off_100187EF8 objectAtIndexedSubscript:v3];
      [v2 setObject:v4 forKeyedSubscript:v5];

      ++v3;
    }

    while ([&off_100187EF8 count] > v3);
  }

  v6 = qword_1001B3938;
  qword_1001B3938 = v2;
  v7 = v2;

  v10[0] = &off_1001876C0;
  v10[1] = &off_1001876D8;
  v11[0] = @"NRPairedDeviceRegistryStatusCodeReady";
  v11[1] = @"NRPairedDeviceRegistryStatusCodeSwitching";
  v10[2] = &off_1001876F0;
  v10[3] = &off_100187708;
  v11[2] = @"NRPairedDeviceRegistryStatusCodePairing";
  v11[3] = @"NRPairedDeviceRegistryStatusCodeMigrating";
  v10[4] = &off_100187720;
  v10[5] = &off_100187738;
  v11[4] = @"NRPairedDeviceRegistryStatusCodeUnpairing";
  v11[5] = @"NRPairedDeviceRegistryStatusCodeInvalid";
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:6];
  v9 = qword_1001B3940;
  qword_1001B3940 = v8;
}