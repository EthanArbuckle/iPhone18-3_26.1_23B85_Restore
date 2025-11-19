@interface NROnDemandLinkSetupManager
- (void)didUpdatePHSState:(BOOL)a3 llphsActive:(BOOL)a4;
@end

@implementation NROnDemandLinkSetupManager

- (void)didUpdatePHSState:(BOOL)a3 llphsActive:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (qword_100228EC8 != -1)
  {
    dispatch_once(&qword_100228EC8, &stru_1001FA448);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228EC8 != -1)
    {
      dispatch_once(&qword_100228EC8, &stru_1001FA448);
    }

    _NRLogWithArgs();
  }

  if (self && self->_subscribedForPHSStateUpdates && (self->_isPHSActive != v5 || self->_isLLPHSActive != v4))
  {
    self->_isPHSActive = v5;
    self->_isLLPHSActive = v4;
    if (!v5 && !v4)
    {
      objc_initWeak(&location, self);
      v7 = dispatch_time(0, 5000000000);
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000177B4;
      block[3] = &unk_1001FC730;
      v9 = queue;
      objc_copyWeak(&v30, &location);
      dispatch_after(v7, v9, block);

      objc_destroyWeak(&v30);
      p_location = &location;
LABEL_14:
      objc_destroyWeak(p_location);
      return;
    }

    *&self->_isPHSProvider = 0;
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v11 = qword_1002290B8;
    v12 = v11;
    if (v11)
    {
      v13 = *(v11 + 6);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v15 = sub_10017DF34(v14);

    v16 = 13;
    if (!v15)
    {
      v16 = 14;
    }

    *(&self->super.isa + v16) = 1;
    v17 = sub_100003490();
    dispatch_async(v17, &stru_1001FAE70);

    if (!self->_phsSource)
    {
      v18 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
      v19 = dispatch_time(0, 60000000000);
      dispatch_source_set_timer(v18, v19, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      objc_initWeak(from, self);
      location = _NSConcreteStackBlock;
      v38 = 3221225472;
      v39 = sub_100019F84;
      v40 = &unk_1001FD0D8;
      objc_copyWeak(&v42, from);
      v20 = v18;
      v41 = v20;
      dispatch_source_set_event_handler(v20, &location);
      dispatch_activate(v20);
      phsSource = self->_phsSource;
      self->_phsSource = v20;
      v22 = v20;

      objc_destroyWeak(&v42);
      objc_destroyWeak(from);
    }

    if (self->_isPHSClient)
    {
      if (self->_browserActivated)
      {

        sub_10001798C(self);
      }

      else if (!self->_browser)
      {
        v23 = objc_alloc_init(RPCompanionLinkClient);
        [v23 setDispatchQueue:self->_queue];
        [v23 setControlFlags:6];
        objc_initWeak(&v44, self);
        location = _NSConcreteStackBlock;
        v38 = 3221225472;
        v39 = sub_100019C38;
        v40 = &unk_1001FA2C8;
        objc_copyWeak(&v43, &v44);
        v24 = v23;
        v41 = v24;
        v42 = self;
        [v24 setDeviceFoundHandler:&location];
        from[0] = _NSConcreteStackBlock;
        from[1] = 3221225472;
        from[2] = sub_100019D4C;
        from[3] = &unk_1001FA2F0;
        objc_copyWeak(&v36, &v44);
        v25 = v24;
        v35 = v25;
        [v25 setDeviceLostHandler:from];
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_100019E5C;
        v31[3] = &unk_1001FC1A8;
        objc_copyWeak(&v33, &v44);
        v26 = v25;
        v32 = v26;
        [v26 activateWithCompletion:v31];
        browser = self->_browser;
        self->_browser = v26;
        v28 = v26;

        objc_destroyWeak(&v33);
        objc_destroyWeak(&v36);

        objc_destroyWeak(&v43);
        p_location = &v44;
        goto LABEL_14;
      }
    }

    else if (self->_isPHSProvider)
    {

      sub_100017AB4(self);
    }
  }
}

@end