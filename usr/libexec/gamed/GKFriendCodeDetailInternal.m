@interface GKFriendCodeDetailInternal
- (id)initWithFriendCodeDetail:(id)a3;
@end

@implementation GKFriendCodeDetailInternal

- (id)initWithFriendCodeDetail:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = GKFriendCodeDetailInternal;
  v5 = [(GKFriendCodeDetailInternal *)&v16 init];
  if (v5)
  {
    v6 = [v4 creatorPlayerId];
    [(GKFriendCodeDetailInternal *)v5 setCreatorPlayerID:v6];

    v7 = [v4 friendCodeState];
    v8 = [&off_100383168 objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = [&off_100383168 objectForKeyedSubscript:v7];
      -[GKFriendCodeDetailInternal setFriendCodeState:](v5, "setFriendCodeState:", [v9 integerValue]);
    }

    else
    {
      [(GKFriendCodeDetailInternal *)v5 setFriendCodeState:5];
    }

    v10 = [v4 numUses];
    -[GKFriendCodeDetailInternal setFriendCodeUsageCount:](v5, "setFriendCodeUsageCount:", [v10 integerValue]);

    v11 = [v4 friendCode];
    [(GKFriendCodeDetailInternal *)v5 setFriendCode:v11];

    v12 = [v4 alreadyUsedPlayerIds];

    if (v12)
    {
      v13 = [v4 alreadyUsedPlayerIds];
      v14 = [v13 componentsSeparatedByString:{@", "}];
      [(GKFriendCodeDetailInternal *)v5 setAlreadyUsedPlayerIDs:v14];
    }
  }

  return v5;
}

@end