@interface CTClientDelegate
- (void)carrierBundleChange:(id)a3;
- (void)defaultBundleChange;
- (void)dualSimCapabilityDidChange;
- (void)operatorBundleChange:(id)a3;
- (void)preferredDataSimChanged:(id)a3;
@end

@implementation CTClientDelegate

- (void)carrierBundleChange:(id)a3
{
  v4 = a3;
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,delegate,carrierBundleChange()}", v6, 0x12u);
  }

  (*(self->_fCarrierBundleChangeCb + 2))();
}

- (void)operatorBundleChange:(id)a3
{
  v4 = a3;
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,delegate,operatorBundleChange()}", v6, 0x12u);
  }

  (*(self->_fOperatorBundleChangeCb + 2))();
}

- (void)defaultBundleChange
{
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,delegate,defaultBundleChange()}", v4, 0x12u);
  }

  (*(self->_fDefaultBundleChangeCb + 2))();
}

- (void)preferredDataSimChanged:(id)a3
{
  v4 = a3;
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,delegate,preferredDataSimChanged()}", v6, 0x12u);
  }

  (*(self->_fPrefDataSimChangedCb + 2))();
}

- (void)dualSimCapabilityDidChange
{
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,delegate,dualSimCapabilityDidChange()}", v4, 0x12u);
  }

  (*(self->_fTandemCapabilityChangeCb + 2))();
}

@end