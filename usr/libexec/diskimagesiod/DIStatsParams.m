@interface DIStatsParams
- (DIStatsParams)initWithCoder:(id)a3;
- (DIStatsParams)initWithURL:(id)a3 instanceId:(id)a4 error:(id *)a5;
- (NSUUID)instanceID;
- (id)statsWithError:(id *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DIStatsParams

- (DIStatsParams)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DIStatsParams;
  v5 = [(DIBaseParams *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"statInstanceID"];
    statInstanceID = v5->_statInstanceID;
    v5->_statInstanceID = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = DIStatsParams;
  v4 = a3;
  [(DIBaseParams *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_statInstanceID forKey:{@"statInstanceID", v5.receiver, v5.super_class}];
}

- (DIStatsParams)initWithURL:(id)a3 instanceId:(id)a4 error:(id *)a5
{
  v9 = a4;
  v14.receiver = self;
  v14.super_class = DIStatsParams;
  v10 = [(DIBaseParams *)&v14 initWithURL:a3 error:a5];
  p_isa = &v10->super.super.isa;
  if (v10)
  {
    if (![(DIBaseParams *)v10 openExistingImageWithError:a5])
    {
      v12 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(p_isa + 8, a4);
  }

  v12 = p_isa;
LABEL_6:

  return v12;
}

- (id)statsWithError:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000BFB18;
  v19 = sub_1000BFB28;
  v20 = objc_alloc_init(DIClient2Controller_XPCHandler);
  if ([v16[5] connectWithError:a3])
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_1000BFB18;
    v13 = sub_1000BFB28;
    v14 = 0;
    v5 = [v16[5] remoteProxy];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000BFB30;
    v8[3] = &unk_10020AE18;
    v8[4] = &v9;
    v8[5] = &v15;
    [v5 retrieveStatsWithParams:self reply:v8];

    if ([v16[5] completeCommandWithError:a3])
    {
      v6 = v10[5];
    }

    else
    {
      v6 = 0;
    }

    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v15, 8);

  return v6;
}

- (NSUUID)instanceID
{
  statInstanceID = self->_statInstanceID;
  if (statInstanceID)
  {
    v3 = statInstanceID;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = DIStatsParams;
    v3 = [(DIBaseParams *)&v5 instanceID];
  }

  return v3;
}

@end