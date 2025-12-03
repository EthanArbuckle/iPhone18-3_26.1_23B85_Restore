@interface OSIWalletMonitor
+ (id)wallet;
- (OSIWalletMonitor)init;
- (id)relevantEventDeadline;
- (void)passLibraryDidChange:(id)change;
@end

@implementation OSIWalletMonitor

- (id)relevantEventDeadline
{
  v3 = +[OSIWalletMonitor wallet];
  v4 = [v3 passesOfStyles:16];

  v5 = +[NSDate date];
  v6 = [v5 dateByAddingTimeInterval:-10800.0];
  v7 = [v5 dateByAddingTimeInterval:86400.0];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v8 = v4;
  v34 = [v8 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v34)
  {
    v9 = *v41;
    selfCopy = self;
    v32 = v5;
    v35 = v8;
    v30 = *v41;
    do
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(v8);
        }

        v11 = *(*(&v40 + 1) + 8 * i);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v33 = v11;
        relevantDates = [v11 relevantDates];
        v13 = [relevantDates countByEnumeratingWithState:&v36 objects:v48 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v37;
          while (2)
          {
            for (j = 0; j != v14; j = j + 1)
            {
              if (*v37 != v15)
              {
                objc_enumerationMutation(relevantDates);
              }

              v17 = *(*(&v36 + 1) + 8 * j);
              date = [v17 date];
              [date timeIntervalSinceDate:v6];
              if (v19 < 0.0)
              {
              }

              else
              {
                date2 = [v17 date];
                [date2 timeIntervalSinceDate:v7];
                v22 = v21;

                if (v22 <= 0.0)
                {
                  log = selfCopy->_log;
                  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                  {
                    v26 = log;
                    localizedName = [v33 localizedName];
                    date3 = [v17 date];
                    *buf = 138412546;
                    v45 = localizedName;
                    v46 = 2112;
                    v47 = date3;
                    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Found pass, forcing immediate charge: %@, %@", buf, 0x16u);
                  }

                  date4 = [v17 date];

                  v8 = v35;
                  v5 = v32;
                  goto LABEL_23;
                }
              }
            }

            v14 = [relevantDates countByEnumeratingWithState:&v36 objects:v48 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v8 = v35;
        v9 = v30;
      }

      v5 = v32;
      v34 = [v35 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v34);
  }

  date4 = +[NSDate distantFuture];
LABEL_23:

  return date4;
}

+ (id)wallet
{
  v2 = qword_1000B69B8;
  if (!qword_1000B69B8)
  {
    v3 = objc_alloc_init(PKPassLibrary);
    v4 = qword_1000B69B8;
    qword_1000B69B8 = v3;

    v2 = qword_1000B69B8;
  }

  return v2;
}

- (OSIWalletMonitor)init
{
  v8.receiver = self;
  v8.super_class = OSIWalletMonitor;
  v2 = [(OSIWalletMonitor *)&v8 init];
  v3 = os_log_create("com.apple.osintelligence", "walletmonitor");
  log = v2->_log;
  v2->_log = v3;

  v5 = +[OSIWalletMonitor wallet];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:v2 selector:"passLibraryDidChange:" name:PKPassLibraryDidChangeNotification object:0];

  return v2;
}

- (void)passLibraryDidChange:(id)change
{
  v4 = [(OSIWalletMonitor *)self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Boarding pass has changed", buf, 2u);
  }

  v5 = dispatch_time(0, 5000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F288;
  block[3] = &unk_100094C20;
  block[4] = self;
  dispatch_after(v5, &_dispatch_main_q, block);
}

@end