@interface MOGroupedInteraction
- (MOGroupedInteraction)initWithScoredContact:(id)a3 interactionScore:(id)a4 interaction:(id)a5;
- (id)description;
- (void)addInteraction:(id)a3;
@end

@implementation MOGroupedInteraction

- (MOGroupedInteraction)initWithScoredContact:(id)a3 interactionScore:(id)a4 interaction:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (initWithScoredContact_interactionScore_interaction__onceToken != -1)
  {
    [MOGroupedInteraction initWithScoredContact:interactionScore:interaction:];
  }

  v18.receiver = self;
  v18.super_class = MOGroupedInteraction;
  v12 = [(MOGenericInteraction *)&v18 init];
  if (v12)
  {
    v13 = [v11 participants];
    [(MOGenericInteraction *)v12 setParticipants:v13];

    v14 = [v11 interactionKey];
    [(MOGenericInteraction *)v12 setInteractionKey:v14];

    objc_storeStrong(&v12->_scoredContact, a3);
    objc_storeStrong(&v12->_interactionScore, a4);
    v12->_isScoredContactUsable = 0;
    v15 = objc_opt_new();
    interactions = v12->_interactions;
    v12->_interactions = v15;

    [(MOGroupedInteraction *)v12 addInteraction:v11];
  }

  return v12;
}

void __75__MOGroupedInteraction_initWithScoredContact_interactionScore_interaction___block_invoke(id a1)
{
  _callLikeMechanismsSet = [[NSSet alloc] initWithObjects:{&off_100369E38, &off_100369E50, &off_100369E68, &off_100369E80, &off_100369E98, &off_100369EB0, &off_100369EC8, &off_100369EE0, 0}];

  _objc_release_x1();
}

- (void)addInteraction:(id)a3
{
  v12 = a3;
  v4 = [(MOGroupedInteraction *)self interactions];
  [v4 addObject:v12];

  if (![(MOGroupedInteraction *)self isScoredContactUsable])
  {
    v5 = [(MOGroupedInteraction *)self scoredContact];

    if (v5)
    {
      v6 = _callLikeMechanismsSet;
      v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v12 mechanism]);
      LODWORD(v6) = [v6 containsObject:v7];

      if (!v6)
      {
        goto LABEL_5;
      }

      v8 = [v12 endDate];
      v9 = [v12 startDate];
      [v8 timeIntervalSinceDate:v9];
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
  v4 = [(MOGenericInteraction *)self interactionKey];
  v5 = [(MOGroupedInteraction *)self scoredContact];
  v6 = [(MOGroupedInteraction *)self interactionScore];
  v7 = [(MOGroupedInteraction *)self interactions];
  v8 = [v3 initWithFormat:@"<MOGroupedInteraction | groupKey:%@ scoredContact:%@ score:%@ interactions:%@>", v4, v5, v6, v7];

  return v8;
}

@end