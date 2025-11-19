@interface TUCall
- (BOOL)nph_hasFailed;
- (BOOL)nph_isManuallyDisconnectedSOSCall;
- (BOOL)nph_isTinCanCall;
- (BOOL)nph_wasDestinationIDRung:(id)a3;
- (NSString)nph_description;
- (NSString)nph_displayName;
- (TUConversation)nph_conversation;
- (unint64_t)nph_audioMessageType;
- (void)setNph_audioMessageType:(unint64_t)a3;
@end

@implementation TUCall

- (BOOL)nph_hasFailed
{
  v3 = [(TUCall *)self provider];
  v4 = [v3 isTinCanProvider];

  if (v4)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = [(TUCall *)self disconnectedReason];
    v5 = 0x8000001CF7F00uLL >> v6;
    if (v6 > 0x33)
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5 & 1;
}

- (BOOL)nph_isTinCanCall
{
  v2 = [(TUCall *)self provider];
  v3 = [v2 isTinCanProvider];

  return v3;
}

- (NSString)nph_description
{
  v3 = [(TUCall *)self isOutgoing];
  v4 = [(TUCall *)self needsManualInCallSounds];
  v5 = [(TUCall *)self nph_conversation];
  v6 = [(TUCall *)self remoteParticipantHandles];
  v7 = [NSString stringWithFormat:@"%@ isOutgoing: %d, needsManualInCallSounds: %d, conversation: %@, remoteParticipantHandles: %@", self, v3, v4, v5, v6];

  return v7;
}

- (void)setNph_audioMessageType:(unint64_t)a3
{
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  objc_setAssociatedObject(self, "nph_audioMessageType", v4, 3);
}

- (unint64_t)nph_audioMessageType
{
  v2 = objc_getAssociatedObject(self, "nph_audioMessageType");
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (BOOL)nph_wasDestinationIDRung:(id)a3
{
  v4 = a3;
  v5 = objc_getAssociatedObject(self, "nph_wasDestinationIDRung:");
  if (!v5)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    objc_setAssociatedObject(self, "nph_wasDestinationIDRung:", v5, 1);
  }

  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = [v6 BOOLValue];

  return v7;
}

- (BOOL)nph_isManuallyDisconnectedSOSCall
{
  v2 = objc_getAssociatedObject(self, "nph_isManuallyDisconnectedSOSCall");
  v3 = [v2 BOOLValue];

  return v3;
}

- (NSString)nph_displayName
{
  v3 = [(TUCall *)self nph_conversation];
  v4 = [v3 displayName];
  v5 = [v4 copy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(TUCall *)self displayName];
    v7 = [v8 copy];
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
    v3 = [(TUCall *)self callCenter];
    v4 = [v3 activeConversationForCall:self];

    if (v4)
    {
      [(TUCall *)self setNph_lastAssociatedConversation:v4];
    }

    else
    {
      v6 = [(TUCall *)self nph_lastAssociatedConversation];
      [(TUCall *)self setNph_lastAssociatedConversation:v6];
    }
  }

  return v4;
}

@end