@interface AntBlockPowerLimitCnvPolicy
- (AntBlockPowerLimitCnvPolicy)init;
- (id)constructXpcMessage;
- (void)extractPolicy:(id)policy;
@end

@implementation AntBlockPowerLimitCnvPolicy

- (AntBlockPowerLimitCnvPolicy)init
{
  v3.receiver = self;
  v3.super_class = AntBlockPowerLimitCnvPolicy;
  result = [(AntBlockPowerLimitBasePolicy *)&v3 init];
  result->_mConditionId = 0;
  return result;
}

- (void)extractPolicy:(id)policy
{
  v6.receiver = self;
  v6.super_class = AntBlockPowerLimitCnvPolicy;
  policyCopy = policy;
  [(AntBlockPowerLimitBasePolicy *)&v6 extractPolicy:policyCopy];
  v5 = [policyCopy objectForKey:{@"Condition_Id", v6.receiver, v6.super_class}];

  -[AntBlockPowerLimitCnvPolicy setParameterConditionId:](self, "setParameterConditionId:", [v5 integerValue]);
}

- (id)constructXpcMessage
{
  v6.receiver = self;
  v6.super_class = AntBlockPowerLimitCnvPolicy;
  constructXpcMessage = [(AntBlockPowerLimitBasePolicy *)&v6 constructXpcMessage];
  v4 = constructXpcMessage;
  if (constructXpcMessage)
  {
    xpc_dictionary_set_uint64(constructXpcMessage, "kWCMCellularSetAntBlocking_Policy_ConditionId", self->_mConditionId);
  }

  return v4;
}

@end