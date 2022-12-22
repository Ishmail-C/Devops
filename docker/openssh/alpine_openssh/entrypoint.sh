#!/bin/bash

echo "<p style='margin-top:0in;margin-right:0in;margin-bottom:8.0pt;margin-left:0in;line-height:107%;font-size:15px;font-family:"Calibri",sans-serif;text-align:center;'><strong><span style='font-size:24px;line-height:107%;font-family:"Arial Black",sans-serif;color:#C55A11;'>CONTAINER DETAILS</span></strong></p>" >> /var/www/localhost/htdocs/index.html
echo "<p style='margin-top:0in;margin-right:0in;margin-bottom:8.0pt;margin-left:0in;line-height:107%;font-size:15px;font-family:"Calibri",sans-serif;text-align:center;'><br></p>" >> /var/www/localhost/htdocs/index.html
echo "<hr>" >> /var/www/localhost/htdocs/index.html
echo "<p style='margin-top:0in;margin-right:0in;margin-bottom:8.0pt;margin-left:0in;line-height:107%;font-size:15px;font-family:"Calibri",sans-serif;text-align:center;'><u><span style='font-size:21px;line-height:107%;font-family:"Arial Black",sans-serif;color:#8FAADC;'>Hostname</span></u></p>" >> /var/www/localhost/htdocs/index.html
echo "<p style='margin-top:0in;margin-right:0in;margin-bottom:8.0pt;margin-left:0in;line-height:107%;font-size:15px;font-family:"Calibri",sans-serif;text-align:center;'><span style='font-size:19px;line-height:107%;font-family:"Arial Black",sans-serif;'>`hostname`</span></p>" >> /var/www/localhost/htdocs/index.html
echo "<p style='margin-top:0in;margin-right:0in;margin-bottom:8.0pt;margin-left:0in;line-height:107%;font-size:15px;font-family:"Calibri",sans-serif;text-align:center;'><u><span style='font-size:21px;line-height:107%;font-family:"Arial Black",sans-serif;color:#8FAADC;'>Container IP</span></u></p>" >> /var/www/localhost/htdocs/index.html
echo "<p style='margin-top:0in;margin-right:0in;margin-bottom:8.0pt;margin-left:0in;line-height:107%;font-size:15px;font-family:"Calibri",sans-serif;text-align:center;'><span style='font-size:19px;line-height:107%;font-family:"Arial Black",sans-serif;'>`hostname -i`</span></p>" >> /var/www/localhost/htdocs/index.html
echo "<p style='margin-top:0in;margin-right:0in;margin-bottom:8.0pt;margin-left:0in;line-height:107%;font-size:15px;font-family:"Calibri",sans-serif;text-align:center;'><u><span style='font-size:21px;line-height:107%;font-family:"Arial Black",sans-serif;color:#8FAADC;'>Owner</span></u></p>" >> /var/www/localhost/htdocs/index.html
echo "<p style='margin-top:0in;margin-right:0in;margin-bottom:8.0pt;margin-left:0in;line-height:107%;font-size:15px;font-family:"Calibri",sans-serif;text-align:center;'><span style='font-size:19px;line-height:107%;font-family:"Arial Black",sans-serif;'>$user</span></p>" >> /var/www/localhost/htdocs/index.html
echo "<p style='margin-top:0in;margin-right:0in;margin-bottom:8.0pt;margin-left:0in;line-height:107%;font-size:15px;font-family:"Calibri",sans-serif;text-align:center;'><u><span style='font-size:21px;line-height:107%;font-family:"Arial Black",sans-serif;color:#8FAADC;'>Container created Date &amp; Time</span></u></p>" >> /var/www/localhost/htdocs/index.html
echo "<p style='margin-top:0in;margin-right:0in;margin-bottom:8.0pt;margin-left:0in;line-height:107%;font-size:15px;font-family:"Calibri",sans-serif;text-align:center;'><span style='font-size:19px;line-height:107%;font-family:"Arial Black",sans-serif;'>`date`</span></p>" >> /var/www/localhost/htdocs/index.html
echo "<p style='margin-top:0in;margin-right:0in;margin-bottom:8.0pt;margin-left:0in;line-height:107%;font-size:15px;font-family:"Calibri",sans-serif;text-align:center;'><br></p>" >> /var/www/localhost/htdocs/index.html
i

echo "-------------------------WELCOME!!!----------------------"
echo "This container name               :`hostname`"
echo "Container $USER_NAME password     :$PASSWORD"
echo "*********************************************************"
echo "---Please change default password $PASSWORD later time---"

httpd && rc-status && rc-service sshd start && bash
