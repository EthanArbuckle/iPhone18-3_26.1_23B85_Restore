@interface DMDActivationPredicateObserver
- (DMDActivationPredicateObserver)initWithDelegate:(id)delegate uniqueIdentifier:(id)identifier predicate:(id)predicate;
- (DMDActivationPredicateObserverDelegate)delegate;
- (id)calendarForIdentifier:(id)identifier;
- (id)metadata;
- (void)reportActivationPredicateObserverDidTrigger;
@end

@implementation DMDActivationPredicateObserver

- (DMDActivationPredicateObserver)initWithDelegate:(id)delegate uniqueIdentifier:(id)identifier predicate:(id)predicate
{
  delegateCopy = delegate;
  identifierCopy = identifier;
  predicateCopy = predicate;
  v19.receiver = self;
  v19.super_class = DMDActivationPredicateObserver;
  v11 = [(DMDActivationPredicateObserver *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, delegateCopy);
    v12->_lastPredicateEvaluationValue = 0;
    payloadType = [predicateCopy payloadType];
    v14 = [payloadType copy];
    predicateType = v12->_predicateType;
    v12->_predicateType = v14;

    v16 = [identifierCopy copy];
    uniqueIdentifier = v12->_uniqueIdentifier;
    v12->_uniqueIdentifier = v16;
  }

  return v12;
}

- (id)metadata
{
  v8[0] = DMFDeclarationStatePredicateTypeKey;
  predicateType = [(DMDActivationPredicateObserver *)self predicateType];
  v9[0] = predicateType;
  v8[1] = DMFDeclarationStatePredicateLastEvaluationValueKey;
  v4 = [NSNumber numberWithBool:[(DMDActivationPredicateObserver *)self lastPredicateEvaluationValue]];
  v9[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
  v6 = [v5 mutableCopy];

  return v6;
}

- (void)reportActivationPredicateObserverDidTrigger
{
  delegate = [(DMDActivationPredicateObserver *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10000D744;
    v4[3] = &unk_1000CDC38;
    v5 = delegate;
    selfCopy = self;
    dispatch_async(&_dispatch_main_q, v4);
  }
}

- (id)calendarForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = NSCalendarIdentifierGregorian;
  if ([identifierCopy isEqualToString:@"buddhist"])
  {
    v5 = &NSCalendarIdentifierBuddhist;
LABEL_11:
    v6 = *v5;

    v4 = v6;
    goto LABEL_12;
  }

  if ([identifierCopy isEqualToString:@"chinese"])
  {
    v5 = &NSCalendarIdentifierChinese;
    goto LABEL_11;
  }

  if ([identifierCopy isEqualToString:@"coptic"])
  {
    v5 = &NSCalendarIdentifierCoptic;
    goto LABEL_11;
  }

  if ([identifierCopy isEqualToString:@"ethiopic-amete-alem"])
  {
    v5 = &NSCalendarIdentifierEthiopicAmeteAlem;
    goto LABEL_11;
  }

  if ([identifierCopy isEqualToString:@"ethiopic-amete-mihret"])
  {
    v5 = &NSCalendarIdentifierEthiopicAmeteMihret;
    goto LABEL_11;
  }

  if (([identifierCopy isEqualToString:@"gregorian"] & 1) == 0)
  {
    if ([identifierCopy isEqualToString:@"hebrew"])
    {
      v5 = &NSCalendarIdentifierHebrew;
      goto LABEL_11;
    }

    if ([identifierCopy isEqualToString:@"indian"])
    {
      v5 = &NSCalendarIdentifierIndian;
      goto LABEL_11;
    }

    if ([identifierCopy isEqualToString:@"islamic"])
    {
      v5 = &NSCalendarIdentifierIslamic;
      goto LABEL_11;
    }

    if ([identifierCopy isEqualToString:@"islamic-civil"])
    {
      v5 = &NSCalendarIdentifierIslamicCivil;
      goto LABEL_11;
    }

    if ([identifierCopy isEqualToString:@"islamic-tbla"])
    {
      v5 = &NSCalendarIdentifierIslamicTabular;
      goto LABEL_11;
    }

    if ([identifierCopy isEqualToString:@"islamic-umalqura"])
    {
      v5 = &NSCalendarIdentifierIslamicUmmAlQura;
      goto LABEL_11;
    }

    if ([identifierCopy isEqualToString:@"iso8601"])
    {
      v5 = &NSCalendarIdentifierISO8601;
      goto LABEL_11;
    }

    if ([identifierCopy isEqualToString:@"japanese"])
    {
      v5 = &NSCalendarIdentifierJapanese;
      goto LABEL_11;
    }

    if ([identifierCopy isEqualToString:@"persian"])
    {
      v5 = &NSCalendarIdentifierPersian;
      goto LABEL_11;
    }

    if ([identifierCopy isEqualToString:@"roc"])
    {
      v5 = &NSCalendarIdentifierRepublicOfChina;
      goto LABEL_11;
    }
  }

LABEL_12:
  v7 = [NSCalendar calendarWithIdentifier:v4];

  return v7;
}

- (DMDActivationPredicateObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end