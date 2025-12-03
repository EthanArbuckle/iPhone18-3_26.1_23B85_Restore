@interface SEStorageManagementCellularPlans
+ (void)telephonyPlansWithCompletion:(id)completion;
- (SEStorageManagementCellularPlans)initWithIdentifier:(id)identifier label:(id)label;
@end

@implementation SEStorageManagementCellularPlans

+ (void)telephonyPlansWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[CTCellularPlanManager sharedManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002CE08;
  v6[3] = &unk_1004C1EC0;
  v7 = completionCopy;
  v5 = completionCopy;
  [v4 planItemsWithCompletion:v6];
}

- (SEStorageManagementCellularPlans)initWithIdentifier:(id)identifier label:(id)label
{
  identifierCopy = identifier;
  labelCopy = label;
  v11.receiver = self;
  v11.super_class = SEStorageManagementCellularPlans;
  v8 = [(SEStorageManagementCellularPlans *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(SEStorageManagementCellularPlans *)v8 setIccid:identifierCopy];
    [(SEStorageManagementCellularPlans *)v9 setLabel:labelCopy];
  }

  return v9;
}

@end