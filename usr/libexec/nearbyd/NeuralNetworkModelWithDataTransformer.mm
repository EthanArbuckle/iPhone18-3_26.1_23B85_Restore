@interface NeuralNetworkModelWithDataTransformer
- (NeuralNetworkModelWithDataTransformer)initWithNeuralNetworkModel:(NeuralNetworkModel *)a3 andDataTransformer:(id)a4;
- (void)dealloc;
@end

@implementation NeuralNetworkModelWithDataTransformer

- (NeuralNetworkModelWithDataTransformer)initWithNeuralNetworkModel:(NeuralNetworkModel *)a3 andDataTransformer:(id)a4
{
  v7 = a4;
  v14.receiver = self;
  v14.super_class = NeuralNetworkModelWithDataTransformer;
  v8 = [(NeuralNetworkModelWithDataTransformer *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v10 = *&a3->plan;
    v8->_neuralNetworkModel.modelNet = a3->modelNet;
    *&v8->_neuralNetworkModel.plan = v10;
    objc_storeStrong(&v8->_rangeBiasEstimatorModelDataTransformer, a4);
  }

  v11 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#bias-est, Neural network espresso model initialized with data transformer.", v13, 2u);
  }

  return v9;
}

- (void)dealloc
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#bias-est, Destroying espresso plan and context for Bias estimator.", buf, 2u);
  }

  plan = self->_neuralNetworkModel.plan;
  espresso_plan_destroy();
  ctx = self->_neuralNetworkModel.ctx;
  espresso_context_destroy();
  v6.receiver = self;
  v6.super_class = NeuralNetworkModelWithDataTransformer;
  [(NeuralNetworkModelWithDataTransformer *)&v6 dealloc];
}

@end