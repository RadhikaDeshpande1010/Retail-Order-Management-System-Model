# Retail-Order-Management-System-Model

<img src="https://github.com/RadhikaDeshpande1010/Order-Management-System-Model/blob/main/Order_Management_System_Banner.png" height="290" width="1200">

## Table of Contents
* [Introduction](#Introduction)
* [Purpose](#Purpose)
* [Database](#Database)
* [Tools](#data-modeling-tool)
* [Instructions](#Instructions)
* [Step 1: Requirements Gathering](#step-1-requirements-gathering)
* [Step 2: Create ER Diagram](#step-2-create-er-diagram)
* [Step 3: Implement the Data Model](#step-3-implement-the-data-model)
* [Step 4: Create Star Schema (Dimensional Model)](#step-4-create-star-schema-dimensional-model)
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

### Step 1: Requirements Gathering

Before starting the data modeling process, gather all business requirements related to the Retail Order Management System. Identify the key entities, relationships, and processes. Examples of business questions:

1. How are orders placed by customers?
2. What is the relationship between products, orders, and shipments?
3. How are products categorized and tracked?

### Step 2: Create ER Diagram

In this step, you will use Erwin Data Modeler to design an Entity-Relationship (ER) diagram for the Retail Order Management System (ROMS). Your goal is to represent the relationships between the key entities in the system, such as Customers, Orders, Products, Suppliers, and Shippers.

1. **Design the ER diagram**:  
   Using Erwin Data Modeler, visually represent how these entities interact, ensuring a clear and organized structure for the database.

2. **Normalize the database**:  
   Ensure that the schema adheres to the three normal forms (3NF). This step is crucial to eliminate data redundancy, enforce data integrity, and optimize the overall database structure.

3. **Visualize relationships**:  
   Map out the relationships between entities, such as customers placing orders, orders containing products, and products supplied by suppliers, ensuring that all relationships are clearly depicted.

The final ER diagram will provide a comprehensive and well-organized relational schema for the Retail Order Management System, ensuring it is scalable, maintainable, and efficient for processing and analyzing order data.

![ER Diagram for Retail Order Management System](https://github.com/RadhikaDeshpande1010/Retail-Order-Management-System-Model/blob/main/ROMS_SRC/w3School_OrderManagement_ERDataModel.png)

### Step 3: Implement the Data Model

1. Use Erwin Data Modeler’s forward engineering feature to implement the Retail Order Management System (ROMS) data model inside the Database Oracle 21C.
2. You need to select the Database tab, then choose the forward engineer option in Erwin Data Modeler to implement the ROMS data model into the Database Oracle 21C server as demonstrated below. This will generate the necessary SQL scripts to create tables, relationships, and constraints based on the defined data model.
3. The SQL script generated for Retail Order Management System can be accessed through the following link: [Retail Order Management System DDL Scripts](https://github.com/RadhikaDeshpande1010/Retail-Order-Management-System-Model/blob/main/ROMS_SRC/RetailOrderManagenment_SourceTablesDDLScript_V1.0.ddl)

### Step 4: Create Star Schema (Dimensional Model)

In this step, you will create a Star Schema for the Retail Order Management System (ROMS). The goal is to design a dimensional model that supports efficient data analysis, particularly for tracking sales performance, inventory, and customer behavior.

1. Design the Star Schema:
Using **Erwin Data Modeler**, design the Star Schema by defining the Fact and Dimension tables.

- The **Fact table** should store transactional data, such as Order Amount, Quantity, and Sales.
- The **Dimension tables** should capture descriptive attributes like Customer, Product, Location, and Time. These dimensions will be linked to the Fact table via foreign keys.

2. Conformed Date Dimension:
- Design a **conformed Date dimension** that can be shared across different fact tables and projects. The Date dimension provides consistent time-related attributes such as Year, Quarter, Month, and Day, ensuring uniformity in time-based reporting.
- The advantage of a conformed Date dimension is that it can be reused across multiple subject areas or projects, allowing for consistent and synchronized time-based reporting, regardless of the specific dataset or business domain. For example, the same Date dimension can be used in other projects such as **Inventory Management** or **Marketing Campaign Analysis**, enhancing data consistency across various business processes.

3. Ensure Data Integrity and Optimization:
Make sure the Star Schema is designed to minimize redundancy in the Fact table while ensuring optimal query performance. The Fact table should be **denormalized** to allow for faster aggregations, while the Dimension tables hold descriptive data that will support detailed analysis.

4. Optimize for Querying and Reporting:
The Star Schema should be easy to navigate for ad-hoc queries and should support fast aggregations. By using a conformed Date dimension and organizing your Fact and Dimension tables in this way, you will enable effective and efficient analysis of sales, customer, and product data across the Retail Order Management System.

The final Star Schema will provide a robust, scalable, and efficient foundation for business intelligence and reporting, helping stakeholders gain insights into key metrics such as sales performance, inventory levels, and customer behavior. Additionally, the conformed Date dimension can be leveraged in other subject areas or projects, ensuring consistency and efficiency across the enterprise.

![Dimensional Data Model](https://github.com/RadhikaDeshpande1010/Retail-Order-Management-System-Model/blob/main/ROMS_SRC/w3School_OrderManagement_DimensionalDataModel.png)

## Conclusion
In this project, we have successfully designed and implemented the Entity-Relationship (ER) Diagram and Dimensional Model (Star Schema) for the Retail Order Management System (ROMS). These models form the backbone of a well-organized and efficient database architecture, ensuring data integrity and optimized performance for reporting and analysis.
