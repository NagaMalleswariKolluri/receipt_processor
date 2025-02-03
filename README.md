# receipt_processor_api

## Running the Application in Docker

### Prerequisites
- Docker installed

### Steps to Run:
1. Clone the repository:
   git clone https://github.com/NagaMalleswariKolluri/receipt_processor.git
   cd receipt-processor
**Build and run the Docker container:**
docker build -t receipt-processor .
docker run -p 8080:8080 --name receipt_processor_api receipt-processor

**API will be available at:**
**Postman**: 
**API 1**
http://localhost:8080/receipts/process
Select POST,provide example receipt in Body section by selecting raw and JSON
Example receipt
   {
  "retailer": "Target",
  "purchaseDate": "2022-01-01",
  "purchaseTime": "13:01",
  "items": [
    {
      "shortDescription": "Mountain Dew 12PK",
      "price": "6.49"
    },{
      "shortDescription": "Emils Cheese Pizza",
      "price": "12.25"
    },{
      "shortDescription": "Knorr Creamy Chicken",
      "price": "1.26"
    },{
      "shortDescription": "Doritos Nacho Cheese",
      "price": "3.35"
    },{
      "shortDescription": "   Klarbrunn 12-PK 12 FL OZ  ",
      "price": "12.00"
    }
  ],
  "total": "35.35"
}

Click on Send
It will provide an id as a response in the sample format below 
{
    "id": "4bffd7f9-a27f-4aed-9c40-bee92b3091dc"
}

Now copy the ID value

**API 2**
http://localhost:8080/receipts/4bffd7f9-a27f-4aed-9c40-bee92b3091dc/points
and change the request type to GET and click on Send
It will display the output of points based on ID

Browser: http://localhost:8080/  #Just a Default page
