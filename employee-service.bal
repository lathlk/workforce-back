import ballerina/http;

# A service representing a network-accessible API
service / on ln {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get employee(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }

    resource function post employee(@http:Payload Employee emp) returns string|error {
        return "Success";
    }
}

public type Employee record {
    string name?;
    string email;
    string phone;
    string department;
    string position?;
    string hireDate?;
};
