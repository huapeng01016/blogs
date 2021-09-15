clear

input str200 address 
"1601 E NASA Pkwy, Houston, TX 77058"
"1000 George Bush Drive West College Station, TX 77845"
"150 West 65th Street, New York, NY 10023"
"1600 Pennsylvania Avenue NW, Washington, DC 20500"
"One Shields Avenue, Davis, CA 95616"
end

list

gen zip = ustrregexs(0) if ustrregexm(address, "\d{5}$")

list

gen zip2 = ustrregexs(0) if ustrregexm(address, "(?<=TX\s)\d{5}$")

list

gen zip3 = ustrregexs(0) if ustrregexm(address, "(?<!TX\s)\d{5}$")

list
