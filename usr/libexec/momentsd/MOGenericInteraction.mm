@interface MOGenericInteraction
- (BOOL)isEqual:(id)equal;
- (MOGenericInteraction)init;
- (MOGenericInteraction)initWithParticipants:(id)participants;
@end

@implementation MOGenericInteraction

- (MOGenericInteraction)init
{
  v3.receiver = self;
  v3.super_class = MOGenericInteraction;
  return [(MOGenericInteraction *)&v3 init];
}

- (MOGenericInteraction)initWithParticipants:(id)participants
{
  participantsCopy = participants;
  v11.receiver = self;
  v11.super_class = MOGenericInteraction;
  v5 = [(MOGenericInteraction *)&v11 init];
  if (v5)
  {
    v6 = [participantsCopy sortedArrayUsingSelector:"compare:"];
    participants = v5->_participants;
    v5->_participants = v6;

    v8 = [(NSArray *)v5->_participants componentsJoinedByString:@"_"];
    interactionKey = v5->_interactionKey;
    v5->_interactionKey = v8;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      participants = [(MOGenericInteraction *)self participants];
      if (participants)
      {
        interactionKey3 = participants;
        participants2 = [(MOGenericInteraction *)v5 participants];
        if (!participants2)
        {
          v18 = 0;
          goto LABEL_13;
        }

        v9 = participants2;
        participants3 = [(MOGenericInteraction *)self participants];
        v11 = [participants3 count];
        participants4 = [(MOGenericInteraction *)v5 participants];
        v13 = [participants4 count];

        if (v11 == v13)
        {
          interactionKey = [(MOGenericInteraction *)self interactionKey];
          if (interactionKey)
          {
            v15 = interactionKey;
            interactionKey2 = [(MOGenericInteraction *)v5 interactionKey];

            if (interactionKey2)
            {
              interactionKey3 = [(MOGenericInteraction *)self interactionKey];
              interactionKey4 = [(MOGenericInteraction *)v5 interactionKey];
              v18 = [interactionKey3 isEqualToString:interactionKey4];

LABEL_13:
              goto LABEL_14;
            }
          }
        }
      }

      v18 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v18 = 0;
  }

LABEL_15:

  return v18;
}

@end