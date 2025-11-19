@interface EPPairingAgent
- (CBPairingAgent)agent;
- (void)pairingAgent:(id)a3 peerDidCompletePairing:(id)a4;
- (void)pairingAgent:(id)a3 peerDidFailToCompletePairing:(id)a4 error:(id)a5;
- (void)pairingAgent:(id)a3 peerDidRequestPairing:(id)a4 type:(int64_t)a5 passkey:(id)a6;
- (void)pairingAgent:(id)a3 peerDidUnpair:(id)a4;
@end

@implementation EPPairingAgent

- (CBPairingAgent)agent
{
  v2 = [(EPPairingAgent *)self manager];
  v3 = [v2 agent];

  return v3;
}

- (void)pairingAgent:(id)a3 peerDidUnpair:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = sub_1000A98C0();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = sub_1000A98C0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = [v7 identifier];
        v15 = 138412802;
        v16 = v13;
        v17 = 2048;
        v18 = v8;
        v19 = 2112;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Calling pairingAgent:peerDidUnpair: on %@[%p] with peer %@", &v15, 0x20u);
      }
    }

    [v8 pairingAgent:v6 peerDidUnpair:v7];
  }
}

- (void)pairingAgent:(id)a3 peerDidCompletePairing:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = sub_1000A98C0();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = sub_1000A98C0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = [v7 identifier];
        v15 = 138412802;
        v16 = v13;
        v17 = 2048;
        v18 = v8;
        v19 = 2112;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Calling pairingAgent:peerDidCompletePairing: on %@[%p] with peer %@", &v15, 0x20u);
      }
    }

    [v8 pairingAgent:v6 peerDidCompletePairing:v7];
  }
}

- (void)pairingAgent:(id)a3 peerDidFailToCompletePairing:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = sub_1000A98C0();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

    if (v13)
    {
      v14 = sub_1000A98C0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = [v9 identifier];
        v18 = 138413058;
        v19 = v16;
        v20 = 2048;
        v21 = v11;
        v22 = 2112;
        v23 = v17;
        v24 = 2112;
        v25 = v10;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Calling pairingAgent:peerDidFailToCompletePairing: on %@[%p] with peer %@ error %@", &v18, 0x2Au);
      }
    }

    [v11 pairingAgent:v8 peerDidFailToCompletePairing:v9 error:v10];
  }
}

- (void)pairingAgent:(id)a3 peerDidRequestPairing:(id)a4 type:(int64_t)a5 passkey:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v14 = sub_1000A98C0();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = sub_1000A98C0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = [v11 identifier];
        v20 = [EPDevice stringFromCBPairingType:a5];
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = 138413570;
        v24 = v18;
        v25 = 2048;
        v26 = v13;
        v27 = 2112;
        v28 = v19;
        v29 = 2112;
        v30 = v20;
        v31 = 2112;
        v32 = v12;
        v33 = 2112;
        v34 = v22;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Calling pairingAgent:peerDidRequestPairing:type:passkey: on %@[%p] with peer %@ type=%@ passkey=%@ peer=%@", &v23, 0x3Eu);
      }
    }

    [v13 pairingAgent:v10 peerDidRequestPairing:v11 type:a5 passkey:v12];
  }
}

@end