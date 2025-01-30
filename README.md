# Retail-Order-Management-System-Model

<img src="https://github.com/RadhikaDeshpande1010/Order-Management-System-Model/blob/main/Order_Management_System_Banner.png" height="290" width="1200">

## Table of Contents
* [Introduction](#Introduction)
* [Purpose](#Purpose)
* [Database](#Database)
* [Tools](#Tools)
* [Instructions](#Instructions)
* [Step 1: Requirements Gathering](#step-1-requirements-gathering)
* [Step 2: Create ER Diagram](#step-2-create-er-diagram)
* [Conclusion](#Conclusion)
  
## Introduction
In this exercise, I have undertaken a data modeling project for Retail Order Management System (ROMS).

## Purpose
The primary goal of the Retail Order Management System (ROMS) data modeling is to establish a well-structured, efficient, and scalable way to track, manage, and analyze all processes related to customer orders, from initial placement to final delivery. This model ensures accurate record-keeping, streamlined operations, and valuable insights into the order management process, ultimately leading to better business decisions and enhanced customer satisfaction.

## Database
The Retail Order Management System (ROMS) data modeling is implemented using Oracle Database. Oracle Database ensures that the ROMS can handle large volumes of data efficiently and securely.

## Data Modeling Tool
In this project, I have used Erwin Data Modeler to design both the ER diagram for the relational schema and the dimensional model for optimized data warehousing and analytics.

## Instructions 
Building a thorough data model for a Retail Order Management System (ROMS) entails multiple critical steps, such as formulating an Entity-Relationship (ER) diagram and designing a Dimensional Model. Let's delve into the process in detail.

#### Step 1: Requirements Gathering

1. Understand the business processes and requirements.
2. Identify the key entities and relationships.
3. Define the scope and boundaries of the system.

#### Step 2: Create ER Diagram

In this step, you will use Erwin Data Modeler to design an Entity-Relationship (ER) diagram for the Retail Order Management System (ROMS). Your goal is to represent the relationships between the key entities in the system, such as Customers, Orders, Products, Suppliers, and Shippers.

1. **Design the ER diagram**:  
   Using Erwin Data Modeler, visually represent how these entities interact, ensuring a clear and organized structure for the database.

2. **Normalize the database**:  
   Ensure that the schema adheres to the three normal forms (3NF). This step is crucial to eliminate data redundancy, enforce data integrity, and optimize the overall database structure.

3. **Visualize relationships**:  
   Map out the relationships between entities, such as customers placing orders, orders containing products, and products supplied by suppliers, ensuring that all relationships are clearly depicted.

The final ER diagram will provide a comprehensive and well-organized relational schema for the Retail Order Management System, ensuring it is scalable, maintainable, and efficient for processing and analyzing order data.

![ER Diagram for Retail Order Management System](https://github.com/RadhikaDeshpande1010/Retail-Order-Management-System-Model/blob/main/ROMS_SRC/w3School_OrderManagement_ERDataModel.png)

  
**2. Male Count and Female:** This DAX expression calculate the count of male and female customers respectively based on your dataset.
* ```
  Male Count = COUNTROWS(FILTER('UK Bank Customers Template','UK Bank Customers Template'[Gender] = "Male"))
  Female Count = COUNTROWS(FILTER('UK Bank Customers Template','UK Bank Customers Template'[Gender] = "Female"))
  ```

**3. Region:** This DAX expression gives a distinct count of the regions in the dataset.
* ```
  Region = DISTINCTCOUNT('UK Bank Customers Template'[Region])
  ```

**4. Average Balance Per Customers:** This DAX expression provides average balance per customer..
* ```
  Average Balance Per Customers = DIVIDE(
  SUM('UK Bank Customers Template'[Balance]),
  COUNT('UK Bank Customers Template'[Customer ID]))
  ```

## Dashboard

<img width="1800" alt="UK Bank Customer Image1" src="https://github.com/RadhikaDeshpande1010/Power-BI-UK-Bank-Customers-Dashboard/blob/main/SRC/UK%20Bank%20Customer%20Dashboard%201.png">

<img width="1800" alt="UK Bank Customer Image2" src="https://github.com/RadhikaDeshpande1010/Power-BI-UK-Bank-Customers-Dashboard/blob/main/SRC/UK%20Bank%20Customer%20Dashboard%202.png">

## Conclusion
* The majority of customers fall within the 30-55 age range, with a fairly even split between genders. The highest concentration of customers is in the England and Scotland regions.
* A significant proportion of customers maintain a moderate balances. This understanding enables the bank to personalize services and financial products according to customers' financial profiles.
* The distribution of customers by the month they joined the bank describes the notable trends. Understanding customer acquisition patterns over time facilitates strategic planning for marketing campaigns and customer retention initiatives.
