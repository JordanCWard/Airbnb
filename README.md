# Denver Airbnb Amenity Analysis

### Overview
Founded in 2008, Airbnb is a San-Francisco based company specializing in short- and long-term homestays. Guests possess diverse requirements, ranging from pet-friendly accommodations to the necessity for cribs.

The objective for this case study was to discover inefficiencies in the market for real-estate investors within the Denver vicinity.


# Neighborhoods
Exploring the average cost of Airbnb listings in different Denver neighborhoods

Denver boasts 78 unique neighborhoods with a total of 5,378 Airbnb listings.

Five Points leads with the highest number of listings with 452, while Sun Valley has just one listing.

The average nightly price for an Airbnb rental in Denver is $252.72.

Kennedy stands out as the most budget-friendly neighborhood with an average price of $78.33 per night.

Conversely, Cheesman Park ranks as the most expensive, averaging $1,038.86 per night.


# Amenities
Analyzing the most and least sought-after Airbnb amenities in Denver

Denver featured a total of 2,301 unique amenities listed on Airbnb.


After refining data, the selection was reduced to 137 distinct amenities.


These are the amenities you’ll find most often in a listing:
Washing machine: 7,748 listings
Free parking: 6,875 listings
Wi-fi: 5,405 listings


In contract, several amenities had only one listing each:
Paid resort access
Toiletries
Complimentary continental breakfast
Game room
Garden


# Deals
Identifying the Denver neighborhoods that provide the best deals on specific amenities

Seeking a backyard for relaxation? Cheesman Park listings with backyards offer savings of $788.60 compared to the average Cheesman Park listing.


Planning a BBQ event? Sunnyside listings with a BBQ grills come at a discount of $360.93 compared to the average Sunnyside listing.


Traveling with your dog? Whittier listings allowing pets provide savings of $222.52 compared to the average Whittier listing.


In need of a window air conditioning unit? Lincoln Park listings offer savings of $361.90 compared to the average Lincoln Park listing.


*Amenities are interconnected with other variables, and considerations like square footage or the number of bedrooms may also play a role.


# Tableau
Access the final results from the case study by clicking the link below. Utilize the filter in the top right to identify neighborhoods with the best deals for your selected amenity.
Airbnb Amenities in Denver


# Data Cleaning
Data was initially downloaded and imported into BigQuery. SQL was employed as the primary tool for this case study.
To clean the data, the amenities column was isolated along with the listing ID. All amenities were originally stored in a single cell and were subsequently split into new cells.
Similar amenities were standardized using the ‘replace’ function, reducing the number of unique amenities from 2,801 to 137.
31 amenities were selected for analysis based on popularity and the added value they offer.

A CSV file was created with the data. Row #14 provides an example with the following columns:
Neighborhood: Cherry Creek
Number of listings: 65
Average price per night: $276.65
Bathtub count (number of listings in Cherry Creek with a bathtub): 39
Bathtub average price (average price of listings in Cherry Creek with a bathtub): $185.38
Bathtub difference (average price per night - bathtub average price): $-91.26
If the difference was greater than or equal to 0, it was removed. See next slide for a snippet of the file.






# Data
Data was utilized from [Inside Airbnb](https://insideairbnb.com/get-the-data/) for analysis.
Data is sourced from the Denver, Colorado, United States section, specifically from the dataset dated June 30, 2023.
The data covers the period from 4-1-23 to 6-30-23.

