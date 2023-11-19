# Normals

## Overview

Welcome to the Normals database! In this project, you will explore Climate Normal data related to ocean temperatures around the world. The data is stored in a SQLite database named `normals.db` and includes information about ocean surface temperatures at various depths for different coordinates.

## Schema

The database schema consists of a single table called `normals` with the following columns:

- `id`: Uniquely identifies each row (coordinate) in the table.
- `latitude`: The degree of latitude (expressed in decimal format) for the coordinate.
- `longitude`: The degree of longitude (expressed in decimal format) for the coordinate.
- `0m`: The normal ocean surface temperature (in degrees Celsius) at 0 meters of depth.
- `5m`: The normal ocean temperature at 5 meters of depth.
- `10m`: The normal ocean temperature at 10 meters of depth.
- And observations continue until `5500m`, representing 5500 meters of depth for some coordinates.

## Files

- `1.sql`: Find the normal ocean surface temperature in the Gulf of Maine, off the coast of Massachusetts. Look at the data associated with 42.5° latitude and -69.5° longitude.
- `2.sql`: Find the normal temperature of the deepest sensor near the Gulf of Maine, at the same coordinate above (225 meters of depth).
- `3.sql`: Choose a location of your own and find the normal temperature at 0 meters, 100 meters, and 200 meters.
- `4.sql`: Find the lowest normal ocean surface temperature.
- `5.sql`: Find the highest normal ocean surface temperature.
- `6.sql`: Return all normal ocean temperatures at 50m of depth, along with their respective coordinates, within the Arabian Sea.
- `7.sql`: Find the average ocean surface temperature along the equator.
- `8.sql`: Find the 10 locations with the lowest normal ocean surface temperature, sorted coldest to warmest.
- `9.sql`: Find the 10 locations with the highest normal ocean surface temperature, sorted warmest to coldest.
- `10.sql`: Determine how many points of latitude have at least one data point.

## Usage

To test your queries, run the following command in the SQLite3 console:

```bash
.read FILENAME
```

Replace `FILENAME` with the name of the file containing your SQL query (e.g., `1.sql`). Alternatively, you can use the following command in your terminal:

```bash
cat FILENAME | sqlite3 normals.db > output.txt
```

This will redirect the output of the query to a text file called `output.txt`.