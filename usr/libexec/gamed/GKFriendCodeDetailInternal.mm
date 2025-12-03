@interface GKFriendCodeDetailInternal
- (id)initWithFriendCodeDetail:(id)detail;
@end

@implementation GKFriendCodeDetailInternal

- (id)initWithFriendCodeDetail:(id)detail
{
  detailCopy = detail;
  v16.receiver = self;
  v16.super_class = GKFriendCodeDetailInternal;
  v5 = [(GKFriendCodeDetailInternal *)&v16 init];
  if (v5)
  {
    creatorPlayerId = [detailCopy creatorPlayerId];
    [(GKFriendCodeDetailInternal *)v5 setCreatorPlayerID:creatorPlayerId];

    friendCodeState = [detailCopy friendCodeState];
    v8 = [&off_100383168 objectForKeyedSubscript:friendCodeState];

    if (v8)
    {
      v9 = [&off_100383168 objectForKeyedSubscript:friendCodeState];
      -[GKFriendCodeDetailInternal setFriendCodeState:](v5, "setFriendCodeState:", [v9 integerValue]);
    }

    else
    {
      [(GKFriendCodeDetailInternal *)v5 setFriendCodeState:5];
    }

    numUses = [detailCopy numUses];
    -[GKFriendCodeDetailInternal setFriendCodeUsageCount:](v5, "setFriendCodeUsageCount:", [numUses integerValue]);

    friendCode = [detailCopy friendCode];
    [(GKFriendCodeDetailInternal *)v5 setFriendCode:friendCode];

    alreadyUsedPlayerIds = [detailCopy alreadyUsedPlayerIds];

    if (alreadyUsedPlayerIds)
    {
      alreadyUsedPlayerIds2 = [detailCopy alreadyUsedPlayerIds];
      v14 = [alreadyUsedPlayerIds2 componentsSeparatedByString:{@", "}];
      [(GKFriendCodeDetailInternal *)v5 setAlreadyUsedPlayerIDs:v14];
    }
  }

  return v5;
}

@end