@interface WRM_Mobility_Context
- (WRM_Mobility_Context)init;
- (unint64_t)getMappedApplicationType;
- (void)activateMobilityContext:(BOOL)context;
- (void)dealloc;
- (void)setMappedApplicationType:(unint64_t)type :(int)a4;
@end

@implementation WRM_Mobility_Context

- (WRM_Mobility_Context)init
{
  v5.receiver = self;
  v5.super_class = WRM_Mobility_Context;
  v2 = [(WRM_Mobility_Context *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *&v2->m_iWLANLinkType = 0x200000002;
    v2->m_LinkBandwidth = 0;
    v2->m_ApplicationType = 0;
    v2->m_LinkQoS = 0;
    *&v2->m_context_stale = 1;
    v2->m_callActive = 0;
    v2->m_startTime = [+[NSDate date](NSDate copy];
    v3->m_prevTimeSinceStart = 0.0;
    v3->mPingPongAvoidanceMultiplier = 1;
    v3->m_SubscriptionType = 0;
  }

  return v3;
}

- (void)dealloc
{
  p_m_startTime = &self->m_startTime;
  m_startTime = self->m_startTime;
  *&self->m_iWLANLinkType = 0x200000002;
  self->m_context_stale = 0;
  self->m_callActive = 0;
  self->m_LinkBandwidth = 0;
  self->m_ApplicationType = 0;
  self->m_LinkQoS = 0;
  if (m_startTime)
  {

    *p_m_startTime = 0;
    p_m_startTime[1] = 0;
  }

  self->m_linkPreferenceNotificationRequired = 0;
  v5.receiver = self;
  v5.super_class = WRM_Mobility_Context;
  [(WRM_Mobility_Context *)&v5 dealloc];
}

- (unint64_t)getMappedApplicationType
{
  if (self->m_ApplicationType == 2)
  {
    return 1;
  }

  else
  {
    return self->m_ApplicationType;
  }
}

- (void)setMappedApplicationType:(unint64_t)type :(int)a4
{
  v4 = a4 == 2 && type == 1;
  typeCopy = 2;
  if (!v4)
  {
    typeCopy = type;
  }

  self->m_ApplicationType = typeCopy;
}

- (void)activateMobilityContext:(BOOL)context
{
  if (context)
  {
    self->m_context_stale = 0;
  }
}

@end