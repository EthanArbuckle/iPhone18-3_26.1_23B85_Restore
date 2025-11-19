@interface ProxyAgent
- (ProxyAgent)initWithParameters:(id)a3;
- (id)getAgentName;
- (id)getAgentUUID;
- (void)setAgentDescription:(id)a3;
- (void)setAgentUUID:(id)a3;
- (void)setInternalAgentName:(id)a3;
@end

@implementation ProxyAgent

- (ProxyAgent)initWithParameters:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = ProxyAgent;
  v5 = [(ConfigAgent *)&v18 initWithParameters:v4];
  if (v5)
  {
    v6 = [v4 valueForKey:@"EntityName"];
    v7 = [v4 valueForKey:@"AgentSubType"];
    v8 = [objc_opt_class() agentType];
    v9 = [NSString stringWithFormat:@"%@-%@", v8, v6];
    internalAgentName = v5->_internalAgentName;
    v5->_internalAgentName = v9;

    v5->_internalAgentSubType = [v7 unsignedIntegerValue];
    v5->_internalAgentType = 1;
    objc_storeStrong(&v5->agentDescription, v5->_internalAgentName);
    agentDescription = v5->agentDescription;
    v17.receiver = v5;
    v17.super_class = ProxyAgent;
    v12 = [(ConfigAgent *)&v17 createUUIDForName:agentDescription];
    agentUUID = v5->agentUUID;
    v5->agentUUID = v12;

    if (!v5->agentUUID)
    {
      v14 = +[NSUUID UUID];
      v15 = v5->agentUUID;
      v5->agentUUID = v14;
    }
  }

  return v5;
}

- (id)getAgentName
{
  internalAgentName = self->_internalAgentName;

  return internalAgentName;
}

- (id)getAgentUUID
{
  agentUUID = self->agentUUID;

  return agentUUID;
}

- (void)setAgentUUID:(id)a3
{

  objc_setProperty_nonatomic_copy(self, a2, a3, 80);
}

- (void)setAgentDescription:(id)a3
{

  objc_setProperty_nonatomic_copy(self, a2, a3, 88);
}

- (void)setInternalAgentName:(id)a3
{
  p_internalAgentName = &self->_internalAgentName;

  objc_storeStrong(p_internalAgentName, a3);
}

@end