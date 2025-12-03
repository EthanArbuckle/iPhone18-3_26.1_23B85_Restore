@interface ConfigAgent
- (BOOL)startAgentWithOptions:(id)options;
- (ConfigAgent)initWithParameters:(id)parameters;
- (NEPolicySession)preferredPolicySession;
- (id)copyAgentData;
- (id)createUUIDForName:(id)name;
- (id)getAgentData;
- (id)getAgentMapping;
- (id)getAssociatedEntity;
- (id)getRegistrationObject;
- (id)internalStartHandler;
- (void)addAgentRegistrationObject:(id)object;
- (void)setAgentDescription:(id)description;
- (void)setAgentMapping:(id)mapping;
- (void)setAgentUUID:(id)d;
- (void)setInternalAgentData:(id)data;
- (void)setInternalAgentMapping:(id)mapping;
- (void)setInternalAssociatedEntity:(id)entity;
- (void)setInternalRegistrationObject:(id)object;
- (void)setInternalStartHandler:(id)handler;
- (void)setPreferredPolicySession:(id)session;
- (void)setStartHandler:(id)handler;
- (void)updateAgentData:(id)data;
@end

@implementation ConfigAgent

- (ConfigAgent)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v13.receiver = self;
  v13.super_class = ConfigAgent;
  v5 = [(ConfigAgent *)&v13 init];
  if (v5)
  {
    v6 = [parametersCopy valueForKey:@"EntityName"];
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

- (void)addAgentRegistrationObject:(id)object
{
  p_internalRegistrationObject = &self->_internalRegistrationObject;

  objc_storeStrong(p_internalRegistrationObject, object);
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

- (void)setAgentMapping:(id)mapping
{
  p_internalAgentMapping = &self->_internalAgentMapping;

  objc_storeStrong(p_internalAgentMapping, mapping);
}

- (id)getAgentMapping
{
  internalAgentMapping = self->_internalAgentMapping;

  return internalAgentMapping;
}

- (void)setStartHandler:(id)handler
{
  if (handler)
  {

    [(ConfigAgent *)self setInternalStartHandler:?];
  }
}

- (BOOL)startAgentWithOptions:(id)options
{
  if ([(ConfigAgent *)self isActive])
  {
    return 0;
  }

  [(ConfigAgent *)self setActive:1];
  internalRegistrationObject = [(ConfigAgent *)self internalRegistrationObject];
  v6 = [internalRegistrationObject updateNetworkAgent:self];

  return v6;
}

- (void)updateAgentData:(id)data
{
  dataCopy = data;
  if ([dataCopy isEqual:self->_internalAgentData])
  {
    v4 = 0;
  }

  else
  {
    v5 = [dataCopy copy];
    internalAgentData = self->_internalAgentData;
    self->_internalAgentData = v5;

    v4 = 1;
  }

  self->_internalShouldUpdateAgent = v4;
}

- (id)createUUIDForName:(id)name
{
  uTF8String = [name UTF8String];
  v4 = strlen(uTF8String);
  CC_SHA256(uTF8String, v4, md);
  v5 = [[NSUUID alloc] initWithUUIDBytes:md];

  return v5;
}

- (void)setAgentUUID:(id)d
{

  objc_setProperty_nonatomic_copy(self, a2, d, 16);
}

- (void)setAgentDescription:(id)description
{

  objc_setProperty_nonatomic_copy(self, a2, description, 24);
}

- (NEPolicySession)preferredPolicySession
{

  return objc_getProperty(self, a2, 32, 1);
}

- (void)setPreferredPolicySession:(id)session
{

  objc_setProperty_atomic(self, a2, session, 32);
}

- (void)setInternalRegistrationObject:(id)object
{
  p_internalRegistrationObject = &self->_internalRegistrationObject;

  objc_storeStrong(p_internalRegistrationObject, object);
}

- (void)setInternalAssociatedEntity:(id)entity
{
  p_internalAssociatedEntity = &self->_internalAssociatedEntity;

  objc_storeStrong(p_internalAssociatedEntity, entity);
}

- (void)setInternalAgentData:(id)data
{

  objc_setProperty_nonatomic_copy(self, a2, data, 56);
}

- (id)internalStartHandler
{

  return objc_getProperty(self, a2, 64, 1);
}

- (void)setInternalStartHandler:(id)handler
{

  objc_setProperty_atomic_copy(self, a2, handler, 64);
}

- (void)setInternalAgentMapping:(id)mapping
{
  p_internalAgentMapping = &self->_internalAgentMapping;

  objc_storeStrong(p_internalAgentMapping, mapping);
}

@end