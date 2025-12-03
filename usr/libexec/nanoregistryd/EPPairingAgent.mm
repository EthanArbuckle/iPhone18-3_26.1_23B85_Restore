@interface EPPairingAgent
- (CBPairingAgent)agent;
- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing;
- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error;
- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey;
- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair;
@end

@implementation EPPairingAgent

- (CBPairingAgent)agent
{
  manager = [(EPPairingAgent *)self manager];
  agent = [manager agent];

  return agent;
}

- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair
{
  agentCopy = agent;
  unpairCopy = unpair;
  ownerDelegate = [(EPResource *)self ownerDelegate];
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
        identifier = [unpairCopy identifier];
        v15 = 138412802;
        v16 = v13;
        v17 = 2048;
        v18 = ownerDelegate;
        v19 = 2112;
        v20 = identifier;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Calling pairingAgent:peerDidUnpair: on %@[%p] with peer %@", &v15, 0x20u);
      }
    }

    [ownerDelegate pairingAgent:agentCopy peerDidUnpair:unpairCopy];
  }
}

- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing
{
  agentCopy = agent;
  pairingCopy = pairing;
  ownerDelegate = [(EPResource *)self ownerDelegate];
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
        identifier = [pairingCopy identifier];
        v15 = 138412802;
        v16 = v13;
        v17 = 2048;
        v18 = ownerDelegate;
        v19 = 2112;
        v20 = identifier;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Calling pairingAgent:peerDidCompletePairing: on %@[%p] with peer %@", &v15, 0x20u);
      }
    }

    [ownerDelegate pairingAgent:agentCopy peerDidCompletePairing:pairingCopy];
  }
}

- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error
{
  agentCopy = agent;
  pairingCopy = pairing;
  errorCopy = error;
  ownerDelegate = [(EPResource *)self ownerDelegate];
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
        identifier = [pairingCopy identifier];
        v18 = 138413058;
        v19 = v16;
        v20 = 2048;
        v21 = ownerDelegate;
        v22 = 2112;
        v23 = identifier;
        v24 = 2112;
        v25 = errorCopy;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Calling pairingAgent:peerDidFailToCompletePairing: on %@[%p] with peer %@ error %@", &v18, 0x2Au);
      }
    }

    [ownerDelegate pairingAgent:agentCopy peerDidFailToCompletePairing:pairingCopy error:errorCopy];
  }
}

- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey
{
  agentCopy = agent;
  pairingCopy = pairing;
  passkeyCopy = passkey;
  ownerDelegate = [(EPResource *)self ownerDelegate];
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
        identifier = [pairingCopy identifier];
        v20 = [EPDevice stringFromCBPairingType:type];
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = 138413570;
        v24 = v18;
        v25 = 2048;
        v26 = ownerDelegate;
        v27 = 2112;
        v28 = identifier;
        v29 = 2112;
        v30 = v20;
        v31 = 2112;
        v32 = passkeyCopy;
        v33 = 2112;
        v34 = v22;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Calling pairingAgent:peerDidRequestPairing:type:passkey: on %@[%p] with peer %@ type=%@ passkey=%@ peer=%@", &v23, 0x3Eu);
      }
    }

    [ownerDelegate pairingAgent:agentCopy peerDidRequestPairing:pairingCopy type:type passkey:passkeyCopy];
  }
}

@end