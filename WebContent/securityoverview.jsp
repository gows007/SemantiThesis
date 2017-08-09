<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Overview</title>
<!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/modern-business.css" rel="stylesheet">
 
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
 <body onload="tree();">
 <div id="navcontainer">
		<ul id="navlist">
			<li><a href="index.html">Home</a></li>
			<li><a href="securityoverview.jsp">Security overview</a></li>
			<li><a href="tableassets.jsp">Assets</a></li>
			<li><a href="tableattackvectors.jsp">Attacks</a></li>
			<li><a href="viewtara.jsp">TARA</a></li>
			<li><a href="viewchart.jsp">Export</a></li>
		</ul>
</div>		
<div id="content">
<h4 class='liketext'><img style='height: 50px; width: 50px; margin-left: auto;' src='Images/security overview.JPG'/>&nbsp &nbsp Security overview</h4>
<div class="scrolledView" id="left">
 <ul class='tree'>
  <li><a href="#"><img src='Images/asset management.PNG' class= "imageIcons"/> &nbsp Assets</a>
    <ul>
      <li><a href="#"><img class= "imageIcons" src='Images/icon for assets.JPG'/> &nbsp Chassis safety controller</a>
        <ul>
          <li><a href="#"><img class= "imageIcons" src='Images/attack management.PNG'/> &nbsp Attacks</a>
          	<ul>
          		<li><a href="#" onclick="$('#hide2').hide();$('#hide3').hide();$('#hide4').hide();$('#target').toggle();"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Denial of Service</a></li>
          		<li><a href="#" onclick="$('#target').hide();$('#hide3').hide();$('#hide4').hide();$('#hide2').toggle();"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Exploit Implementation flaws</a></li>
          		<li><a href="#" onclick="$('#target').hide();$('#hide2').hide();$('#hide4').hide();$('#hide3').toggle();"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Corrupt data or code</a></li>
          		<li><a href="#" onclick="$('#target').hide();$('#hide2').hide();$('#hide3').hide();$('#hide4').toggle();"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Flash malicious code</a></li>		
          	</ul>
          </li>
        </ul>
      </li>
      <li><a href="#"><img class= "imageIcons" src='Images/icon for assets.JPG'/> &nbsp Wireless communications</a>
        <ul>
          <li><a href="#"><img class= "imageIcons" src='Images/attack management.PNG'/> &nbsp Attacks</a>
          <ul>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Corrupt or fake messages</a></li>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Jamming</a></li>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Listen, intercept, alter, inject, replay</a></li>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Exploit vulnerability or implementation</a></li>		
          	</ul>
          </li>
        </ul>
      </li>
      <li><a href="#"><img class= "imageIcons" src='Images/icon for assets.JPG'/> &nbsp In-car communications</a>
        <ul>
          <li><a href="#"><img class= "imageIcons" src='Images/attack management.PNG'/> &nbsp Attacks</a>
          <ul>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Jamming</a></li>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Insert fake data</a></li>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Disable or denial of service</a></li>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Listen, intercept, alter, inject, replay</a></li>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Configuration change</a></li>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Exploit vulnerability or implementation</a></li>		
          	</ul>
          </li>
        </ul>
      </li>
      <li><a href="#"><img class= "imageIcons" src='Images/icon for assets.JPG'/> &nbsp GPS</a>
        <ul>
          <li><a href="#"><img class= "imageIcons" src='Images/attack management.PNG'/> &nbsp Attacks</a>
           <ul>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Jamming</a></li>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp spoofing</a></li>
           </ul>
          </li>
        </ul>
      </li>
      <li><a href="#"><img class= "imageIcons" src='Images/icon for assets.JPG'/> &nbsp Communications unit</a>
        <ul>
          <li><a href="#"><img class= "imageIcons" src='Images/attack management.PNG'/> &nbsp Attacks</a>
          <ul>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Denial of Service</a></li>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Corrupt code or data</a></li>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Exploit vulnerability of external communication protocols</a></li>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Malware flashed with OBD update</a></li>		
          	</ul>
          </li>
        </ul>
      </li>
      <li><a href="#"><img class= "imageIcons" src='Images/icon for assets.JPG'/> &nbsp In-car sensors</a>
        <ul>
          <li><a href="#"><img class= "imageIcons" src='Images/attack management.PNG'/> &nbsp Attacks</a>
          <ul>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Manipulate</a></li>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Malware flashed</a></li>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Disable or denial of service</a></li>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Spoof</a></li>		
          	</ul>
          </li>
        </ul>
      </li>
      <li><a href="#"><img class= "imageIcons" src='Images/icon for assets.JPG'/> &nbsp Head Unit</a>
        <ul>
          <li><a href="#"><img class= "imageIcons" src='Images/attack management.PNG'/> &nbsp Attacks</a>
          <ul>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Gain root access to embedded OS</a></li>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Exploit vulnerability or implementation error</a></li>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Malware flashed</a></li>	
          	</ul>
          </li>
        </ul>
      </li>
      <li><a href="#"><img class= "imageIcons" src='Images/icon for assets.JPG'/> &nbsp In-car ECU</a>
        <ul>
          <li><a href="#"><img class= "imageIcons" src='Images/attack management.PNG'/> &nbsp Attacks</a>
          <ul>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Disable or denial of service</a></li>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Malware flashed with OBD update</a></li>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Configuration change</a></li>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Exploit vulnerability or implementation error</a></li>		
          	</ul>
          </li>
        </ul>
      </li>
      <li><a href="#"><img class= "imageIcons" src='Images/icon for assets.JPG'/> &nbsp Powertrain controller</a>
        <ul>
          <li><a href="#"><img class= "imageIcons" src='Images/attack management.PNG'/> &nbsp Attacks</a>
          <ul>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Malware flashed with OBD update</a></li>
          </ul>
          </li>
        </ul>
      </li>
      <li><a href="#"><img class= "imageIcons" src='Images/icon for assets.JPG'/> &nbsp Powertrain peripherals</a>
        <ul>
          <li><a href="#"><img class= "imageIcons" src='Images/attack management.PNG'/> &nbsp Attacks</a>
          <ul>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Corrupt code or data</a></li>
          </ul>
          </li>
        </ul>
      </li>
      <li><a href="#"><img class= "imageIcons" src='Images/icon for assets.JPG'/> &nbsp In-car interfaces</a>
        <ul>
          <li><a href="#"><img class= "imageIcons" src='Images/attack management.PNG'/> &nbsp Attacks</a>
          <ul>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Physical access</a></li>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Exploit vulnerabilities, introduce bogus data</a></li>
          </ul>
          </li>        
        </ul>
      </li>
      <li><a href="#"><img class= "imageIcons" src='Images/icon for assets.JPG'/> &nbsp Roadside units</a>
        <ul>
          <li><a href="#"><img class= "imageIcons" src='Images/attack management.PNG'/> &nbsp Attacks</a>
          	<ul>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Exploit configuration errors</a></li>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Gain root access</a></li>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Exploit protocol implementation flaws</a></li>
          	</ul>
          </li>
        </ul>
      </li>
      <li><a href="#"><img class= "imageIcons" src='Images/icon for assets.JPG'/> &nbsp E-call service centre interfaces</a>
        <ul>
          <li><a href="#"><img class= "imageIcons" src='Images/attack management.PNG'/> &nbsp Attacks</a>
          	<ul>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Denial of service</a></li>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Exploit interfaces</a></li>
          	</ul>
          </li>
        </ul>
      </li>
      <li><a href="#"><img class= "imageIcons" src='Images/icon for assets.JPG'/> &nbsp E-call service centre</a>
        <ul>
          <li><a href="#"><img class= "imageIcons" src='Images/attack management.PNG'/> &nbsp Attacks</a>
          	<ul>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Overload</a></li>
          	</ul>
          </li>
        </ul>
      </li>
      <li><a href="#"><img class= "imageIcons" src='Images/icon for assets.JPG'/> &nbsp Keys</a>
        <ul>
          <li><a href="#"><img class= "imageIcons" src='Images/attack management.PNG'/> &nbsp Attacks</a>
          <ul>
          		<li><a href="#"><img class= "imageIcons" src='Images/attacks icon.JPG'/> &nbsp Illegal acquisition, modification or breaking</a></li>
          	</ul>
          </li>
        </ul>
      </li>
    </ul>
  </li>  
