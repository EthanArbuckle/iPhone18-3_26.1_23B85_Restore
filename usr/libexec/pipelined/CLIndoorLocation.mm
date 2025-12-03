@interface CLIndoorLocation
+ (id)fromGpsEstimate:(id)estimate;
+ (id)fromPoseEstimate:(const void *)estimate andGpsEstimate:(id)gpsEstimate;
- ($146E4FC062DDF4A2C58C04BCAEC0B25D)diagnosticReport;
- ($FE0CC061C8DCDB9119F02F95D6E19FCC)location;
- (CLIndoorLocation)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setDiagnosticReport:(id *)report;
- (void)setLocation:(id *)location;
@end

@implementation CLIndoorLocation

- (CLIndoorLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = CLIndoorLocation;
  v5 = [(CLIndoorLocation *)&v23 init];
  if (v5)
  {
    sub_1001718AC(coderCopy, v22);
    v6 = v22[3];
    *(v5 + 200) = v22[2];
    *(v5 + 216) = v6;
    v7 = v22[5];
    *(v5 + 232) = v22[4];
    *(v5 + 248) = v7;
    v8 = v22[1];
    *(v5 + 168) = v22[0];
    *(v5 + 184) = v8;
    v9 = v22[7];
    *(v5 + 264) = v22[6];
    *(v5 + 280) = v9;
    *(v5 + 296) = v22[8];
    *(v5 + 308) = *(&v22[8] + 12);
    sub_100171954(coderCopy, v22);
    memcpy(v5 + 328, v22, 0x230uLL);
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locationId"];
    v11 = *(v5 + 2);
    *(v5 + 2) = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locationDescription"];
    v13 = *(v5 + 3);
    *(v5 + 3) = v12;

    v5[8] = [coderCopy decodeBoolForKey:@"gpsAssistance"];
    sub_1001719FC(coderCopy, v22);
    v14 = *&v22[8];
    v15 = v22[7];
    *(v5 + 8) = v22[6];
    *(v5 + 9) = v15;
    *(v5 + 20) = v14;
    v17 = v22[4];
    v16 = v22[5];
    v18 = v22[3];
    *(v5 + 4) = v22[2];
    *(v5 + 5) = v18;
    *(v5 + 6) = v17;
    *(v5 + 7) = v16;
    v19 = v22[1];
    *(v5 + 2) = v22[0];
    *(v5 + 3) = v19;
    v20 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sub_100171940(coderCopy, &self->_location);
  sub_1001719E8(coderCopy, &self->_location.ellipsoidalAltitude);
  [coderCopy encodeObject:self->_locationId forKey:@"locationId"];
  [coderCopy encodeObject:self->_locationDescription forKey:@"locationDescription"];
  [coderCopy encodeBool:self->_requestsGpsAssistance forKey:@"gpsAssistance"];
  sub_100171A90(coderCopy, &self->_diagnosticReport);
}

- (id)description
{
  [(CLIndoorLocation *)self location];
  [(CLIndoorLocation *)self location];
  [(CLIndoorLocation *)self location];
  locationId = [(CLIndoorLocation *)self locationId];
  locationDescription = [(CLIndoorLocation *)self locationDescription];
  [(CLIndoorLocation *)self location];
  requestsGpsAssistance = [(CLIndoorLocation *)self requestsGpsAssistance];
  [(CLIndoorLocation *)self location];
  v6 = "no";
  if (requestsGpsAssistance)
  {
    v6 = "yes";
  }

  v7 = [NSString stringWithFormat:@"lat/lon=[%lf, %lf] on floor %d (%@: %@) +/- %lf meters (gps assistance = %s) with location type %d", v12, v11, v13, locationId, locationDescription, v10, v6, v9];

  return v7;
}

- ($FE0CC061C8DCDB9119F02F95D6E19FCC)location
{
  v3 = *&self[1].var4;
  *&retstr->var3 = *&self[1].var2;
  *&retstr->var5 = v3;
  v4 = *&self[1].var8;
  *&retstr->var7 = *&self[1].var6;
  *&retstr->var9 = v4;
  var1 = self[1].var1;
  *&retstr->var0 = *&self->var21;
  *&retstr->var1.var1 = var1;
  v6 = *&self[1].var12;
  *&retstr->var11 = *&self[1].var10;
  retstr->var13 = v6;
  *&retstr->var14 = *&self[1].var13.var1;
  *&retstr->var16 = *(&self[1].var14 + 4);
  return self;
}

- (void)setLocation:(id *)location
{
  v3 = *&location->var0;
  *&self->_location.coordinate.longitude = *&location->var1.var1;
  *&self->_location.suitability = v3;
  v4 = *&location->var3;
  v5 = *&location->var5;
  v6 = *&location->var7;
  *&self->_location.timestamp = *&location->var9;
  *&self->_location.course = v6;
  *&self->_location.speed = v5;
  *&self->_location.altitude = v4;
  v7 = *&location->var11;
  var13 = location->var13;
  v9 = *&location->var14;
  *&self->_location.integrity = *&location->var16;
  self->_location.rawCoordinate = var13;
  *&self->_location.rawCourse = v9;
  *&self->_location.lifespan = v7;
}

- ($146E4FC062DDF4A2C58C04BCAEC0B25D)diagnosticReport
{
  v3 = *&self[1].var1;
  *&retstr->var8 = *&self->var12;
  *&retstr->var10 = v3;
  *&retstr->var12 = self[1].var3;
  v4 = *&self->var7[3];
  *&retstr->var4 = *&self->var7[1];
  *&retstr->var6 = v4;
  v5 = *&self->var10;
  *&retstr->var7[1] = *&self->var8;
  *&retstr->var7[3] = v5;
  v6 = *&self->var6;
  *&retstr->var0 = *&self->var4;
  *&retstr->var2 = v6;
  return self;
}

- (void)setDiagnosticReport:(id *)report
{
  *&self->_diagnosticReport.yieldType = *&report->var0;
  v3 = *&report->var2;
  v4 = *&report->var4;
  v5 = *&report->var7[1];
  *&self->_diagnosticReport.prbOnFloors = *&report->var6;
  *&self->_diagnosticReport.prbOnFloor[1] = v5;
  *&self->_diagnosticReport.prbCoarseIndoorSaysIndoor = v3;
  *&self->_diagnosticReport.prbGpsSaysIndoor = v4;
  v6 = *&report->var7[3];
  v7 = *&report->var8;
  v8 = *&report->var10;
  *&self->_diagnosticReport.pfYieldStatusBeforeCalculatePose = *&report->var12;
  *&self->_diagnosticReport.prbInlier = v7;
  *&self->_diagnosticReport.prbInjectionOccupancyRetryLimitOk = v8;
  *&self->_diagnosticReport.prbOnFloor[3] = v6;
}

+ (id)fromGpsEstimate:(id)estimate
{
  estimateCopy = estimate;
  if (estimateCopy)
  {
    v4 = objc_alloc_init(CLIndoorLocation);
    v14 = 0u;
    memset(v15, 0, 28);
    v13 = 0u;
    v11 = 0u;
    memset(v12, 0, sizeof(v12));
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    [estimateCopy gpsLocation];
    memset(__src, 0, 512);
    [estimateCopy gpsLocationPrivate];
    *(v12 + 12) = 0;
    *(&__src[21] + 1) = 0;
    *&__src[2] = 0;
    *(&__src[1] + 1) = 0;
    v6[6] = v13;
    v6[7] = v14;
    v6[8] = v15[0];
    *(&v6[8] + 12) = *(v15 + 12);
    v6[2] = v10;
    v6[3] = v11;
    v6[4] = v12[0];
    v6[5] = v12[1];
    v6[0] = v8;
    v6[1] = v9;
    [(CLIndoorLocation *)v4 setLocation:v6];
    memcpy(v6, __src, sizeof(v6));
    [(CLIndoorLocation *)v4 setLocationPrivate:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)fromPoseEstimate:(const void *)estimate andGpsEstimate:(id)gpsEstimate
{
  gpsEstimateCopy = gpsEstimate;
  if (gpsEstimateCopy)
  {
    v6 = [CLIndoorLocation fromGpsEstimate:gpsEstimateCopy];
  }

  else
  {
    v6 = objc_alloc_init(CLIndoorLocation);
  }

  if (v6)
  {
    sub_1001181E4(__src, estimate + 13);
  }

  return 0;
}

@end