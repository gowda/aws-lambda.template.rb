# aws-lambda.template
![](https://github.com/gowda/aws-lambda.template.rb/workflows/lint-and-test/badge.svg)

A template for AWS lambda function implementation in ruby

### Build deployable zip file

Generate `aws-lambda-function.zip` using:
```bash
$ bin/build
```

### Using cloudformation template
Set environment variables:

* `NAME` - name of lambda function
* `AWS_CODE_BUCKET` - name of `S3` bucket for storing code
* `AWS_CODE_OBJECT_KEY` - key for `S3` object

Create lambda function:
```bash
$ aws cloudformation create-stack \
    --stack-name $NAME \
    --template-body cloudformation/lambda.template \
    --capabilities CAPABILITY_NAMED_IAM \
    --parameters \
      ParameterKey='Name',ParameterValue=$NAME \
      ParameterKey='CodeBucket',ParameterValue=$AWS_CODE_BUCKET \
      ParameterKey='CodeObjectKey',ParameterValue=$AWS_CODE_OBJECT_KEY
```
