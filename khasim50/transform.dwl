%dw 2.0
output application/json 

//here I used map function to to map the name and test and used split by function to create two seprate objects for the presented test id's after that i have again used the map function to map the id.
---
payload map{
    "name": $.name,
    "test": $.test splitBy  "," map{
        id: $
    }
}
