# string_processor

I currently have it so that the onTap of each word queries the JSON file and prints the corresponding message for that word to the console, but I haven’t been able to figure out how to actually display the message from the file next to or above the selected word. Displaying the actual definitions of each word would require hitting an API endpoint to retrieve a definition. If we have a separate back end for this Flutter application, I think the next step would be to consume a dictionary API on the back end so that we’re passing in a selected word from the front end to the back end all the way to the request to the dictionary API, which would then return that word’s definition. The back end could essentially act as a middle man between the dictionary API and our Flutter front end. On the back end, we could build our own endpoint for our front end to fetch definitions from. Each time the front end passes a selected word to our back end endpoint, our back end endpoint passes that selected word in as part of the request to the dictionary API, retrieves the definition, and sends that definition back to the front end. If we wanted to build something without using a dictionary API, we would have to populate our own back end database with words and definitions, but I can imagine that would be a large amount of information.
