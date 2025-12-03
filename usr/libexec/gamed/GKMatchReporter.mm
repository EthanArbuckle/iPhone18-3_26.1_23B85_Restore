@interface GKMatchReporter
+ (GKMatchReporter)shared;
+ (void)onInviteReceivedWithBulletin:(id)bulletin;
- (void)recordActiveDevicesWithCount:(id)count;
- (void)recordGameCompleteWithCompletion:(id)completion;
- (void)recordGameStart;
- (void)recordMatchCompleteWithMatchType:(id)type result:(id)result completion:(id)completion;
- (void)recordMatchServerWithType:(id)type;
- (void)recordMatchStartWithType:(id)type minPlayers:(id)players maxPlayers:(id)maxPlayers;
- (void)recordSharePlayDevicesWithCount:(id)count;
@end

@implementation GKMatchReporter

+ (GKMatchReporter)shared
{
  matched = static MatchReporter.shared.getter();

  return matched;
}

- (void)recordMatchStartWithType:(id)type minPlayers:(id)players maxPlayers:(id)maxPlayers
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  playersCopy = players;
  maxPlayersCopy = maxPlayers;
  selfCopy = self;
  v14._countAndFlagsBits = v8;
  v14._object = v10;
  MatchReporter.recordMatchStart(type:minPlayers:maxPlayers:)(v14, playersCopy, maxPlayersCopy);
}

- (void)recordMatchServerWithType:(id)type
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  MatchReporter.recordMatchServer(type:)(v8);
}

- (void)recordActiveDevicesWithCount:(id)count
{
  countCopy = count;
  selfCopy = self;
  MatchReporter.recordActiveDevices(count:)(countCopy);
}

- (void)recordSharePlayDevicesWithCount:(id)count
{
  countCopy = count;
  selfCopy = self;
  MatchReporter.recordSharePlayDevices(count:)(countCopy);
}

- (void)recordMatchCompleteWithMatchType:(id)type result:(id)result completion:(id)completion
{
  v8 = _Block_copy(completion);
  if (type)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!result)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (result)
  {
LABEL_3:
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_5:
  *(swift_allocObject() + 16) = v8;
  selfCopy = self;
  MatchReporter.recordMatchComplete(matchType:result:completion:)();
}

- (void)recordGameStart
{
  selfCopy = self;
  MatchReporter.recordGameStart()();
}

- (void)recordGameCompleteWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v4;
  selfCopy = self;
  MatchReporter.recordGameComplete(completion:)();
}

+ (void)onInviteReceivedWithBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  static MatchReporter.onInviteReceived(bulletin:)();
}

@end