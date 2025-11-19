@interface OTModifyUserControllableViewStatusOperation
- (OTModifyUserControllableViewStatusOperation)initWithDependencies:(id)a3 intendedViewStatus:(int)a4 intendedState:(id)a5 peerMissingState:(id)a6 errorState:(id)a7;
- (void)groupStart;
@end

@implementation OTModifyUserControllableViewStatusOperation

- (void)groupStart
{
  if ([(OTModifyUserControllableViewStatusOperation *)self intendedViewStatus]== 3)
  {
    objc_initWeak(&location, self);
    v3 = [(OTModifyUserControllableViewStatusOperation *)self deps];
    v4 = [v3 sosAdapter];
    v5 = [v4 sosEnabled];

    if (v5)
    {
      v6 = [(OTModifyUserControllableViewStatusOperation *)self deps];
      v7 = [v6 sosAdapter];
      v28 = 0;
      v8 = [v7 safariViewSyncingEnabled:&v28];
      v9 = v28;

      if (v9)
      {
        v10 = sub_100006274("SecError");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v31 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "octagon-ckks: Unable to fetch SOS Safari view status: %@", buf, 0xCu);
        }

        [(CKKSResultOperation *)self setError:v9];
      }

      else
      {
        v22 = sub_100006274("octagon-ckks");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = @"disabled";
          if (v8)
          {
            v23 = @"enabled";
          }

          *buf = 138412290;
          v31 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Currently SOS believes the safari view is '%@'", buf, 0xCu);
        }

        if (v8)
        {
          v24 = 2;
        }

        else
        {
          v24 = 1;
        }

        [(OTModifyUserControllableViewStatusOperation *)self performWithStatus:v24];
        v9 = 0;
      }
    }

    else
    {
      v12 = [(OTModifyUserControllableViewStatusOperation *)self deps];
      v13 = [v12 stateHolder];
      v27 = 0;
      v14 = [v13 loadOrCreateAccountMetadata:&v27];
      v9 = v27;

      if (!v14 || v9)
      {
        v16 = sub_100006274("octagon-ckks");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v31 = v9;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Failed to load account metadata: %@", buf, 0xCu);
        }

        v15 = 0;
      }

      else
      {
        v15 = [v14 isInheritedAccount];
      }

      v17 = sub_100006274("octagon-ckks");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Determining peers' user-controllable views policy", buf, 2u);
      }

      v18 = [(OTModifyUserControllableViewStatusOperation *)self deps];
      v19 = [v18 cuttlefishXPCWrapper];
      v20 = [(OTModifyUserControllableViewStatusOperation *)self deps];
      v21 = [v20 activeAccount];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1000987F8;
      v25[3] = &unk_100338738;
      objc_copyWeak(&v26, &location);
      [v19 fetchCurrentPolicyWithSpecificUser:v21 modelIDOverride:0 isInheritedAccount:v15 reply:v25];

      objc_destroyWeak(&v26);
    }

    objc_destroyWeak(&location);
  }

  else
  {
    v11 = [(OTModifyUserControllableViewStatusOperation *)self intendedViewStatus];

    [(OTModifyUserControllableViewStatusOperation *)self performWithStatus:v11];
  }
}

- (OTModifyUserControllableViewStatusOperation)initWithDependencies:(id)a3 intendedViewStatus:(int)a4 intendedState:(id)a5 peerMissingState:(id)a6 errorState:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = OTModifyUserControllableViewStatusOperation;
  v17 = [(CKKSGroupOperation *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong((v17 + 148), a3);
    *(v18 + 32) = a4;
    objc_storeStrong((v18 + 132), a5);
    objc_storeStrong((v18 + 156), a6);
    objc_storeStrong((v18 + 140), a7);
  }

  return v18;
}

@end