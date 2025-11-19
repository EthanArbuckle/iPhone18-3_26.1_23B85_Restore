@interface DNSAgent
- (DNSAgent)initWithParameters:(id)a3;
- (id)getAgentName;
- (id)getAgentUUID;
- (void)setAgentDescription:(id)a3;
- (void)setAgentUUID:(id)a3;
- (void)setInternalAgentName:(id)a3;
@end

@implementation DNSAgent

- (DNSAgent)initWithParameters:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = DNSAgent;
  v5 = [(ConfigAgent *)&v19 initWithParameters:v4];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [v4 valueForKey:@"EntityName"];
  v7 = [v4 valueForKey:@"AgentSubType"];
  v8 = [objc_opt_class() agentType];
  if ([v7 unsignedIntegerValue] == 7)
  {
    v9 = @"DNSAgent(m)";
LABEL_6:

    v8 = v9;
    goto LABEL_7;
  }

  if ([v7 unsignedIntegerValue] == 8)
  {
    v9 = @"DNSAgent(p)";
    goto LABEL_6;
  }

LABEL_7:
  v10 = [NSString stringWithFormat:@"%@-%@", v8, v6];
  internalAgentName = v5->_internalAgentName;
  v5->_internalAgentName = v10;

  v5->_internalAgentSubType = [v7 unsignedIntegerValue];
  v5->_internalAgentType = 2;
  objc_storeStrong(&v5->agentDescription, v5->_internalAgentName);
  agentDescription = v5->agentDescription;
  v18.receiver = v5;
  v18.super_class = DNSAgent;
  v13 = [(ConfigAgent *)&v18 createUUIDForName:agentDescription];
  agentUUID = v5->agentUUID;
  v5->agentUUID = v13;

  if (!v5->agentUUID)
  {
    v15 = +[NSUUID UUID];
    v16 = v5->agentUUID;
    v5->agentUUID = v15;
  }

LABEL_10:
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