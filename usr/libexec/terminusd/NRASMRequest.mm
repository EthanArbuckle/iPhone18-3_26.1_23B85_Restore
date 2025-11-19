@interface NRASMRequest
- (id)description;
- (void)dealloc;
@end

@implementation NRASMRequest

- (void)dealloc
{
  metadata = self->_metadata;
  if (metadata && metadata->_hasPolicies)
  {
    if (qword_1002291B0 != -1)
    {
      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291B0 != -1)
      {
        dispatch_once(&qword_1002291B0, &stru_1001FBE70);
      }

      v9 = 289;
      v10 = self;
      v7 = "";
      v8 = "[NRASMRequest dealloc]";
      _NRLogWithArgs();
    }

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v4 = qword_100229408;
    v5 = [(NRASMRequest *)self description];
    sub_10015A238(v4, v5);

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v6 = qword_100229408;
    sub_10015A52C(v6);
  }

  v11.receiver = self;
  v11.super_class = NRASMRequest;
  [(NRASMRequest *)&v11 dealloc:v7];
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = @"NRASMBrowseRequest[";
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = @"NRASMResolveRequest[";
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_8;
      }

      v4 = @"NRASMListenRequest[";
    }
  }

  [v3 appendString:v4];
LABEL_8:
  identifier = self->_identifier;
  [v3 appendFormat:@"%p, %@, %@", self->_client, identifier, self->_clientDescription];
  [v3 appendFormat:@", %@", self->_metadata];
  [v3 appendString:@"]"];

  return v3;
}

@end