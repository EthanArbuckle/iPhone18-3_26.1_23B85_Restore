@interface NIServerSpatialInteractionPayload
- (id)_initWithUWBConfigData:(id)data presenceConfigData:(id)configData;
- (void)_parseUWBData:(id)data presenceData:(id)presenceData;
@end

@implementation NIServerSpatialInteractionPayload

- (id)_initWithUWBConfigData:(id)data presenceConfigData:(id)configData
{
  dataCopy = data;
  configDataCopy = configData;
  v11.receiver = self;
  v11.super_class = NIServerSpatialInteractionPayload;
  v8 = [(NIServerSpatialInteractionPayload *)&v11 init];
  v9 = v8;
  if (v8)
  {
    *(v8 + 11) = 0;
    *(v8 + 2) = 0;
    [v8 _parseUWBData:dataCopy presenceData:configDataCopy];
  }

  return v9;
}

- (void)_parseUWBData:(id)data presenceData:(id)presenceData
{
  dataCopy = data;
  presenceDataCopy = presenceData;
  v8 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004B5404(dataCopy, presenceDataCopy, v8);
    if (!dataCopy)
    {
      goto LABEL_8;
    }
  }

  else if (!dataCopy)
  {
    goto LABEL_8;
  }

  if ([dataCopy length] >= 5)
  {
    [dataCopy getBytes:v10 length:5];
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