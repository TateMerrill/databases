log_file = open("um-server-01.txt") # opens the server on the python page so you can run through the fuction below.


def sales_reports(log_file): #sales_reports is the function name, log_file is the server you are going through for data.
    for line in log_file: # For loop to go through server for infomation.
        line = line.rstrip() # The rstrip() returns a string with the trailing characters removed
        day = line[0:3] # Gives the information that you are looking to print in the server 
        if day == "Mon": # Changed Tuesday to Monday. == is the equal syntax in python, simple if statement to check what day of sales you want to print out.
            print(line) # prints the above function(not sure if thats the right syntax for python)


sales_reports(log_file) # Invoke function

# extra credit #1

melons_file = open("um-server-01.txt")

def melons_report(melons_file):
    for line in melons_file:
        line = line.rstrip()
        new_line = line.split(":")
        new_line = new_line[1].split("")
        melon_count = int(new_line[1])
        if melon_count > 10:
            print(line)


melons_report(melons_file)