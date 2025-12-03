@interface MOWeatherData
- (_TtC8momentsd13MOWeatherData)init;
- (_TtC8momentsd13MOWeatherData)initWithTemperature:(id)temperature windSpeed:(id)speed weatherSummry:(id)summry symbolName:(id)name;
- (id)getSymbolName;
- (id)getWeatherSummary;
- (void)setTemperature:(id)temperature;
- (void)setWindSpeed:(id)speed;
@end

@implementation MOWeatherData

- (void)setTemperature:(id)temperature
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v13 - v8;
  type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for NSUnitTemperature, NSUnitTemperature_ptr);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = OBJC_IVAR____TtC8momentsd13MOWeatherData_temperature;
  swift_beginAccess();
  v11 = *(v5 + 40);
  selfCopy = self;
  v11(self + v10, v9, v4);
  swift_endAccess();
}

- (void)setWindSpeed:(id)speed
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v13 - v8;
  type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for NSUnitSpeed, NSUnitSpeed_ptr);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = OBJC_IVAR____TtC8momentsd13MOWeatherData_windSpeed;
  swift_beginAccess();
  v11 = *(v5 + 40);
  selfCopy = self;
  v11(self + v10, v9, v4);
  swift_endAccess();
}

- (_TtC8momentsd13MOWeatherData)initWithTemperature:(id)temperature windSpeed:(id)speed weatherSummry:(id)summry symbolName:(id)name
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v31, v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  v30 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = &v30 - v16;
  type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for NSUnitTemperature, NSUnitTemperature_ptr);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for NSUnitSpeed, NSUnitSpeed_ptr);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  (*(v13 + 16))(self + OBJC_IVAR____TtC8momentsd13MOWeatherData_temperature, v17, v12);
  v24 = v31;
  (*(v7 + 16))(self + OBJC_IVAR____TtC8momentsd13MOWeatherData_windSpeed, v11, v31);
  v25 = (self + OBJC_IVAR____TtC8momentsd13MOWeatherData_weatherSummary);
  *v25 = v18;
  v25[1] = v20;
  v26 = (self + OBJC_IVAR____TtC8momentsd13MOWeatherData_symbolName);
  *v26 = v21;
  v26[1] = v23;
  v27 = type metadata accessor for MOWeatherData();
  v32.receiver = self;
  v32.super_class = v27;
  v28 = [(MOWeatherData *)&v32 init];
  (*(v7 + 8))(v11, v24);
  (*(v13 + 8))(v17, v30);
  return v28;
}

- (id)getWeatherSummary
{
  v2 = *((swift_isaMask & *self) + 0xA0);
  selfCopy = self;
  v2();

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (id)getSymbolName
{
  v2 = *((swift_isaMask & *self) + 0xB8);
  selfCopy = self;
  v2();

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (_TtC8momentsd13MOWeatherData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end