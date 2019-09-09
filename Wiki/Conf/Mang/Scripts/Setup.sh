echo Hello zaki. What time to turn off internet?
read Off

echo What time to turn on internet?
read On 

Path=/home/zaki/Wiki/Conf/Mang/Scripts/
at $Off < /home/zaki/Wiki/Conf/Mang/Scripts/DisableInternet.sh
at $On < /home/zaki/Wiki/Conf/Mang/Scripts/EnableInternet.sh