</ul>
 </div> 
 <div class="rightcontainer">
 <b style="padding-left: 15px">Security requirements</b>
 <br><p class = "secinfo">Click on individual attacks from the left structure to view corresponding security requirements</p>
 
 <div class="container" id="target" style="display:none">
  <div class="panel-group" id="accordion">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Authenticity</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse in">
        <div class="panel-body">Whenever an active braking action is performed, the position information for all vehicles that is
being recorded in the neighborhood tables shall be authentic for the braking action in terms of origin,content and time.</div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Availability</a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse in">
        <div class="panel-body">The availability of ECU CPUs should be ensured for some applications (especially those that require some computation or message routing to take place.Whenever information is exchanged between different ECUs, CU, HU, Sensors, and other units of vehicle availability of CPU must be ensured.
        <br><br>The highest availability should be ensured for highest priority functions (in particular those essential
to safety-critical applications):
1. Whenever information is sent from vehicle to neighborhood vehicles, RSU or others entities highest availability of requested devices must be ensured for highest priority functions.
2. Whenever information is received for a vehicle from neighborhood vehicles, RSU or other entities, highest availability of requested devices must be ensured for highest priority functions.
        <br>
        </div>
      </div>
    </div>
  </div> 
</div>	
<div class="container" id="hide2" style="display: none">
  <div class="panel-group" id="accordion">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Authenticity</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse in">
        <div class="panel-body">Whenever an active braking action is performed, the own Environment Information measured by the sensors that the action is based on shall be authentic in terms of origin, content and time.
        <br><br>Whenever an active braking action is performed, the own Vehicle Dynamics measured by the sensors that the action is based on shall be authentic in terms of origin, content and time.
        <br><br>Whenever an active braking action is performed, the own Position-Information that the action is based on shall be authentic in terms of origin, content and time.
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Confidentiality</a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse in">
        <div class="panel-body">Firmware data should remain confidential when updates are distributed by the manufacturer: Whenever a flashing command is sent to ECU, confidentiality of firmware data must be ensured.
        <br><br>Confidentiality of firmware update should be ensured: attackers should not gain information out of the flashing process about the version of firmware being installed or the ECU being updated:
Whenever a flashing command is sent to ECU, confidentiality of firmware update must be ensured.
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Integrity</a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse in">
        <div class="panel-body">Flashing Command Integrity (the flashing went to its end): Whenever a flashing command is sent to an ECU for flashing, integrity of flashing command must be ensured.
        <br><br>It should be ensured that firmware data received as an update has not been modified since it left the manufacturer servers (code integrity): Whenever a flashing command is sent
to an ECU, the integrity of the firmware must be ensured.
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Privacy</a>
        </h4>
      </div>
      <div id="collapse4" class="panel-collapse collapse in">
        <div class="panel-body">Controlled access to e-service message data: an e-service message is a message sent from a car to an entity external to the TOE and car maker, and providing a service, for example:
• service center residing in the infrastructure (e.g. eCall center, eToll)
• garage (e.g. remote flashing)
Whenever a message is sent from a vehicle to an entity external to the TOE and car maker, and providing a service, controlled access to e-service message data must be ensured.
<br><br>Unlinkable driver identification between services: some applications will need to prevent two different services from linking their respective knowledge of the drivers
</div>
      </div>
    </div>
  </div> 
</div>	
<div class="container" id="hide3" style="display: none">
  <div class="panel-group" id="accordion">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Authenticity</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse in">
        <div class="panel-body">Whenever an active braking action is performed, the own Environment Information measured by the sensors that the action is based on shall be authentic in terms of origin, content and time.
        <br><br>Whenever an active braking action is performed, the own Vehicle Dynamics measured by the sensors that the action is based on shall be authentic in terms of origin, content and time.
        <br><br>Whenever an active braking action is performed, the own Position-Information that the action is based on shall be authentic in terms of origin, content and time.
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Freshness</a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse in">
        <div class="panel-body">The freshness of the series of messages generated in sequence by all gateways or ECUs traversed along the functional path should be ensured in order to prevent the undesirable triggering of commands:
1. Whenever a message resulting in commands is sent from one internal
ECU to another internal ECU, freshness of information along functional path must be ensured.
2. Whenever a message is received from a Mobile Device, freshness of all those messages must be ensured.
3. Whenever a message is sent from vehicle to a Mobile Device, freshness of all those messages along functional path must be ensured.
<br><br> Flashing command freshness: Whenever a command sent to ECU for
flashing, flashing command freshness must be ensured.
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Access</a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse in">
        <div class="panel-body">Controlled Access To Flashing Function: Whenever a flashing command is sent to ECU, controlled access to flashing function must be ensured.
        <br><br>Controlled Access To Read From Flash: Whenever a flashing command is
sent to ECU, controlled access to read from flash must be ensured.
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Privacy</a>
        </h4>
      </div>
      <div id="collapse4" class="panel-collapse collapse in">
        <div class="panel-body">Controlled access to e-service message data: an e-service message is a message sent from a car to an entity external to the TOE and car maker, and providing a service, for example:
• service center residing in the infrastructure (e.g. eCall center, eToll)
• garage (e.g. remote flashing)
Whenever a message is sent from a vehicle to an entity external to the TOE and car maker, and providing a service, controlled access to e-service message data must be ensured.
<br><br>Unlinkable driver identification between services: some applications will need to prevent two different services from linking their respective knowledge of the drivers
</div>
      </div>
    </div>
  </div> 
</div>	
<div class="container" id= "hide4" style="display: none">
 <div class="panel-group" id="accordion">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Authenticity</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse in">
        <div class="panel-body">Details.</div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Confidentiality</a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse in">
        <div class="panel-body">Details.</div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Availibility</a>
        </h4>
      </div>
      <div id="collapse3" class="panel-collapse collapse in">
        <div class="panel-body">Details</div>
      </div>
    </div>
  </div> 
</div>

 </div>
 
  </div>
  <script language="javascript" type="text/javascript" src="script.js"></script>		
</body>
</html>