@interface MOGenericInteraction
- (BOOL)isEqual:(id)a3;
- (MOGenericInteraction)init;
- (MOGenericInteraction)initWithParticipants:(id)a3;
@end

@implementation MOGenericInteraction

- (MOGenericInteraction)init
{
  v3.receiver = self;
  v3.super_class = MOGenericInteraction;
  return [(MOGenericInteraction *)&v3 init];
}

- (MOGenericInteraction)initWithParticipants:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MOGenericInteraction;
  v5 = [(MOGenericInteraction *)&v11 init];
  if (v5)
  {
    v6 = [v4 sortedArrayUsingSelector:"compare:"];
    participants = v5->_participants;
    v5->_participants = v6;

    v8 = [(NSArray *)v5->_participants componentsJoinedByString:@"_"];
    interactionKey = v5->_interactionKey;
    v5->_interactionKey = v8;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MOGenericInteraction *)self participants];
      if (v6)
      {
        v7 = v6;
        v8 = [(MOGenericInteraction *)v5 participants];
        if (!v8)
        {
          v18 = 0;
          goto LABEL_13;
        }

        v9 = v8;
        v10 = [(MOGenericInteraction *)self participants];
        v11 = [v10 count];
        v12 = [(MOGenericInteraction *)v5 participants];
        v13 = [v12 count];

        if (v11 == v13)
        {
          v14 = [(MOGenericInteraction *)self interactionKey];
          if (v14)
          {
            v15 = v14;
            v16 = [(MOGenericInteraction *)v5 interactionKey];

            if (v16)
            {
              v7 = [(MOGenericInteraction *)self interactionKey];
              v17 = [(MOGenericInteraction *)v5 interactionKey];
              v18 = [v7 isEqualToString:v17];

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