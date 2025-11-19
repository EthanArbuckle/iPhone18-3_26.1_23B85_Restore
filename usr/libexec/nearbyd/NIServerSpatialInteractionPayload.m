@interface NIServerSpatialInteractionPayload
- (id)_initWithUWBConfigData:(id)a3 presenceConfigData:(id)a4;
- (void)_parseUWBData:(id)a3 presenceData:(id)a4;
@end

@implementation NIServerSpatialInteractionPayload

- (id)_initWithUWBConfigData:(id)a3 presenceConfigData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = NIServerSpatialInteractionPayload;
  v8 = [(NIServerSpatialInteractionPayload *)&v11 init];
  v9 = v8;
  if (v8)
  {
    *(v8 + 11) = 0;
    *(v8 + 2) = 0;
    [v8 _parseUWBData:v6 presenceData:v7];
  }

  return v9;
}

- (void)_parseUWBData:(id)a3 presenceData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004B5404(v6, v7, v8);
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else if (!v6)
  {
    goto LABEL_8;
  }

  if ([v6 length] >= 5)
  {
    [v6 getBytes:v10 length:5];
    if (v10[0])
    {
      self->_findingEnabled = 1;
      self->_findingStatus = v10[1];
      *&self->_findingConfig = v11;
    }

    v9 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004B548C(self, v9);
    }
  }

LABEL_8:
}

@end