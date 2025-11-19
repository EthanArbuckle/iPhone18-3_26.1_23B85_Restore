@interface CLBackgroundInertialOdometryService
+ (BOOL)isAvailable;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4;
- (CLBackgroundInertialOdometryService)init;
- (id).cxx_construct;
- (id)sessionForClient:(id)a3;
- (void)beginService;
- (void)dealloc;
- (void)endService;
- (void)isAvailableWithReply:(id)a3;
- (void)onBackgroundBatchData:(const BackgroundInertialOdometryBatch *)a3;
- (void)startBackgroundInertialOdometryUpdatesForClient:(id)a3 withIdentifier:(id)a4 usingReferenceFrame:(unint64_t)a5;
- (void)stopBackgroundInertialOdometryUpdatesForClient:(id)a3;
- (void)toggleUpdates;
@end

@implementation CLBackgroundInertialOdometryService

+ (BOOL)isAvailable
{
  v2 = sub_10001A3E8();
  v3 = sub_1000247AC(v2);
  if ((v3 & 1) == 0)
  {
    if (qword_1025D4510 != -1)
    {
      sub_1018EFFA0();
    }

    v4 = qword_1025D4518;
    if (os_log_type_enabled(qword_1025D4518, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "Background InertialOdometry not supported", v6, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018EFFB4();
    }
  }

  return v3;
}

+ (void)becameFatallyBlocked:(id)a3 index:(unint64_t)a4
{
  v5 = a4 + 1;
  if (a4 + 1 < [a3 count])
  {
    [objc_msgSend(a3 objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", a3, v5}];
  }
}

+ (id)getSilo
{
  if (qword_102658490 != -1)
  {
    sub_1018F00A0();
  }

  return qword_102658488;
}

- (CLBackgroundInertialOdometryService)init
{
  v3.receiver = self;
  v3.super_class = CLBackgroundInertialOdometryService;
  return [(CLBackgroundInertialOdometryService *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLBackgroundInertialOdometryServiceProtocol outboundProtocol:&OBJC_PROTOCOL___CLBackgroundInertialOdometryServiceClientProtocol];
}

- (void)dealloc
{
  self->_activeClients = 0;
  v3.receiver = self;
  v3.super_class = CLBackgroundInertialOdometryService;
  [(CLBackgroundInertialOdometryService *)&v3 dealloc];
}

- (void)beginService
{
  [-[CLBackgroundInertialOdometryService universe](self "universe")];
  if (!self->_backgroundBatchDispatcher.__ptr_)
  {
    [-[CLBackgroundInertialOdometryService universe](self "universe")];
    operator new();
  }

  [(CLBackgroundInertialOdometryService *)self setActiveClients:objc_alloc_init(NSMutableSet)];
  [(CLBackgroundInertialOdometryService *)self setAttitude:0];
  if (!self->_geomagneticModelClient.__ptr_)
  {
    [(CLBackgroundInertialOdometryService *)self universe];
    operator new();
  }

  self->_isStatic = 0;
  self->_rotationArbitraryToTrueNorth = 0.0;
  p_trajectorySampleInterval = &self->_trajectorySampleInterval;
  self->_trajectorySampleInterval = 0.0;
  *buf = 0;
  sub_1004F8200(v7, "BackgroundInertialOdometrySampleInterval", buf, 0);
  if (v8 >= 0.1 && v8 <= 10.0)
  {
    *p_trajectorySampleInterval = v8;
    if (qword_1025D4510 != -1)
    {
      sub_1018F00B4();
    }

    v5 = qword_1025D4518;
    if (os_log_type_enabled(qword_1025D4518, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *p_trajectorySampleInterval;
      *buf = 134217984;
      v10 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Background InertialOdometry interval set to %f [s]", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F00DC(&self->_trajectorySampleInterval);
    }
  }

  self->_enableMotionSimulation = 0;
  [(CLBackgroundInertialOdometryService *)self toggleUpdates];
}

- (void)endService
{
  [-[CLBackgroundInertialOdometryService universe](self "universe")];
  if (self->_backgroundBatchDispatcher.__ptr_)
  {
    v3 = sub_10017C7AC(0);
    sub_10095D9F8(v3, 51, self->_backgroundBatchDispatcher.__ptr_);
    ptr = self->_backgroundBatchDispatcher.__ptr_;
    self->_backgroundBatchDispatcher.__ptr_ = 0;
    if (ptr)
    {
      (*(*ptr + 8))(ptr);
    }
  }

  [(CLBackgroundInertialOdometryService *)self toggleUpdates];
}

- (void)isAvailableWithReply:(id)a3
{
  v4 = +[CLBackgroundInertialOdometryService isAvailable];
  v5 = *(a3 + 2);

  v5(a3, v4);
}

- (void)startBackgroundInertialOdometryUpdatesForClient:(id)a3 withIdentifier:(id)a4 usingReferenceFrame:(unint64_t)a5
{
  if (+[CLBackgroundInertialOdometryService isAvailable])
  {
    if ([(CLBackgroundInertialOdometryService *)self sessionForClient:a3])
    {
      if (qword_1025D4510 != -1)
      {
        sub_1018EFFA0();
      }

      v9 = qword_1025D4518;
      if (os_log_type_enabled(qword_1025D4518, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "Client has already started background InertialOdometry updates", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018F01F8();
      }
    }

    else
    {
      v10 = [[CLBackgroundInertialOdometryClientSession alloc] initWithClient:a3 withIdentifier:a4 usingReferenceFrame:a5 atMachContinuousTime:sub_1000081AC()];
      if (self->_isStatic && [(CLBackgroundInertialOdometryService *)self attitude])
      {
        v11 = [CMOdometry alloc];
        v12 = [(NSArray *)[(CLBackgroundInertialOdometryService *)self attitude] objectAtIndexedSubscript:0];
        v13 = [(NSArray *)[(CLBackgroundInertialOdometryService *)self attitude] objectAtIndexedSubscript:1];
        v14 = [(NSArray *)[(CLBackgroundInertialOdometryService *)self attitude] objectAtIndexedSubscript:2];
        v15 = [(NSArray *)[(CLBackgroundInertialOdometryService *)self attitude] objectAtIndexedSubscript:3];
        rotationArbitraryToTrueNorth = self->_rotationArbitraryToTrueNorth;
        v17 = sub_1000081AC();
        v18 = v17;
        *&v17 = rotationArbitraryToTrueNorth;
        v19 = [(CMOdometry *)v11 initWithDeltaPositionX:&off_102554C00 deltaPositionY:&off_102554C00 deltaPositionZ:&off_102554C00 deltaVelocityX:&off_102554C00 deltaVelocityY:&off_102554C00 deltaVelocityZ:&off_102554C00 quaternionX:v17 quaternionY:v18 quaternionZ:v12 quaternionW:v13 rotationArbitraryToTrueNorth:v14 staticFlag:v15 timestamp:1];
        v20 = v19;
        if (v10->_referenceFrame == 8)
        {
          [(CMOdometry *)v19 rotateArbitraryToTrueNorth];
        }

        [(CLBackgroundInertialOdometryServiceClientProtocol *)[(CLBackgroundInertialOdometryClientSession *)v10 client] onBackgroundInertialOdometryState:v20];
      }

      [(NSMutableSet *)[(CLBackgroundInertialOdometryService *)self activeClients] addObject:v10];

      [(CLBackgroundInertialOdometryService *)self toggleUpdates];
    }
  }
}

- (void)stopBackgroundInertialOdometryUpdatesForClient:(id)a3
{
  if (+[CLBackgroundInertialOdometryService isAvailable])
  {
    v5 = [(CLBackgroundInertialOdometryService *)self sessionForClient:a3];
    if (v5)
    {
      [(NSMutableSet *)[(CLBackgroundInertialOdometryService *)self activeClients] removeObject:v5];

      [(CLBackgroundInertialOdometryService *)self toggleUpdates];
    }

    else
    {
      if (qword_1025D4510 != -1)
      {
        sub_1018EFFA0();
      }

      v6 = qword_1025D4518;
      if (os_log_type_enabled(qword_1025D4518, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "Client has not started background InertialOdometry updates", v7, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018F02E4();
      }
    }
  }
}

- (void)onBackgroundBatchData:(const BackgroundInertialOdometryBatch *)a3
{
  if ([(NSMutableSet *)[(CLBackgroundInertialOdometryService *)self activeClients] count]&& a3->var17[1])
  {
    v4 = 0;
    v47 = &a3->var12[3] + 1;
    v53 = &a3->var9[2] + 1;
    v54 = &a3->var8[2] + 1;
    v51 = &a3->var11[2] + 1;
    v52 = &a3->var10[2] + 1;
    v5 = &a3->var4[2] + 1;
    do
    {
      v6 = *(&a3->var12[4] + v4 + 1);
      v71[0] = _NSConcreteStackBlock;
      v71[1] = 3221225472;
      v72 = sub_10063BA1C;
      v73 = &unk_102464BE8;
      v74 = v6;
      if (v6 == 1)
      {
        if (qword_1025D4510 != -1)
        {
          sub_1018F00B4();
        }

        v7 = qword_1025D4518;
        if (os_log_type_enabled(qword_1025D4518, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "DeviceMotion uninitialized", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018F03D0(&v68, v69);
        }
      }

      v8 = v47[v4];
      v9 = 2;
      if (v8)
      {
        v9 = 0;
      }

      v10 = self->_isStatic | ~v8;
      if (self->_isStatic)
      {
        v11 = v9;
      }

      else
      {
        v11 = v47[v4];
      }

      v50 = v11;
      self->_isStatic = v8;
      LODWORD(v3) = *&v54[4 * v4];
      v76[0] = [NSNumber numberWithFloat:v3];
      LODWORD(v12) = *&v53[4 * v4];
      v76[1] = [NSNumber numberWithFloat:v12];
      LODWORD(v13) = *&v52[4 * v4];
      v76[2] = [NSNumber numberWithFloat:v13];
      LODWORD(v14) = *&v51[4 * v4];
      v76[3] = [NSNumber numberWithFloat:v14];
      [(CLBackgroundInertialOdometryService *)self setAttitude:[NSArray arrayWithObjects:v76 count:4]];
      v3 = *(&a3->var12[2] + 1) - *(self->_geomagneticModelClient.__ptr_ + 1);
      *&v3 = v3;
      self->_rotationArbitraryToTrueNorth = *&v3;
      if ((v10 & 1) == 0 || !self->_isStatic)
      {
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        obj = [(CLBackgroundInertialOdometryService *)self activeClients];
        v57 = [(NSMutableSet *)obj countByEnumeratingWithState:&v64 objects:v75 count:16];
        if (v57)
        {
          v49 = *v65;
          do
          {
            for (i = 0; i != v57; i = i + 1)
            {
              if (*v65 != v49)
              {
                objc_enumerationMutation(obj);
              }

              v16 = *(*(&v64 + 1) + 8 * i);
              v62 = [CMOdometry alloc];
              if (v5[v4])
              {
                LODWORD(v17) = *(&a3->var1[3] + 4 * v4 + 1);
                v18 = [NSNumber numberWithFloat:v17];
              }

              else
              {
                v18 = 0;
              }

              v61 = v72(v71, v18);
              if ((v5[v4] & 2) != 0)
              {
                *&v19 = *(&a3->var2[v4 + 2] + 1);
                v20 = [NSNumber numberWithFloat:v19];
              }

              else
              {
                v20 = 0;
              }

              v60 = v72(v71, v20);
              v63 = v16;
              if ((v5[v4] & 4) != 0)
              {
                *&v21 = *(&a3->var3[v4 + 2] + 1);
                v22 = [NSNumber numberWithFloat:v21];
              }

              else
              {
                v22 = 0;
              }

              v59 = v72(v71, v22);
              *&v23 = *(&a3->var4[v4 + 3] + 1);
              v24 = [NSNumber numberWithFloat:v23];
              v58 = v72(v71, v24);
              *&v25 = *(&a3->var6[v4 + 2] + 1);
              v26 = [NSNumber numberWithFloat:v25];
              v27 = v72(v71, v26);
              *&v28 = *(&a3->var7[v4 + 2] + 1);
              v29 = [NSNumber numberWithFloat:v28];
              v30 = v72(v71, v29);
              LODWORD(v31) = *&v54[4 * v4];
              v32 = [NSNumber numberWithFloat:v31];
              v33 = v72(v71, v32);
              LODWORD(v34) = *&v53[4 * v4];
              v35 = [NSNumber numberWithFloat:v34];
              v36 = v72(v71, v35);
              LODWORD(v37) = *&v52[4 * v4];
              v38 = [NSNumber numberWithFloat:v37];
              v39 = v72(v71, v38);
              LODWORD(v40) = *&v51[4 * v4];
              v41 = [NSNumber numberWithFloat:v40];
              v42 = v72(v71, v41);
              v43 = *(&a3->var12[2] + 1) - *(self->_geomagneticModelClient.__ptr_ + 1);
              *&v43 = v43;
              BYTE2(v46) = a3->var16[v4 + 1];
              BYTE1(v46) = a3->var15[v4 + 1];
              LOBYTE(v46) = a3->var14[v4 + 1];
              v44 = [CMOdometry initWithDeltaPositionX:v62 deltaPositionY:"initWithDeltaPositionX:deltaPositionY:deltaPositionZ:deltaVelocityX:deltaVelocityY:deltaVelocityZ:quaternionX:quaternionY:quaternionZ:quaternionW:rotationArbitraryToTrueNorth:staticFlag:isDOTBiasChangePossible:isMounted:isZUPT:timestamp:" deltaPositionZ:v61 deltaVelocityX:v60 deltaVelocityY:v59 deltaVelocityZ:v58 quaternionX:v27 quaternionY:v30 quaternionZ:v43 quaternionW:*(&a3->var0 + 8 * v4 + 1) * 0.000001 rotationArbitraryToTrueNorth:v33 staticFlag:v36 isDOTBiasChangePossible:v39 isMounted:v42 isZUPT:v50 timestamp:v46];
              v45 = v44;
              if (v63[1] == 8)
              {
                [(CMOdometry *)v44 rotateArbitraryToTrueNorth];
              }

              [objc_msgSend(v63 "client")];

              v5 = &a3->var4[2] + 1;
            }

            v57 = [(NSMutableSet *)obj countByEnumeratingWithState:&v64 objects:v75 count:16];
          }

          while (v57);
        }
      }

      ++v4;
    }

    while (v4 < a3->var17[1]);
  }
}

- (void)toggleUpdates
{
  v3 = [(NSMutableSet *)[(CLBackgroundInertialOdometryService *)self activeClients] count];
  if (qword_1025D4510 != -1)
  {
    sub_1018EFFA0();
  }

  v4 = qword_1025D4518;
  if (os_log_type_enabled(qword_1025D4518, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67240192;
    v7[1] = [(NSMutableSet *)[(CLBackgroundInertialOdometryService *)self activeClients] count];
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Number of BIO clients: %{public}d", v7, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F04DC(self);
  }

  v5 = sub_10017C7AC(0);
  sub_1005AD970(v5, v3 != 0, self->_enableMotionSimulation, self->_trajectorySampleInterval);
  ptr = self->_geomagneticModelClient.__ptr_;
  if (v3)
  {
    sub_100E28B84(ptr);
  }

  else
  {
    sub_100E28DD0(ptr);
    self->_isStatic = 0;
    [(CLBackgroundInertialOdometryService *)self setAttitude:0];
    self->_rotationArbitraryToTrueNorth = 0.0;
  }
}

- (id)sessionForClient:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(CLBackgroundInertialOdometryService *)self activeClients];
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(v4);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([v9 client] == a3)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 3) = 0;
  return self;
}

@end