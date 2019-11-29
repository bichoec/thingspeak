# Connect iOS with Thingspeak
This code is used to send and get data from Thing Speak.

![](https://github.com/bichoec/thingspeak/blob/master/IoT/IoT/media/demo.png)

## Setup
1. You need an account in: https://thingspeak.com
2. Create a channel.

![](https://github.com/bichoec/thingspeak/blob/master/tutorial/channel.png)

3. Select the channel and click on settings tab.

![](https://github.com/bichoec/thingspeak/blob/master/tutorial/settings.png)

4. Create a field. For this example the field's name is: *Temperatura* 

![](https://github.com/bichoec/thingspeak/blob/master/tutorial/field.png)

5. Copy the API Key.

![](https://github.com/bichoec/thingspeak/blob/master/tutorial/api.png)

6. Replace the API Key in the Swift code in the Class *ObjIoT.swift*
```swift
let api_key : String = "{{API Key Thingspeak}}"
```
7. Create a new Talkback.

![](https://github.com/bichoec/thingspeak/blob/master/tutorial/talkback.png)

8. Create a new command.

![](https://github.com/bichoec/thingspeak/blob/master/tutorial/command.png)

9. Replace this code lines with your API Keys.
```swift
let url_post_commands : String = "https://api.thingspeak.com/talkbacks/{{Talkback code}}/commands.json"
let url_get_temp_value : String = "https://api.thingspeak.com/channels/{{Channel code}}/fields/1/last.txt?api_key={{API Key Thingspeak}}"
```
10. Replace the command's name in the code.
```swift
let postString = postAPIString + " , \"command_string\": \"{{COMMAND_NAME}}\"}"
```
11. Run the Application and you can get the values on the label.

**Important!**
You have to connect a Intel Galileo/Raspberry PI to Thingspeak to post data to the channel.
