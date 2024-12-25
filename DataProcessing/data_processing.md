## Project: Data Processing

Build a command line tool that can generate a report based on a csv file.

- Extract the duration from each line.

- Add the values together by activity type (tag).

- Print the duration for each tag.

Example:

```
Blogging: 62.9h
Flutter Firebase Course: 393.9h
Unallocated: 52.4h
YouTube Production: 166.0h
Community engagement: 54.5h
Development: 83.1h
Promotion: 25.2h
Website / Setup: 66.2h
BizDev / Sponsors: 2.0h
Analytics / Growth: 14.7h
Admin: 1.6h
Client Leads: 1.7h
Total for all tags: 924.2h
```

To run the program:

```
dart totals.dart .\data-file.csv
```
