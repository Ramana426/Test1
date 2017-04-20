<!DOCTYPE html>
<!DOCTYPE html>
<html>

<head>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.5/angular.min.js"></script>
  <script>
    angular.module("myapp", [])
      .controller("MyController", function($scope) {
        $scope.register = {};
        $scope.register.country = "";
       
        $scope.register.countries = [{
          id: "1",
          name: "LEC Service Address"
        }, {
          id: "2",
          name: "Address Id"
        }, {
          id: "",
          name: "Office Id"
        }];
        
        $scope.register.country = "LEC Service Address";

      });
  </script>
</head>

<body ng-app="myapp">
  <div ng-controller="MyController">
    
    <fieldset style="width:800px;margin-left:50px;">
<legend>Input Address </legend>

   <div>
	<table>
	<tr>
	 <td style="padding-left:1px;"></td>
	 <td >Address Input Type :	 
      <select ng-model="register.country" ng-selected="$first" ng-options="field.name as field.name for field in register.countries " ></select>
      </td>   
	</tr><!-- country.id as country.name for country in register.countries -->
	</table>
    </div>
<div ng-hide="register.country == 'Address Id' ||register.country == 'Office Id' " >
	<table>
		 <tr>
		  <td style="padding-left:75px;">
		  <td>LEC ID : </td> <td><select name="City" style="width: 80px;padding-left:20px;">
                  <option size="30" value="-1" selected></option>
                  </select>                      
                  
                 <td > &nbsp &nbsp&nbsp  &nbsp &nbsp&nbsp  &nbsp &nbsp&nbsp   AFT:</td>
                <td>
        <select id='purpose' style="width: 248px;">

          <option value="1"></option>
        <option value="2">A - Rural Routa and/or Box Number</option>
        <option value="3">B - Un-Number Address</option>
        <option value="4">C - Provider Assinger House Number</option>
        <option value="5">D - Descripetive Address</option>

</select>
         </tr>
		</table>




      </div>

<div ng-hide="register.country == 'Address Id' ||register.country == 'Office Id'" >
<table>
		 <tr> 
		 <td style="padding-left:86px;">
		 <td>SAPR :</td>     
               <td><input type = "text" ng-model = "subjectName"size="10"></td>   
         
		 
		 
		 <td ng-hide="register.country ==  'Address Id'">SANO : 
               <td><input type = "text" ng-model = "subjectName"size="10"></td>
               </td>
			   <td ng-hide="register.country ==  'Address Id'">SASF : 
               <td><input type = "text" ng-model = "subjectName"size="10"></td>
               </td>
		 </table>
		 </tr>
      </div>
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  <div ng-hide="register.country == 'Address Id' ||register.country == 'Office Id'" >
	  <table>
		 <tr>
		  <td style="padding-left:85px;">
		  <td>SASD : </td> <td><select name="City" style="width: 80px;padding-left:20px;">
                  <option size="30" value="-1" selected></option>
                  </select>                      
                  
               
		 <td style="padding-left:10px;">
		 <td>SASN :</td>     
               <td><input type = "text" ng-model = "subjectName"size="10"></td>   
			   <td style="padding-left:10px;">
		 <td>SATH :</td>  
		 
               <td><input type = "text" ng-model = "subjectName"size="10"></td>   
			   <td>SASD : </td> <td><select name="City" style="width: 80px;padding-left:20px;">
                  <option size="30" value="-1" selected></option>
                  </select>  
         </tr>
		 
		</table>
	 
      </div>


      <div  ng-hide="register.country == 'LEC Service Address' ||  register.country == 'Office Id'" >
          <table>
		 <tr>
		   <td style="padding-left:55px;">
		   <td>Address Id : </td><td><input type = "text" ng-model = "subjectName"size="20"></td>
         </tr>
		 </table>
      </div>
    

<div  ng-hide="register.country == 'LEC Service Address' || register.country == 'Address Id'" >
         <table>
		 <tr>
		   <td style="padding-left:68px;">
		   <td>Office Id : </td><td><input type = "text" ng-model = "subjectName"size="20"></td>
         </tr>
		 </table>
      </div>





<div ng-hide="register.country == 'Office Id'">
    
  <table>
<tr>
<td style="padding-left:89px;">
<td></td>   
<td style="padding-left:5px;"> LD1 :</td>
<td><select name="City" style="width: 40px;">
<option size="30" value="-1" selected></option>
</select></td>


<td>LV1:</td>
<td><input type="text" name="paddress" id="paddress" size="5"></td>

<td> LD2</td>
<td><select name="City" style="width: 40px;">
<option size="30" value="-1" selected></option>
</select></td>

<td>LV2:</td>
<td><input type="text" name="paddress" id="paddress" size="5"></td>

<td> LD3</td>
<td><select name="City" style="width: 40px;">
<option size="30" value="-1" selected></option>
</select></td>

<td>LV3:</td>
<td><input type="text" name="paddress" id="paddress" size="5"></td>
</tr>
</table>

</div>
      


      
      
      
      
    
      <div ng-hide="register.country == 'Address Id' || register.country == 'Office Id'" >
           <table>
		 <tr>
		   <td style="padding-left:97px;">
		   <td>City : </td><td><input type = "text" ng-model = "subjectName"size="20"></td>
		   
		   
		   <td style="padding-left:45px;">
		  <td>State : </td> <td><select name="City" style="width: 200px;padding-left:20px;">
                  <option size="30" value="-1" selected></option>
                  </select>                      
               <td ng-hide="register.country ==  'Address Id'"> Zip : 
               <td><input type = "text" ng-model = "subjectName"size="10"></td>
               </td>
         </tr>
		 </table>
         
          
      </div>
    
     
      
      <br>
<table>
<tr>
<td style="padding-left:130px;"><input type="checkbox" name="vehicle" value="Bike">Use CSGW When In-Region <td><br>
</tr>
<tr>
<td style="padding-left:130px;"><input type="checkbox" name="vehicle" value="Bike">Check LRDS for Existing Mapping<td><br>
</tr>

</table>

      
      
      
      
      
    
      
         
    </div>
    
  
    
  <br>
  
  <button type="button" onclick="" style="margin-left:50px;">Submit</button>
<button type="button" onclick="" >Clear</button>


  
  
  <div>
    <br/><a href="http://www.code-sample.com/2014/11/set-default-value-in-dropdown-list-in.html" target="_blank"></a></div>
</body>

</html>
