## Release 2: Create a One-to-one Schema

1. Suppose we need to store customer information. We would have table structure something like this.

    ![8.5-release-2]
    (imgs/8.5-release-2.png)

    If we take a closer look, `address` field would have state, street, house number etc .... Usually we just want to store one value per field. There is a concept called `Normalization`. It is the process of efficiently organizing data in a database. There are two goals of the normalization process: eliminating redundant data (for example, storing the same data in more than one table) and ensuring data dependencies make sense. 

    Our revised customer table would like this, and eery customer can only have one address. 

    ![8.5-release-2.1]
    (imgs/8.5-release-2.1.png)

## Release 3: Many to Many Relationships

2. In Many to Many Relationship, we can move zip filed in a seperate table and lookup state and city info. Our final iteration will look something like this.

    ![8.5-release-2.2]
    (imgs/8.5-release-2.2.png)

## Release 4: Refactor

3. In this release i started with `grocery_list` table which has items and quantity fields. Items field pull data from `Items` table. Then i have Items table pull data from `Item_Type` table which deals with product proliferation e.g. is it a skimmed milk or regular similarly for bread and other items. 

    ![8.5-release-4]
    (imgs/8.5-release-4.png)

## Release 5: Complex Databases

4. In final iteration, we've our customer checking out of store with a list of products and a total bill. Out `Checkout` table will have infotmation for grocery_items and we will have customer information as well to bill it to. 

    ![8.5-release-5]
    (img/8.5-release-5)

## Release 6: Reflect

answer the following questions:

What is a one-to-one database?
When would you use a one-to-one database? (Think generally, not in terms of the example you created).
What is a many-to-many database?
When would you use a many-to-many database? (Think generally, not in terms of the example you created).
What is confusing about database schemas? What makes sense?
