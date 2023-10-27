**README.md**

**Restaurant Recommendation System**

This is a sample Flask application that provides restaurant recommendations based on user-defined criteria. The application is hosted on Azure App Services and uses an Azure MySQL database to store restaurant data. It exposes a simple API to fetch restaurant recommendations.

### Prerequisites

Before running the application, make sure you have the following in place:

* Azure MySQL database with the necessary configuration.
* Azure App Services or any other Flask hosting environment.

### Setup

1. Clone this repository or download the code.

2. Set the following environment variables in your hosting environment or configure them locally:

```
   - `AZURE_MYSQL_HOST`: The hostname of your Azure MySQL server.
   - `AZURE_MYSQL_USER`: The username for connecting to the MySQL database.
   - `AZURE_MYSQL_PASSWORD`: The password for connecting to the MySQL database.
```

3. Create a MySQL database named `restaurants` and run the provided SQL script to create the necessary table and populate it with sample restaurant data.

### Usage

#### Running the Application

To run the application locally, use the following command:

```
python app.py
```

This will start the Flask development server, and the application will be accessible at `http://localhost:5000`.

#### API Endpoints

* **Health Check**: You can check the health of the application by accessing the following endpoint:

```
GET /api/health
```

Example: `http://localhost:5000/api/health`

* **Get Restaurant Recommendations**: Use this endpoint to get restaurant recommendations based on specific criteria.

```
GET /api/recommendation
```

Parameters:

* `name` (Restaurant name)
* `style` (Cuisine style)
* `vegetarian` (1 for vegetarian, 0 for non-vegetarian)
* `delivery` (1 for delivery available, 0 for no delivery)

Example: `http://localhost:5000/api/recommendation?style=Italian&vegetarian=1`

#### Sample Response

The response will be a JSON array containing restaurant recommendations that match the specified criteria. Here's a sample response format:

```json
[
  {
    "name": "Pizza Hut",
    "id": 1,
    "style": "Italian",
    "address": "Wherever Street 99, Somewhere",
    "openHour": "09:00",
    "closeHour": "23:00",
    "vegetarian": "yes",
    "delivery": "yes"
  },
  {
    "name": "Dominos",
    "id": 2,
    "style": "Italian",
    "address": "Any Street 100, Somewhere",
    "openHour": "10:00",
    "closeHour": "22:00",
    "vegetarian": "yes",
    "delivery": "yes"
  },
  // More restaurant recommendations...
]
```

If no restaurants match the criteria, you will receive a message indicating that no restaurants are open at the moment or that the query is invalid.

### Deployment

To deploy this application on Azure App Services or any other hosting environment, follow the platform-specific deployment guidelines.
