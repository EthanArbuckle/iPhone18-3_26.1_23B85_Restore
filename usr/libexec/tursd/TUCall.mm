@interface TUCall
- (BOOL)nph_hasFailed;
- (BOOL)nph_isManuallyDisconnectedSOSCall;
- (BOOL)nph_isTinCanCall;
- (BOOL)nph_wasDestinationIDRung:(id)rung;
- (NSString)nph_description;
- (NSString)nph_displayName;
- (TUConversation)nph_conversation;
- (unint64_t)nph_audioMessageType;
- (void)setNph_audioMessageType:(unint64_t)type;
@end

@implementation TUCall

- (BOOL)nph_hasFailed
{
  provider = [(TUCall *)self provider];
  isTinCanProvider = [provider isTinCanProvider];

  if (isTinCanProvider)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    disconnectedReason = [(TUCall *)self disconnectedReason];
    v5 = 0x8000001CF7F00uLL >> disconnectedReason;
    if (disconnectedReason > 0x33)
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5 & 1;
}

- (BOOL)nph_isTinCanCall
{
  provider = [(TUCall *)self provider];
  isTinCanProvider = [provider isTinCanProvider];

  return isTinCanProvider;
}

- (NSString)nph_description
{
  isOutgoing = [(TUCall *)self isOutgoing];
  needsManualInCallSounds = [(TUCall *)self needsManualInCallSounds];
  nph_conversation = [(TUCall *)self nph_conversation];
  remoteParticipantHandles = [(TUCall *)self remoteParticipantHandles];
  v7 = [NSString stringWithFormat:@"%@ isOutgoing: %d, needsManualInCallSounds: %d, conversation: %@, remoteParticipantHandles: %@", self, isOutgoing, needsManualInCallSounds, nph_conversation, remoteParticipantHandles];

  return v7;
}

- (void)setNph_audioMessageType:(unint64_t)type
{
  v4 = [NSNumber numberWithUnsignedInteger:type];
  objc_setAssociatedObject(self, "nph_audioMessageType", v4, 3);
}

- (unint64_t)nph_audioMessageType
{
  v2 = objc_getAssociatedObject(self, "nph_audioMessageType");
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (BOOL)nph_wasDestinationIDRung:(id)rung
{
  rungCopy = rung;
  v5 = objc_getAssociatedObject(self, "nph_wasDestinationIDRung:");
  if (!v5)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    objc_setAssociatedObject(self, "nph_wasDestinationIDRung:", v5, 1);
  }

  v6 = [v5 objectForKeyedSubscript:rungCopy];
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (BOOL)nph_isManuallyDisconnectedSOSCall
{
  v2 = objc_getAssociatedObject(self, "nph_isManuallyDisconnectedSOSCall");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSString)nph_displayName
{
  nph_conversation = [(TUCall *)self nph_conversation];
  displayName = [nph_conversation displayName];
  v5 = [displayName copy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    displayName2 = [(TUCall *)self displayName];
    v7 = [displayName2 copy];
  }

  return v7;
}

- (TUConversation)nph_conversation
{
  if (([(TUCall *)self isConferenced]& 1) != 0 || ![(TUCall *)self isConversation])
  {
    v4 = 0;
  }

  else
  {
    callCenter = [(TUCall *)self callCenter];
    v4 = [callCenter activeConversationForCall:self];

    if (v4)
    {
      [(TUCall *)self setNph_lastAssociatedConversation:v4];
    }

    else
    {
      nph_lastAssociatedConversation = [(TUCall *)self nph_lastAssociatedConversation];
      [(TUCall *)self setNph_lastAssociatedConversation:nph_lastAssociatedConversation];
    }
  }

  return v4;
}

@end