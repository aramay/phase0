# Introduction to Databases

#### I worked on this challenge [by myself ]
#### This challenge took me [#] hours.

## SQL Queries

Paste the correct SQL queries for each of the following:

1. Select all data for all states:
    * select state_name from states;

2. Select all data for the regions:
    * select region_name from regions;

3. Select the `state_name` and `population` for all states:
    * select state_name, population from states;

4. Select the `state_name` and `population` for all states ordered by population. The most populous state should be at the top:
    * select state_name, population
    *...> from states
    *...> ORDER BY population DESC;

5. Select the 'state_name's for the states in region 7:
    * select state_name
    * ...> from states
    * ...> where region_id = 7;
    Arkansas
    Louisiana
    Oklahoma
    Texas

6. Select the 'state_names' and 'population_density' with a population density over 50 ordered from least to most dense:

    * select state_name, population_density
    *...> from states
    *...> where population_density > 50
    *...> ORDER BY population_density ASC;

7. Select all state_names for states with a population between 1 million and 1.
5 million people:
    * 
8. Select all state_names and region_id ordered by region in ascending order:
    * select state_name, region_id
    *...> from states
    * ...> ORDER BY region_id ASC;

9. Select the 'region_name' for the regions with "Central" in the name:
    * 
10. Select all of the region names and the state names in ascending order by regional id:
    * select region_name, state_name from states
    * ...> cross join regions
    * ...> ORDER BY region_id ASC;

## `persons` and `outfits` Schema
<!-- Include a link to your schema design here -->


## Reflection
