@interface CLKFRunningEstimates
- (CLKFRunningEstimates)init;
- (CMFactoredMatrix<float,)fP;
- (CMMatrix<float,)fH;
- (CMVector<float,)fQ;
- (CMVector<float,)fState;
- (void)assignFromObject:(id)object;
@end

@implementation CLKFRunningEstimates

- (CLKFRunningEstimates)init
{
  v3.receiver = self;
  v3.super_class = CLKFRunningEstimates;
  result = [(CLKFRunningEstimates *)&v3 init];
  if (result)
  {
    result->_fQ = 0;
    result->_fState = 0;
    result->_fH = 0;
    result->_F01 = 3.4028e38;
  }

  return result;
}

- (void)assignFromObject:(id)object
{
  if (object)
  {
    if (self != object)
    {
      [object fState];
      self->_fState.elements[0] = v5;
      self->_fState.elements[1] = v6;
      [object fP];
      self->_fP.fD = v13;
      self->_fP.fU.fData[0] = v14;
      [object fQ];
      self->_fQ.elements[0] = v7;
      self->_fQ.elements[1] = v8;
      [object fH];
      self->_fH.fData[0] = v9;
      self->_fH.fData[1] = v10;
      [object F01];
      self->_F01 = v11;
    }
  }

  else
  {
    if (qword_1025D4410 != -1)
    {
      sub_101916BCC();
    }

    v12 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "Error: assign an null object to CLKFRunningEstimates object.", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101916BE0();
    }
  }
}

- (CMVector<float,)fState
{
  v2 = self->_fState.elements[0];
  v3 = self->_fState.elements[1];
  result.elements[1] = v3;
  result.elements[0] = v2;
  return result;
}

- (CMFactoredMatrix<float,)fP
{
  *v2 = self->_fP.fD;
  v3 = self->_fP.fU.fData[0];
  v2[1].fData[0] = v3;
  result.fD.fData[0] = v3;
  return result;
}

- (CMVector<float,)fQ
{
  v2 = self->_fQ.elements[0];
  v3 = self->_fQ.elements[1];
  result.elements[1] = v3;
  result.elements[0] = v2;
  return result;
}

- (CMMatrix<float,)fH
{
  v2 = self->_fH.fData[0];
  v3 = self->_fH.fData[1];
  result.fData[1] = v3;
  result.fData[0] = v2;
  return result;
}

@end