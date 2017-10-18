# Requirements

* Please write a Ruby program that:

	* Assembles a collection of student records by parsing data from 3 different files
	* Displays the collection 3 times, sorted 3 different ways

* Besides a testing framework (RSpec, test-unit, or minitest), please only use Ruby and its standard library (i.e. no other gems)

* Please use the latest stable version of Ruby MRI


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

Output 1:
Kirlin Mckayla Atlanta 5/29/1986 Maroon
Barrows Anika Hong Kong 5/5/1965 Spring Green
Goyette Timmothy London 10/2/1964 Pacific Blue
Nolan Rhiannon Los Angeles 10/4/1974 Vivid Tangerine
Parker Matteo Melbourne 2/14/1962 Burnt Sienna
Bednar Filomena New York City 1/24/1980 Salmon
Cummerata Elliot New York City 4/3/1947 Neon Carrot
Wilkinson Stacy New York City 1/22/1964 Shocking Pink
Bruen Rigoberto San Francisco 12/1/1962 Raw Umber

Output 2:
Cummerata Elliot New York City 4/3/1947 Neon Carrot
Parker Matteo Melbourne 2/14/1962 Burnt Sienna
Bruen Rigoberto San Francisco 12/1/1962 Raw Umber
Wilkinson Stacy New York City 1/22/1964 Shocking Pink
Goyette Timmothy London 10/2/1964 Pacific Blue
Barrows Anika Hong Kong 5/5/1965 Spring Green
Nolan Rhiannon Los Angeles 10/4/1974 Vivid Tangerine
Bednar Filomena New York City 1/24/1980 Salmon
Kirlin Mckayla Atlanta 5/29/1986 Maroon

Output 3:
Wilkinson Stacy New York City 1/22/1964 Shocking Pink
Parker Matteo Melbourne 2/14/1962 Burnt Sienna
Nolan Rhiannon Los Angeles 10/4/1974 Vivid Tangerine
Kirlin Mckayla Atlanta 5/29/1986 Maroon
Goyette Timmothy London 10/2/1964 Pacific Blue
Cummerata Elliot New York City 4/3/1947 Neon Carrot
Bruen Rigoberto San Francisco 12/1/1962 Raw Umber
Bednar Filomena New York City 1/24/1980 Salmon
Barrows Anika Hong Kong 5/5/1965 Spring Green