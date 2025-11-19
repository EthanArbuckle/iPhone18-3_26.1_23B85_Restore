@interface ConfigAgent
- (BOOL)startAgentWithOptions:(id)a3;
- (ConfigAgent)initWithParameters:(id)a3;
- (NEPolicySession)preferredPolicySession;
- (id)copyAgentData;
- (id)createUUIDForName:(id)a3;
- (id)getAgentData;
- (id)getAgentMapping;
- (id)getAssociatedEntity;
- (id)getRegistrationObject;
- (id)internalStartHandler;
- (void)addAgentRegistrationObject:(id)a3;
- (void)setAgentDescription:(id)a3;
- (void)setAgentMapping:(id)a3;
- (void)setAgentUUID:(id)a3;
- (void)setInternalAgentData:(id)a3;
- (void)setInternalAgentMapping:(id)a3;
- (void)setInternalAssociatedEntity:(id)a3;
- (void)setInternalRegistrationObject:(id)a3;
- (void)setInternalStartHandler:(id)a3;
- (void)setPreferredPolicySession:(id)a3;
- (void)setStartHandler:(id)a3;
- (void)updateAgentData:(id)a3;
@end

@implementation ConfigAgent

- (ConfigAgent)initWithParameters:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ConfigAgent;
  v5 = [(ConfigAgent *)&v13 init];
  if (v5)
  {
    v6 = [v4 valueForKey:@"EntityName"];
    internalRegistrationObject = v5->_internalRegistrationObject;
    v5->_internalRegistrationObject = 0;

    v8 = [v6 copy];
    internalAssociatedEntity = v5->_internalAssociatedEntity;
    v5->_internalAssociatedEntity = v8;

    internalAgentData = v5->_internalAgentData;
    v5->_internalAgentData = 0;

    v5->_internalShouldUpdateAgent = 1;
    internalAgentMapping = v5->_internalAgentMapping;
    v5->_internalAgentMapping = 0;

    *&v5->active = 65537;
  }

  return v5;
}

- (void)addAgentRegistrationObject:(id)a3
{
  p_internalRegistrationObject = &self->_internalRegistrationObject;

  objc_storeStrong(p_internalRegistrationObject, a3);
}

- (id)getRegistrationObject
{
  internalRegistrationObject = self->_internalRegistrationObject;

  return internalRegistrationObject;
}

- (id)getAssociatedEntity
{
  internalAssociatedEntity = self->_internalAssociatedEntity;

  return internalAssociatedEntity;
}

- (id)getAgentData
{
  internalAgentData = self->_internalAgentData;

  return internalAgentData;
}

- (id)copyAgentData
{
  internalAgentData = self->_internalAgentData;

  return internalAgentData;
}

- (void)setAgentMapping:(id)a3
{
  p_internalAgentMapping = &self->_internalAgentMapping;

  objc_storeStrong(p_internalAgentMapping, a3);
}

- (id)getAgentMapping
{
  internalAgentMapping = self->_internalAgentMapping;

  return internalAgentMapping;
}

- (void)setStartHandler:(id)a3
{
  if (a3)
  {

    [(ConfigAgent *)self setInternalStartHandler:?];
  }
}

- (BOOL)startAgentWithOptions:(id)a3
{
  if ([(ConfigAgent *)self isActive])
  {
    return 0;
  }

  [(ConfigAgent *)self setActive:1];
  v5 = [(ConfigAgent *)self internalRegistrationObject];
  v6 = [v5 updateNetworkAgent:self];

  return v6;
}

- (void)updateAgentData:(id)a3
{
  v7 = a3;
  if ([v7 isEqual:self->_internalAgentData])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v7 copy];
    internalAgentData = self->_internalAgentData;
    self->_internalAgentData = v5;

    v4 = 1;
  }

  self->_internalShouldUpdateAgent = v4;
}

- (id)createUUIDForName:(id)a3
{
  v3 = [a3 UTF8String];
  v4 = strlen(v3);
  CC_SHA256(v3, v4, md);
  v5 = [[NSUUID alloc] initWithUUIDBytes:md];

  return v5;
}

- (void)setAgentUUID:(id)a3
{

  objc_setProperty_nonatomic_copy(self, a2, a3, 16);
}

- (void)setAgentDescription:(id)a3
{

  objc_setProperty_nonatomic_copy(self, a2, a3, 24);
}

- (NEPolicySession)preferredPolicySession
{

  return objc_getProperty(self, a2, 32, 1);
}

- (void)setPreferredPolicySession:(id)a3
{

  objc_setProperty_atomic(self, a2, a3, 32);
}

- (void)setInternalRegistrationObject:(id)a3
{
  p_internalRegistrationObject = &self->_internalRegistrationObject;

  objc_storeStrong(p_internalRegistrationObject, a3);
}

- (void)setInternalAssociatedEntity:(id)a3
{
  p_internalAssociatedEntity = &self->_internalAssociatedEntity;

  objc_storeStrong(p_internalAssociatedEntity, a3);
}

- (void)setInternalAgentData:(id)a3
{

  objc_setProperty_nonatomic_copy(self, a2, a3, 56);
}

- (id)internalStartHandler
{

  return objc_getProperty(self, a2, 64, 1);
}

- (void)setInternalStartHandler:(id)a3
{

  objc_setProperty_atomic_copy(self, a2, a3, 64);
}

- (void)setInternalAgentMapping:(id)a3
{
  p_internalAgentMapping = &self->_internalAgentMapping;

  objc_storeStrong(p_internalAgentMapping, a3);
}

@end