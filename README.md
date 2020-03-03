# Requirements

* Please write a Ruby program that:

	* Assembles a collection of student records by parsing data from 3 different files
	* Displays the collection 3 times, sorted 3 different ways

# Criteria

The qualities the code should display:

* **Clarity:** is the intent of the code obvious? Are things named appropriately?
* **Maintainability:** how flexible is the code?
* **Testability:** is it easy to test the code? Please demonstrate with unit tests.

# Input

* comma.txt

	* Delimiter: ,
	* Order: last_name, first_name, campus, favorite_color, date_of_birth

* dollar.txt

	* Delimiter: $
	* Order: last_name, first_name, middle_initial, campus, date_of_birth, favorite_color

* pipe.txt

	* Delimiter: |
	* Order: last_name, first_name, middle_initial, campus, favorite_color, date_of_birth

# Output

Please display the collection in three different ways:

1. Sorted by campus (ascending), then by last_name (ascending)
2. Sorted by date_of_birth (ascending)
3. Sorted by last_name (descending)


Below is the expected output:

Output 1:<br />
Kirlin Mckayla Atlanta 5/29/1986 Maroon<br />
Barrows Anika Hong Kong 5/5/1965 Spring Green<br />
Goyette Timmothy London 10/2/1964 Pacific Blue<br />
Nolan Rhiannon Los Angeles 10/4/1974 Vivid Tangerine<br />
Parker Matteo Melbourne 2/14/1962 Burnt Sienna<br />
Bednar Filomena New York City 1/24/1980 Salmon<br />
Cummerata Elliot New York City 4/3/1947 Neon Carrot<br />
Wilkinson Stacy New York City 1/22/1964 Shocking Pink<br />
Bruen Rigoberto San Francisco 12/1/1962 Raw Umber<br />
<br />
Output 2:<br />
Cummerata Elliot New York City 4/3/1947 Neon Carrot<br />
Parker Matteo Melbourne 2/14/1962 Burnt Sienna<br />
Bruen Rigoberto San Francisco 12/1/1962 Raw Umber<br />
Wilkinson Stacy New York City 1/22/1964 Shocking Pink<br />
Goyette Timmothy London 10/2/1964 Pacific Blue<br />
Barrows Anika Hong Kong 5/5/1965 Spring Green<br />
Nolan Rhiannon Los Angeles 10/4/1974 Vivid Tangerine<br />
Bednar Filomena New York City 1/24/1980 Salmon<br />
Kirlin Mckayla Atlanta 5/29/1986 Maroon<br />
<br />
Output 3:<br />
Wilkinson Stacy New York City 1/22/1964 Shocking Pink<br />
Parker Matteo Melbourne 2/14/1962 Burnt Sienna<br />
Nolan Rhiannon Los Angeles 10/4/1974 Vivid Tangerine<br />
Kirlin Mckayla Atlanta 5/29/1986 Maroon<br />
Goyette Timmothy London 10/2/1964 Pacific Blue<br />
Cummerata Elliot New York City 4/3/1947 Neon Carrot<br />
Bruen Rigoberto San Francisco 12/1/1962 Raw Umber<br />
Bednar Filomena New York City 1/24/1980 Salmon<br />
Barrows Anika Hong Kong 5/5/1965 Spring Green<br />
