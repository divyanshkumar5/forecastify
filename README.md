## Forecastify

### Overview

Forecastify is a mobile weather forecasting application built using Flutter. It leverages the OpenWeatherMap API to provide current weather information .

### Features

* **Current Weather:** Get real-time weather updates including temperature, humidity, wind speed, and weather description for a given location.
* **Location Input:** Enter the name of a city or town to get weather information for that location.
* **Unit Conversion:** Easily switch between Celsius and Fahrenheit temperature units.

### Installation

1. **Clone the repository:**
bash 
```
git clone(https://github.com/divyanshkumar5/forecastify.git)
```
3. **Navigate to the project directory:**
bash

```
cd forecastify
```
4.  **Install Flutter (if you haven't already):**
Follow the official Flutter installation guide (search online for "[Flutter installation guide](https://flutter.dev/docs/get-started/install)").

5.  **Get the dependencies:**
bash

```
flutter pub get

```


### Usage

1.  **Obtain an API key from OpenWeatherMap:** Sign up for a free account on OpenWeatherMap.
2.  **Insert your API Key** 
    * Rename the  `.env.example`  file to  `.env`.
    * Replace  `"YOUR_API_KEY"`  in the  `.env`  file with your actual API key obtained from OpenWeatherMap.
4. **Run the application:**

Bash

```
flutter run

```



-   Follow the prompts in the app to enter the location for which you want to get weather information.


### License

This project is licensed under the MIT License. See the [LICENSE](https://github.com/divyanshkumar5/forecastify/blob/main/LICENSE) file for details.

### Acknowledgements

-   [OpenWeatherMap API](https://openweathermap.org/api)for providing weather data.
-   [Flutter](https://flutter.dev/) for enabling cross-platform mobile app development.
-    [HTTPS Requests](https://pypi.org/project/requests/)  for making HTTP requests.

### Contributing

Contributions are welcome! If you find any bugs or have suggestions for improvements, feel free to open an issue or submit a pull request.
