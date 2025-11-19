@interface EPMassUnpairer
- (EPMassUnpairer)initWithDelegate:(id)a3 UUIDs:(id)a4;
- (id)initBase;
- (void)dealloc;
- (void)pairingAgent:(id)a3 peerDidUnpair:(id)a4;
- (void)setTimerDuration:(double)a3 withBlock:(id)a4;
- (void)update;
@end

@implementation EPMassUnpairer

- (void)setTimerDuration:(double)a3 withBlock:(id)a4
{
  v6 = a4;
  currentTimer = self->_currentTimer;
  if (currentTimer)
  {
    dispatch_source_cancel(currentTimer);
    v8 = self->_currentTimer;
    self->_currentTimer = 0;
  }

  if (v6)
  {
    v9 = +[EPFactory queue];
    v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v9);

    v11 = dispatch_time(0, (a3 * 1000000000.0));
    dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10009FB88;
    v14[3] = &unk_100175FA0;
    v14[4] = self;
    v15 = v6;
    dispatch_source_set_event_handler(v10, v14);
    dispatch_resume(v10);
    v12 = self->_currentTimer;
    self->_currentTimer = v10;
    v13 = v10;
  }
}

- (id)initBase
{
  v13.receiver = self;
  v13.super_class = EPMassUnpairer;
  v2 = [(EPMassUnpairer *)&v13 init];
  if (v2)
  {
    v3 = sub_1000A9948();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = sub_1000A9948();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        *buf = 138412546;
        v15 = v7;
        v16 = 2048;
        v17 = v2;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "init %@[%p]", buf, 0x16u);
      }
    }

    v8 = +[NSMutableArray array];
    peersToUnpair = v2->_peersToUnpair;
    v2->_peersToUnpair = v8;

    v10 = +[NSMutableSet set];
    devicesUnpaired = v2->_devicesUnpaired;
    v2->_devicesUnpaired = v10;
  }

  return v2;
}

- (void)dealloc
{
  v3 = sub_1000A9948();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = sub_1000A9948();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138412546;
      v10 = v7;
      v11 = 2048;
      v12 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "dealloc %@[%p]", buf, 0x16u);
    }
  }

  v8.receiver = self;
  v8.super_class = EPMassUnpairer;
  [(EPMassUnpairer *)&v8 dealloc];
}

- (EPMassUnpairer)initWithDelegate:(id)a3 UUIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EPMassUnpairer *)self initBase];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(v8 + 5, v6);
    objc_storeStrong(&v9->_requestedUUIDs, a4);
    v10 = +[EPFactory sharedFactory];
    v11 = [v10 agentManager];
    v12 = [v11 newAgentWithDelegate:v9 fromCentral:1];
    agent = v9->_agent;
    v9->_agent = v12;

    objc_storeStrong(&v9->me, v9);
    objc_initWeak(&location, v9);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000A0008;
    v18[3] = &unk_100175EB8;
    objc_copyWeak(&v19, &location);
    [(EPMassUnpairer *)v9 setTimerDuration:v18 withBlock:2.0];
    v14 = +[EPFactory queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A01E8;
    block[3] = &unk_100175660;
    v17 = v9;
    dispatch_async(v14, block);

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v9;
}

- (void)update
{
  agent = self->_agent;
  if (!agent)
  {
    goto LABEL_44;
  }

  if ([(EPResource *)agent availability]!= 1)
  {
    [(NSMutableArray *)self->_peersToUnpair removeAllObjects];
    v46 = 0;
    v47 = 32;
LABEL_43:
    *(&self->super.isa + v47) = v46;
    goto LABEL_44;
  }

  if (self->_unpairing)
  {
    goto LABEL_48;
  }

  self->_unpairing = 1;
  v4 = sub_1000A98C0();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = sub_1000A98C0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Calling CBPairingAgent retrievePairedPeers", buf, 2u);
    }
  }

  v7 = [(EPPairingAgent *)self->_agent agent];
  v8 = [v7 retrievePairedPeers];
  v9 = [v8 mutableCopy];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v54 objects:v63 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v55;
    do
    {
      v14 = 0;
      do
      {
        if (*v55 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v54 + 1) + 8 * v14);
        requestedUUIDs = self->_requestedUUIDs;
        if (!requestedUUIDs || ([*(*(&v54 + 1) + 8 * v14) identifier], v17 = objc_claimAutoreleasedReturnValue(), v18 = -[NSSet containsObject:](requestedUUIDs, "containsObject:", v17), v17, v18))
        {
          [(NSMutableArray *)self->_peersToUnpair addObject:v15];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v54 objects:v63 count:16];
    }

    while (v12);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v19 = self->_peersToUnpair;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v50 objects:v62 count:16];
  if (v20)
  {
    v22 = v20;
    v23 = *v51;
    *&v21 = 138412290;
    v49 = v21;
    do
    {
      v24 = 0;
      do
      {
        if (*v51 != v23)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v50 + 1) + 8 * v24);
        v26 = sub_1000A98C0();
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

        if (v27)
        {
          v28 = sub_1000A98C0();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = [v25 identifier];
            v30 = [v29 UUIDString];
            *buf = v49;
            v59 = v30;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Calling CBPairingAgent unpairPeer: %@", buf, 0xCu);
          }
        }

        v31 = [(EPPairingAgent *)self->_agent agent:v49];
        [v31 unpairPeer:v25];

        v24 = v24 + 1;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v50 objects:v62 count:16];
    }

    while (v22);
  }

  if (self->_unpairing)
  {
LABEL_48:
    if (![(NSMutableArray *)self->_peersToUnpair count])
    {
      [(EPMassUnpairer *)self setTimerDuration:0 withBlock:0.0];
      v32 = sub_1000A98C0();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);

      if (v33)
      {
        v34 = sub_1000A98C0();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "All peers unpaired!", buf, 2u);
        }
      }

      v35 = self->_agent;
      self->_agent = 0;

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v37 = objc_opt_respondsToSelector();

      if (v37)
      {
        v38 = sub_1000A98C0();
        v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);

        if (v39)
        {
          v40 = sub_1000A98C0();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v41 = objc_loadWeakRetained(&self->_delegate);
            v42 = objc_opt_class();
            v43 = NSStringFromClass(v42);
            v44 = objc_loadWeakRetained(&self->_delegate);
            *buf = 138412546;
            v59 = v43;
            v60 = 2048;
            v61 = v44;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Calling unpairerDidFinishUnpairing: on %@[%p]", buf, 0x16u);
          }
        }

        v45 = objc_loadWeakRetained(&self->_delegate);
        [v45 unpairer:self didFinishUnpairingDevices:self->_devicesUnpaired];
      }

      v46 = 1;
      v47 = 33;
      goto LABEL_43;
    }
  }

LABEL_44:
  if (self->_finishedUnpairing)
  {
    me = self->me;
    self->me = 0;
  }
}

- (void)pairingAgent:(id)a3 peerDidUnpair:(id)a4
{
  v5 = a4;
  v6 = sub_1000A98C0();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = sub_1000A98C0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 identifier];
      v10 = [v9 UUIDString];
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CBPairingAgentDelegate pairingAgent:peerDidUnpair %@", &v13, 0xCu);
    }
  }

  [(NSMutableArray *)self->_peersToUnpair removeObject:v5];
  devicesUnpaired = self->_devicesUnpaired;
  v12 = [v5 identifier];
  [(NSMutableSet *)devicesUnpaired addObject:v12];

  [(EPMassUnpairer *)self update];
}

@end