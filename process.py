log_file = open("um-server-01.txt")

# creates a function called sales_reports that takes one paramater  (log_file)
def sales_reports(log_file):
    # loops through each line in log_file
    for line in log_file:
        # removes any trailing characters 
        line = line.rstrip()
        # selects up to the 2 index of the line. In thes case, it would be the day "Mon"/"Tue"
        day = line[0:3]
        # checks to see if day is 'Mon'
        if day == "Mon":
            # prints out that line
            print(line)

# calls the function sales_report and passes in the log_file as an argument
sales_reports(log_file)
