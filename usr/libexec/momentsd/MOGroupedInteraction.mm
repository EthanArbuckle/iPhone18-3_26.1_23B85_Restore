@interface MOGroupedInteraction
- (MOGroupedInteraction)initWithScoredContact:(id)contact interactionScore:(id)score interaction:(id)interaction;
- (id)description;
- (void)addInteraction:(id)interaction;
@end

@implementation MOGroupedInteraction

- (MOGroupedInteraction)initWithScoredContact:(id)contact interactionScore:(id)score interaction:(id)interaction
{
  contactCopy = contact;
  scoreCopy = score;
  interactionCopy = interaction;
  if (initWithScoredContact_interactionScore_interaction__onceToken != -1)
  {
    [MOGroupedInteraction initWithScoredContact:interactionScore:interaction:];
  }

  v18.receiver = self;
  v18.super_class = MOGroupedInteraction;
  v12 = [(MOGenericInteraction *)&v18 init];
  if (v12)
  {
    participants = [interactionCopy participants];
    [(MOGenericInteraction *)v12 setParticipants:participants];

    interactionKey = [interactionCopy interactionKey];
    [(MOGenericInteraction *)v12 setInteractionKey:interactionKey];

    objc_storeStrong(&v12->_scoredContact, contact);
    objc_storeStrong(&v12->_interactionScore, score);
    v12->_isScoredContactUsable = 0;
    v15 = objc_opt_new();
    interactions = v12->_interactions;
    v12->_interactions = v15;

    [(MOGroupedInteraction *)v12 addInteraction:interactionCopy];
  }

  return v12;
}

void __75__MOGroupedInteraction_initWithScoredContact_interactionScore_interaction___block_invoke(id a1)
{
  _callLikeMechanismsSet = [[NSSet alloc] initWithObjects:{&off_100369E38, &off_100369E50, &off_100369E68, &off_100369E80, &off_100369E98, &off_100369EB0, &off_100369EC8, &off_100369EE0, 0}];

  _objc_release_x1();
}

- (void)addInteraction:(id)interaction
{
  interactionCopy = interaction;
  interactions = [(MOGroupedInteraction *)self interactions];
  [interactions addObject:interactionCopy];

  if (![(MOGroupedInteraction *)self isScoredContactUsable])
  {
    scoredContact = [(MOGroupedInteraction *)self scoredContact];

    if (scoredContact)
    {
      v6 = _callLikeMechanismsSet;
      v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [interactionCopy mechanism]);
      LODWORD(v6) = [v6 containsObject:v7];

      if (!v6)
      {
        goto LABEL_5;
      }

      endDate = [interactionCopy endDate];
      startDate = [interactionCopy startDate];
      [endDate timeIntervalSinceDate:startDate];
      v11 = v10;

      if (v11 >= 5.0)
      {
LABEL_5:
        [(MOGroupedInteraction *)self setIsScoredContactUsable:1];
      }
    }
  }
}

- (id)description
{
  v3 = [NSString alloc];
  interactionKey = [(MOGenericInteraction *)self interactionKey];
  scoredContact = [(MOGroupedInteraction *)self scoredContact];
  interactionScore = [(MOGroupedInteraction *)self interactionScore];
  interactions = [(MOGroupedInteraction *)self interactions];
  v8 = [v3 initWithFormat:@"<MOGroupedInteraction | groupKey:%@ scoredContact:%@ score:%@ interactions:%@>", interactionKey, scoredContact, interactionScore, interactions];

  return v8;
}

@end