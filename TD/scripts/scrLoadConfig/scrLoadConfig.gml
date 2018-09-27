/// @function load_config(fileName)
/// @description Load a config-file and return its data
/// @param {string} fileName The Filename of the config-file to load.

var fileName = argument0;

var configFile = file_text_open_read(fileName);
var configData = "";

while (!file_text_eof(configFile)){
	
    configData += file_text_read_string(configFile);
    file_text_readln(configFile);
	
}

file_text_close(configFile);

return configData;