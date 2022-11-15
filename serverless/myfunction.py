import json


def hello(event, context):
   n1, n2 = 0, 1
   count = 0
   n =10
   final=[]
   while count < n:
      final.append(n1)
      nth = n1 + n2
      # update values
      n1 = n2
      n2 = nth
      count += 1
    

   return {"statusCode": 200, "body": json.dumps(final)}


# To deploy and locally invoke the function, run the following commands:
#serverless deploy --stage local

#serverless info --stage local
# serverless invoke local -f hello --l

