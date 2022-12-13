# City Mart E-Commerce Retail Chain
This is a database design and implementation system aimed to manage inventory and place order with an online grocery store called Citymart.

## Tools and Technologies used
1. Oracle Database
2. Oracle SQL Developer
3. ASP.net
4.	HTML
5.	CSS
6.	AWS EC2 Instance
7. Microsoft Visio
8. Microsoft Visual Studio Code	

## User Stories
1. Customers can login, put their zip code and place/cancel/modify orders.
2. Admin users can login see/modify/update the inventory of products.
3. Admin users can also access reports to view the overview of the system. Ex: Inventory for all products, List of available Xip codes, etc.

## Customer Workflow
1.	Start by clicking on to the sign in or sign up  page using the hyperlink in the home page.
 ![image](https://user-images.githubusercontent.com/33507456/148136254-5352b05b-5e85-4925-b235-91622b06dd09.png)
 
2.	In case of a new customer, a sign up page will come up.
![image](https://user-images.githubusercontent.com/33507456/148136403-ebf1e714-3654-4fa0-9071-00c40fcde120.png)

3.	After signing up, use the username and password to login.
![image](https://user-images.githubusercontent.com/33507456/148136416-6323f071-26a5-467a-8d91-21889fa4afe6.png)

4.	A customer homepage will appear.
![image](https://user-images.githubusercontent.com/33507456/148136435-175a7e16-f83e-4cfc-b568-9a4bb4153aa3.png)
 
5.	Select store locator.
![image](https://user-images.githubusercontent.com/33507456/148136448-31eadb02-3cf5-48ac-93a9-ea50535ed579.png)

6.	This will navigate to a page to enter the zip code and will list nearby stores.
![image](https://user-images.githubusercontent.com/33507456/148136458-d873db61-0261-477d-bd14-b5281dd831b2.png)

7.	Select a store. You will get the list of available products. Select the needed products.
![image](https://user-images.githubusercontent.com/33507456/148136466-1dba2f37-c825-497a-b5d3-e567ac613f72.png)

8.	Once the products are selected, click on add to cart.
 ![image](https://user-images.githubusercontent.com/33507456/148136478-4f2732ba-aac5-46e1-a639-bb32f2975b65.png)

9.	From here, either click on view cart to check the details or directly go to payments.
![image](https://user-images.githubusercontent.com/33507456/148136488-f3b565fb-8188-486d-a591-d2035cb488e6.png)

10.	Once the cart is visible, the page can either take back to make changes or go to payments.
![image](https://user-images.githubusercontent.com/33507456/148136502-f9660853-e3bf-4b2c-830a-2a484273a979.png)

11.	The payment’s method allows either to select card or cash and for delivery method, select standard or express.
 Note- Express delivery is only applicable for orders more than $50.
 ![image](https://user-images.githubusercontent.com/33507456/148136515-fcc5e1ef-2c08-45f1-b0fa-04ed0d92940a.png)

12.	Once the cart is reviewed, it can either be modified or ordered depending on the requirement.
 ![image](https://user-images.githubusercontent.com/33507456/148136525-8e399200-8a53-4547-902f-e7b0be83b533.png)

13.	Once the order is placed, a confirmation page appears.
 ![image](https://user-images.githubusercontent.com/33507456/148136536-96736797-7477-461a-bbd0-ef2289da345d.png)

## Admin Workflow
1.	Start by clicking on to the admin sign up page using the sign in hyperlink in the home page.
![image](https://user-images.githubusercontent.com/33507456/148136695-5a04573d-d4d7-4e6f-821c-50a1aa53327f.png)
 
2.	Sign up page will appear for new admins.
![image](https://user-images.githubusercontent.com/33507456/148136702-3d3ac183-f886-4f87-901e-ef52c822b010.png)

3.	Once sign up is completed, admin can sign in using the user email and password.
 ![image](https://user-images.githubusercontent.com/33507456/148136708-703d04a7-b2b6-48e8-94d2-cda227ca387a.png)

4.	This will go to the admin dashboard
Note- Click on update age to update the age of the user based on date of birth.
![image](https://user-images.githubusercontent.com/33507456/148136713-cc6412cb-585e-45a9-bd63-30414722b3bf.png)

5.	Admin has the privilege to check the inventory.
![image](https://user-images.githubusercontent.com/33507456/148136735-b259ea06-263e-4395-b08b-c9e945c52bce.png)
6.	Select a new purchase order or a product, which will land on the following page. Add the relevant details and add it to the inventory.
![image](https://user-images.githubusercontent.com/33507456/148136740-98802e2c-5a9b-48d2-9212-dc77da1888bb.png)

7.	To update an order as delivered, click on the mark orders to delivered page.
![image](https://user-images.githubusercontent.com/33507456/148136753-435a532f-2143-4f5a-bd60-0d56dabfddb2.png)

## Detailed Database Design Requirements
1. City mart can have many user groups. Each User Group can
be uniquely identified by User Group ID. For each user, we will store the ID of the user which will be unique to each user, first name, middle
name, last name, phone number (one or multiple), date of birth, age (which will be derived from the Date of
birth), gender and email address (there can be multiple email addresses). Each user can either be an Admin or
Customer.
2. Each user would have their own login details which will store the password.
3. The address of each user will be uniquely identified by an ID and would have the name of the building,
street name, city, zip code, state, and type of address like home, office, etc. We will note if the address given by
the user is their primary address. Each user can have multiple addresses associated with their account.
4. Each address can be associated with a country, region, state and the zip-code which will be identified
by their own unique ID. Each state would also have the tax rate.
5. Every customer has the access to create a cart which will have a unique cartID, delivery date, order tax,
cart creation date and the order date. From the given information about the given order, the total cart items,
estimated delivery date as well as the total amount can be derived. As the products will be added to the cart, a
new order line will be created defining the quantity, unit of measure and hence calculating the price.
6. Once the purchase order has been made with a unique ID and the purchase order date, it will contain
purchase order details with the quantity of the products.
7. Each product will have various attributes like product ID, name. manufacturer, brand, sub brand, type,
size, unit size and the price. Each product is associated with an image which has its ID, description, type, name
and a supplier which has its own ID, name and type. Category to which the product belongs is also an
important factor with its unique ID, name and description.
8. There can be many stores that deliver the product as mentioned in the website with the unique
storeID, name, phone, email and the address consisting of store city, state and zip code.

