$(".js-select2").each(function(){

    $(this).select2({

        minimumResultsForSearch: 20,

        dropdownParent: $(this).next('.dropDownSelect2')

    });


    $(".js-select2").each(function(){

        $(this).on('select2:close', function (e){

            if($(this).val() == "") {

                $('.js-show-batch').slideDown();

                $('.js-show-spouse').slideUp();

                $('.js-show-couple').slideUp();

                $('.js-show-family').slideUp();

                $('.js-show-group').slideUp();

                $('.js-show-num').slideUp();

                $('.js-show-num2').slideUp();

                $('.js-show-num3').slideUp();

                $('.js-show-num4').slideUp();

                $('.js-show-num5').slideUp();

                $('.js-show-num6').slideUp();

                $('.js-show-payment').slideDown();

            }

            else {

                $('.js-show-batch').slideUp();

                $('.js-show-batch').slideDown();

                $('.js-show-payment').slideDown();

                $('.js-show-spouse').slideUp();

            }



        });

        

    });

}) 


$(".js-select6").each(function(){

    $(this).select2({

        minimumResultsForSearch: 20,

        dropdownParent: $(this).next('.dropDownSelect2')

    });


    $(".js-select6").each(function(){

        $(this).on('select2:close', function (e){

            if($(this).val() == "") {

                $('.js-show-batch').slideDown();

                $('.js-show-spouse').slideUp();

                $('.js-show-couple').slideUp();

                $('.js-show-family').slideUp();

                $('.js-show-group').slideUp();

                $('.js-show-num').slideUp();

                $('.js-show-num2').slideUp();

                $('.js-show-num3').slideUp();

                $('.js-show-num4').slideUp();

                $('.js-show-num5').slideUp();

                $('.js-show-num6').slideUp();

                $('.js-show-payment').slideDown();

            }

            else {

                $('.js-show-batch').slideUp();

                $('.js-show-batch').slideDown();

                $('.js-show-payment').slideDown();

                $('.js-show-spouse').slideUp();

            }



        });

        

    });

}) 


$(".js-select5").each(function(){

    $(this).select2({

        minimumResultsForSearch: 20,

        dropdownParent: $(this).next('.dropDownSelect2')

    });


    $(".js-select5").each(function(){

        $(this).on('select2:close', function (e){

            if($(this).val() == "Yes") {

                $('.js-show-batch').slideDown();

                $('.js-show-spouse').slideDown();

                $('.js-show-couple').slideDown();

                $('.js-show-family').slideUp();

                $('.js-show-group').slideUp();

                $('.js-show-num').slideDown();

                $('.js-show-num2').slideUp();

                $('.js-show-num3').slideUp();

                $('.js-show-num4').slideUp();

                $('.js-show-num5').slideUp();

                $('.js-show-num6').slideUp();

                $('.js-show-payment').slideDown();

            }

            else if($(this).val() == "No") {

                $('.js-show-batch').slideDown();

                $('.js-show-spouse').slideUp();

                $('.js-show-couple').slideUp();

                $('.js-show-family').slideUp();

                $('.js-show-group').slideUp();

                $('.js-show-num').slideDown();

                $('.js-show-num2').slideUp();

                $('.js-show-num3').slideUp();

                $('.js-show-num4').slideUp();

                $('.js-show-num5').slideUp();

                $('.js-show-num6').slideUp();

                $('.js-show-payment').slideDown();


            }



        });

        

    });

}) 




$(".js-select3").each(function(){

    $(this).select2({

        minimumResultsForSearch: 20,

        dropdownParent: $(this).next('.dropDownSelect2')

    });





    $(".js-select3").each(function(){

        $(this).on('select2:close', function (e){

            if($(this).val() == "Single") {

            

                $('.js-show-couple').slideUp();

                $('.js-show-family').slideUp();

                $('.js-show-spouse').slideUp();

                $('.js-show-group').slideUp();

                $('.js-show-num').slideUp();

                $('.js-show-num2').slideUp();

                $('.js-show-num3').slideUp();

                $('.js-show-num4').slideUp();

                $('.js-show-num5').slideUp();

                $('.js-show-num6').slideUp();

                $('.js-show-payment').slideUp();

            }

            else if($(this).val() == "Married") {

                $('.js-show-couple').slideUp();

                $('.js-show-family').slideUp();

                $('.js-show-spouse').slideDown();

                $('.js-show-group').slideUp();

                $('.js-show-num').slideDown();

                $('.js-show-num2').slideUp();

                $('.js-show-num3').slideUp();

                $('.js-show-num4').slideUp();

                $('.js-show-num5').slideUp();

                $('.js-show-num6').slideUp();

                $('.js-show-payment').slideDown();

            }

            else if($(this).val() == "Divorced"){

                $('.js-show-family').slideUp();

                $('.js-show-spouse').slideUp();

                $('.js-show-group').slideUp();

                $('.js-show-couple').slideUp();

                $('.js-show-num').slideDown();

                $('.js-show-num2').slideUp();

                $('.js-show-num3').slideUp();

                $('.js-show-num4').slideUp();

                $('.js-show-num5').slideUp();

                $('.js-show-num6').slideUp();

                $('.js-show-payment').slideDown();

            }

            else if($(this).val() == "Widow"){

                $('.js-show-couple').slideUp();

                $('.js-show-spouse').slideUp();

                $('.js-show-group').slideUp();

                $('.js-show-family').slideUp();

                $('.js-show-num').slideDown();

                $('.js-show-num2').slideUp();

                $('.js-show-num3').slideUp();

                $('.js-show-num4').slideUp();

                $('.js-show-num5').slideUp();

                $('.js-show-num6').slideUp();

                $('.js-show-payment').slideDown();

            }

            else if($(this).val() == "Single Parent"){

                $('.js-show-couple').slideUp();

                $('.js-show-spouse').slideUp();

                $('.js-show-family').slideUp();

                $('.js-show-group').slideUp();

                $('.js-show-num').slideDown();

                $('.js-show-num2').slideUp();

                $('.js-show-num3').slideUp();

                $('.js-show-num4').slideUp();

                $('.js-show-num5').slideUp();

                $('.js-show-num6').slideUp();

                $('.js-show-payment').slideDown();

            }

            else{

                $('.js-show-couple').slideUp();

                $('.js-show-family').slideUp();

                $('.js-show-spouse').slideUp();

                $('.js-show-group').slideUp();

                $('.js-show-num').slideUp();

                $('.js-show-num2').slideUp();

                $('.js-show-num3').slideUp();

                $('.js-show-num4').slideUp();

                $('.js-show-num5').slideUp();

                $('.js-show-num6').slideUp();

                $('.js-show-payment').slideUp();

            }	

        });

        

    });

})



$(".js-select4").each(function(){

    $(this).select2({

        minimumResultsForSearch: 20,

        dropdownParent: $(this).next('.dropDownSelect2')

    });



$(".js-select4").each(function(){

        $(this).on('select2:close', function (e){

            if($(this).val() == "None") {

                $('.js-show-num').slideDown();

                $('.js-show-num2').slideUp();

                $('.js-show-num3').slideUp();

                $('.js-show-num4').slideUp();

                $('.js-show-num5').slideUp();

                $('.js-show-num6').slideUp();

                

            }

            else if($(this).val() == "1") {

                $('.js-show-num').slideDown();

                $('.js-show-num2').slideDown();

                $('.js-show-num3').slideUp();

                $('.js-show-num4').slideUp();

                $('.js-show-num5').slideUp();

                $('.js-show-num6').slideUp();

            }

            else if($(this).val() == "2"){

                $('.js-show-num').slideDown();

                $('.js-show-num2').slideDown();

                $('.js-show-num3').slideDown();

                $('.js-show-num4').slideUp();

                $('.js-show-num5').slideUp();

                $('.js-show-num6').slideUp();

            }

            else if($(this).val() == "3"){

                $('.js-show-num').slideDown();

                $('.js-show-num2').slideDown();

                $('.js-show-num3').slideDown();

                $('.js-show-num4').slideDown();

                $('.js-show-num5').slideUp();

                $('.js-show-num6').slideUp();

            }

            else if($(this).val() == "4"){

                $('.js-show-num').slideDown();

                $('.js-show-num2').slideDown();

                $('.js-show-num3').slideDown();

                $('.js-show-num4').slideDown();

                $('.js-show-num5').slideDown();

                $('.js-show-num6').slideUp();

            }

            else if($(this).val() == "5"){

                $('.js-show-num').slideDown();

                $('.js-show-num2').slideDown();

                $('.js-show-num3').slideDown();

                $('.js-show-num4').slideDown();

                $('.js-show-num5').slideDown();

                $('.js-show-num6').slideDown();

            }

            else{

                $('.js-show-num').slideDown();

                $('.js-show-num2').slideUp();

                $('.js-show-num3').slideUp();

                $('.js-show-num4').slideUp();

                $('.js-show-num5').slideUp();

                $('.js-show-num6').slideUp();

            }	

        });

        

    });



})



/*    var id = 'PMS' + (Math.floor(Math.random() * 10000000000000) + 1);

		document.getElementById("txnid").innerHTML = 'REG ID: ' +  id;
        document.getElementById("txnid").value = id;
        document.getElementById("odr").innerHTML = 'REG ID: ' +  id;    



function fullp(){

    
        var res = 5610.00;

        var nonres = 4590.00;

        var resChild = 3927.00;

        var nonresChild = 3213.00;


        if (document.getElementById('type').value == "Individual" && document.getElementById('radior').checked){

			document.getElementById("amount").value = (res).toFixed(2);
            document.getElementById("amnt").innerHTML = 'AMOUNT: Rs ' + document.getElementById("amount").value;

        } else if (document.getElementById('type').value == "Individual" && document.getElementById('radion').checked){
            
            document.getElementById("amount").value = nonres.toFixed(2);
            document.getElementById("amnt").innerHTML = 'AMOUNT: Rs ' + document.getElementById("amount").value;

        } else if (document.getElementById('type').value == "Married Couple" && document.getElementById('radior').checked){

			document.getElementById("amount").value = (res * 2).toFixed(2);
            document.getElementById("amnt").innerHTML = 'AMOUNT: Rs ' + document.getElementById("amount").value;

        } else if (document.getElementById('type').value == "Married Couple" && document.getElementById('radion').checked){


			document.getElementById("amount").value = (nonres * 2).toFixed(2);
            document.getElementById("amnt").innerHTML = 'AMOUNT: Rs ' + document.getElementById("amount").value;

        } else if (document.getElementById('type').value == "Family" || document.getElementById('type').value == "Group"){

            var sum = 0;
            var sum0 = 0;
            var sum1 = 0;
            var sum2 = 0;
            var sum3 = 0;
            var sum4 = 0;
            var sum5 = 0;

            if(document.getElementById('radior').checked){
                sum0 = res;
            } else if(document.getElementById('radion').checked){
                sum0 = nonres;
            } else {
                sum0 = 0;
            }
            
            
            var age2 =  document.getElementById('age2');
            if (typeof(age2) != 'undefined' && age2 != null){
                
                if(document.getElementById('age2').value < 4) {
                    sum1 = 0;
                } else if(document.getElementById('age2').value < 12 && document.getElementById('radior').checked){
                    sum1 = resChild;
                } else if(document.getElementById('age2').value < 12 && document.getElementById('radion').checked){
                    sum1 = nonresChild;
                } else if(document.getElementById('age2').value >= 12 && document.getElementById('radior').checked){
                    sum1 = res;
                } else if(document.getElementById('age2').value >= 12 && document.getElementById('radion').checked){
                    sum1 = nonres;
                } 
                
            } else {
                sum1 = 0;
            }
            
            var age3 =  document.getElementById('age3');
            if (typeof(age3) != 'undefined' && age3 != null){
            
                if(document.getElementById('age3').value < 4) {
                    sum2 = 0;
                } else if(document.getElementById('age3').value < 12 && document.getElementById('radior').checked){
                    sum2 = resChild;
                } else if(document.getElementById('age3').value < 12 && document.getElementById('radion').checked){
                    sum2 = nonresChild;
                } else if(document.getElementById('age3').value >= 12 && document.getElementById('radior').checked){
                    sum2 = res;
                } else if(document.getElementById('age3').value >= 12 && document.getElementById('radion').checked){
                    sum2 = nonres;
                } 
                
            } else {
                sum2 = 0;
            }
            
            var age4 =  document.getElementById('age4');
            if (typeof(age4) != 'undefined' && age4 != null){

                if(document.getElementById('age4').value < 4) {
                    sum3 = 0;
                } else if(document.getElementById('age4').value < 12 && document.getElementById('radior').checked){
                    sum3 = resChild;
                } else if(document.getElementById('age4').value < 12 && document.getElementById('radion').checked){
                    sum3 = nonresChild;
                } else if(document.getElementById('age4').value >= 12 && document.getElementById('radior').checked){
                    sum3 = res;
                } else if(document.getElementById('age4').value >= 12 && document.getElementById('radion').checked){
                    sum3 = nonres;
                } 
                
            } else {
                sum3 = 0;
            }
            
            var age5 =  document.getElementById('age5');
            if (typeof(age5) != 'undefined' && age5 != null){
                
                if(document.getElementById('age5').value < 4) {
                    sum4 = 0;
                } else if(document.getElementById('age5').value < 12 && document.getElementById('radior').checked){
                    sum4 = resChild;
                } else if(document.getElementById('age5').value < 12 && document.getElementById('radion').checked){
                    sum4 = nonresChild;
                } else if(document.getElementById('age5').value >= 12 && document.getElementById('radior').checked){
                    sum4 = res;
                } else if(document.getElementById('age5').value >= 12 && document.getElementById('radion').checked){
                    sum4 = nonres;
                } 
                
            }else {
                sum4 = 0;
            }
            
            var age6 =  document.getElementById('age6');
            if (typeof(age6) != 'undefined' && age6 != null){
                
                if(document.getElementById('age6').value < 4) {
                    sum5 = 0;
                } else if(document.getElementById('age6').value < 12 && document.getElementById('radior').checked){
                    sum5 = resChild;
                } else if(document.getElementById('age6').value < 12 && document.getElementById('radion').checked){
                    sum5 = nonresChild;
                }  else if(document.getElementById('age6').value >= 12 && document.getElementById('radior').checked){
                    sum5 = res;
                } else if(document.getElementById('age6').value >= 12 && document.getElementById('radion').checked){
                    sum5 = nonres;
                } 
                
            } else {
                sum5 = 0;
            }
            
            sum = (sum0 + sum1 + sum2 + sum3 + sum4 + sum5).toFixed(2);
            document.getElementById("amount").value = sum;
            document.getElementById("amnt").innerHTML = 'AMOUNT: Rs ' + sum;

        }

    }



function cal(){

        if(document.getElementById("radiofull").checked){

            fullp();

        } else if(document.getElementById("radiopr").checked){

            prep();

        }


    }
                */


/* function spouse(){
    
    if (document.getElementById('spousemem').value == "Yes") {
        document.getElementById('spouse').innerHTML = '<div class="w-full dis-none js-show-couple" id="spouse"> <div class="wrap-input100 bg1"> <div class="wrap-input100 bg1 " data-validate="Enter The First Name"> <span class="label-input100">First Name *</span> <spring:bind path="spouse.firstname"> <form:input class="input100" type="text" name="firstname" placeholder="Enter The First Name" path="spouse.firstname"> <form:errors path="spouse.firstname"></form:errors> </form:input> </spring:bind> </div> <div class="wrap-input100 bg1 validate-input rs1-wrap-input100" data-validate="Enter the Last Name"> <span class="label-input100">Last Name *</span> <spring:bind path="spouse.lastname"> <form:input class="input100" type="text" name="lastname" placeholder="Enter the First Name" path="spouse.lastname"> <form:errors path="spouse.lastname"></form:errors> </form:input> </spring:bind> </div> <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate="Enter the Email (e@a.x)"> <span class="label-input100">Email *</span> <spring:bind path="spouse.email"> <form:input class="input100" type="email" name="email" placeholder="Enter the Email " path="spouse.email"> <form:errors path="spouse.email"></form:errors> </form:input> </spring:bind> </div> <div class="wrap-input100 bg1 validate-input rs1-wrap-input100" data-validate="Enter the Mobile Number"> <span class="label-input100">Mobile Number</span> <spring:bind path="spouse.mobilenumber"> <form:input class="input100" type="tel" name="phone" placeholder="Enter the Mobile Number" path="spouse.mobilenumber"> <form:errors path="spouse.mobilenumber"></form:errors> </form:input> </spring:bind> </div> <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate="Enter the Age"> <span class="label-input100">Date of Birth</span> <spring:bind path="spouse.dob"> <form:input class="input100" type="date" name="dob" placeholder="Enter The Date of Birth" path="spouse.dob"> <form:errors path="spouse.dob"></form:errors> </form:input> </spring:bind> </div> <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate="Enter the Profession"> <span class="label-input100">Profession *</span> <spring:bind path="spouse.profession"> <form:input class="input100" type="text" placeholder="Enter the profession" path="spouse.profession"> <form:errors path="spouse.profession"></form:errors> </form:input> </spring:bind> </div> <div class="wrap-input100 input100-select bg1 rs1-wrap-input100"> <span class="label-input100">Ministry</span> <spring:bind path="spouse.ministries"> <form:select class="input100" path="spouse.ministries" items="${ministries}" itemlabel="ministryname" itemvalue="ministryid"> <form:errors path="spouse.ministries"></form:errors> </form:select> </spring:bind> </div> <div class="rs1-wrap-input100"> <span class="label-input100">Water Baptism</span> <div class="contact100-form-radio m-t-15"> <spring:bind path="spouse.waterbaptized"> <form:select class="js-select6" path="spouse.waterbaptized"> <option value="Yes">Yes</option> <option value="No">No</option> </form:select> <form:errors path="spouse.waterbaptized"></form:errors> </spring:bind> <div class="dropDownSelect2"></div> </div> </div> <div class="rs1-wrap-input100"> <span class="label-input100">Encounter Weekend</span> <div class="contact100-form-radio m-t-15"> <spring:bind path="spouse.encountercompleted"> <form:select class="js-select6" path="spouse.encountercompleted"> <option value="Yes">Yes</option> <option value="No">No</option> </form:select> <form:errors path="spouse.encountercompleted"></form:errors> </spring:bind> <div class="dropDownSelect2"></div> </div> </div> <div class="rs1-wrap-input100"> <span class="label-input100">Healing &amp; Deliverance</span> <div class="contact100-form-radio m-t-15"> <spring:bind path="spouse.shdcompleted"> <form:select class="js-select6" path="spouse.shdcompleted"> <option value="Yes">Yes</option> <option value="No">No</option> </form:select> <form:errors path="spouse.shdcompleted"></form:errors> </spring:bind> <div class="dropDownSelect2"></div> </div> </div> <div class="rs1-wrap-input100"> <span class="label-input100">Prayer Ministry Seminar</span> <div class="contact100-form-radio m-t-15"> <spring:bind path="spouse.pmtcompleted"> <form:select class="js-select6" path="spouse.pmtcompleted"> <option value="Yes">Yes</option> <option value="No">No</option> </form:select> <form:errors path="spouse.pmtcompleted"></form:errors> </spring:bind> <div class="dropDownSelect2"></div> </div> </div> <div class="rs1-wrap-input100"> <span class="label-input100">Adonai Bible School</span> <div class="contact100-form-radio m-t-15"> <spring:bind path="spouse.abscompleted"> <form:select class="js-select6" path="spouse.abscompleted"> <option value="Yes">Yes</option> <option value="No">No</option> </form:select> <form:errors path="spouse.abscompleted"></form:errors> </spring:bind> <div class="dropDownSelect2"></div> </div> </div> </div> </div>';
    } else {
        var element = document.getElementById('spouse');
        while(element.firstChild) {
            element.removeChild(element.firstChild);
        }
    }

}   */



function delegate(){
    var elem, element, element1, element2, element3;
    
    if (document.getElementById('num').value == "None") {
        elem = document.getElementById("del2");
        while(elem.firstChild) {
            elem.removeChild(elem.firstChild);
        }
        
        element = document.getElementById("del3");
        while(element.firstChild) {
            element.removeChild(element.firstChild);
        }
        
        element1 = document.getElementById("del4");
        while(element1.firstChild) {
            element1.removeChild(element1.firstChild);
        }
        
        element2 = document.getElementById("del5");
        while(element2.firstChild) {
            element2.removeChild(element2.firstChild);
        }
        
        element3 = document.getElementById("del6");
        while(element3.firstChild) {
            element3.removeChild(element3.firstChild);
        }


        } else if (document.getElementById('num').value == 1) {
            
            document.getElementById("del2").innerHTML = '<div class="wrap-input100 input100-select bg1"> <span class="label-input100">Child 1 details: *</span> <div class="wrap-input100 validate-input bg1" data-validate="Enter the First Name"> <span class="label-input100">FIRST NAME *</span> <input class="input100" type="text" name="name2" placeholder="Enter the First Name"> </div> <div class="wrap-input100 validate-input bg1" data-validate="Enter the Last Name"> <span class="label-input100">LAST NAME *</span> <input class="input100" type="text" name="lname2" placeholder="Enter the Last Name"> </div> <div class="wrap-contact100-form-radio"> <span class="label-input100">Gender</span> <div class="contact100-form-radio m-t-15"> <input class="input-radio100" id="radiom2" type="radio" name="gender2" value="Male" checked="checked"> <label class="label-radio100" for="radiom2">Male</label> </div> <div class="contact100-form-radio"> <input class="input-radio100" id="radiof2" type="radio" name="gender2" value="Female"> <label class="label-radio100" for="radiof2">Female</label> </div> </div> <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Enter the DOB"> <span class="label-input100">Date of Birth</span> <input class="input100" type="date" name="dob" placeholder="Enter The Date of Birth" " /> </div> </div> ';
            
            
            element = document.getElementById("del3");
            while(element.firstChild) {
                element.removeChild(element.firstChild);
            }
            
            element1 = document.getElementById("del4");
            while(element1.firstChild) {
                element1.removeChild(element1.firstChild);
            }
            
            element2 = document.getElementById("del5");
            while(element2.firstChild) {
                element2.removeChild(element2.firstChild);
            }
            
            element3 = document.getElementById("del6");
            while(element3.firstChild) {
                element3.removeChild(element3.firstChild);
            }
        
        } else if (document.getElementById('num').value == 2) {
            
            document.getElementById("del2").innerHTML = '<div class="wrap-input100 input100-select bg1"> <span class="label-input100">Child 1 details: *</span> <div class="wrap-input100 validate-input bg1" data-validate="Enter the First Name"> <span class="label-input100">FIRST NAME *</span> <input class="input100" type="text" name="name2" placeholder="Enter the First Name"> </div> <div class="wrap-input100 validate-input bg1" data-validate="Enter the Last Name"> <span class="label-input100">LAST NAME *</span> <input class="input100" type="text" name="lname2" placeholder="Enter the Last Name"> </div> <div class="wrap-contact100-form-radio"> <span class="label-input100">Gender</span> <div class="contact100-form-radio m-t-15"> <input class="input-radio100" id="radiom2" type="radio" name="gender2" value="Male" checked="checked"> <label class="label-radio100" for="radiom2">Male</label> </div> <div class="contact100-form-radio"> <input class="input-radio100" id="radiof2" type="radio" name="gender2" value="Female"> <label class="label-radio100" for="radiof2">Female</label> </div> </div> <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Enter the DOB"> <span class="label-input100">Date of Birth</span> <input class="input100" type="date" name="dob" placeholder="Enter The Date of Birth" " /> </div> </div> ';

            

            document.getElementById("del3").innerHTML = '<div class="wrap-input100 input100-select bg1"> <span class="label-input100">Child 2 details: *</span> <div class="wrap-input100 validate-input bg1" data-validate="Enter the First Name"> <span class="label-input100">FIRST NAME *</span> <input class="input100" type="text" name="name2" placeholder="Enter the First Name"> </div> <div class="wrap-input100 validate-input bg1" data-validate="Enter the Last Name"> <span class="label-input100">LAST NAME *</span> <input class="input100" type="text" name="lname2" placeholder="Enter the Last Name"> </div> <div class="wrap-contact100-form-radio"> <span class="label-input100">Gender</span> <div class="contact100-form-radio m-t-15"> <input class="input-radio100" id="radiom2" type="radio" name="gender2" value="Male" checked="checked"> <label class="label-radio100" for="radiom2">Male</label> </div> <div class="contact100-form-radio"> <input class="input-radio100" id="radiof2" type="radio" name="gender2" value="Female"> <label class="label-radio100" for="radiof2">Female</label> </div> </div> <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Enter the DOB"> <span class="label-input100">Date of Birth</span> <input class="input100" type="date" name="dob" placeholder="Enter The Date of Birth" " /> </div> </div> ';
            
            
            element1 = document.getElementById("del4");
            while(element1.firstChild) {
                element1.removeChild(element1.firstChild);
            }
            
            element2 = document.getElementById("del5");
            while(element2.firstChild) {
                element2.removeChild(element2.firstChild);
            }
            
            element3 = document.getElementById("del6");
            while(element3.firstChild) {
                element3.removeChild(element3.firstChild);
            }

        } else if (document.getElementById('num').value == 3) {
            
            document.getElementById("del2").innerHTML = '<div class="wrap-input100 input100-select bg1"> <span class="label-input100">Child 1 details: *</span> <div class="wrap-input100 validate-input bg1" data-validate="Enter the First Name"> <span class="label-input100">FIRST NAME *</span> <input class="input100" type="text" name="name2" placeholder="Enter the First Name"> </div> <div class="wrap-input100 validate-input bg1" data-validate="Enter the Last Name"> <span class="label-input100">LAST NAME *</span> <input class="input100" type="text" name="lname2" placeholder="Enter the Last Name"> </div> <div class="wrap-contact100-form-radio"> <span class="label-input100">Gender</span> <div class="contact100-form-radio m-t-15"> <input class="input-radio100" id="radiom2" type="radio" name="gender2" value="Male" checked="checked"> <label class="label-radio100" for="radiom2">Male</label> </div> <div class="contact100-form-radio"> <input class="input-radio100" id="radiof2" type="radio" name="gender2" value="Female"> <label class="label-radio100" for="radiof2">Female</label> </div> </div> <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Enter the DOB"> <span class="label-input100">Date of Birth</span> <input class="input100" type="date" name="dob" placeholder="Enter The Date of Birth" " /> </div> </div> ';

            

            document.getElementById("del3").innerHTML = '<div class="wrap-input100 input100-select bg1"> <span class="label-input100">Child 2 details: *</span> <div class="wrap-input100 validate-input bg1" data-validate="Enter the First Name"> <span class="label-input100">FIRST NAME *</span> <input class="input100" type="text" name="name2" placeholder="Enter the First Name"> </div> <div class="wrap-input100 validate-input bg1" data-validate="Enter the Last Name"> <span class="label-input100">LAST NAME *</span> <input class="input100" type="text" name="lname2" placeholder="Enter the Last Name"> </div> <div class="wrap-contact100-form-radio"> <span class="label-input100">Gender</span> <div class="contact100-form-radio m-t-15"> <input class="input-radio100" id="radiom2" type="radio" name="gender2" value="Male" checked="checked"> <label class="label-radio100" for="radiom2">Male</label> </div> <div class="contact100-form-radio"> <input class="input-radio100" id="radiof2" type="radio" name="gender2" value="Female"> <label class="label-radio100" for="radiof2">Female</label> </div> </div> <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Enter the DOB"> <span class="label-input100">Date of Birth</span> <input class="input100" type="date" name="dob" placeholder="Enter The Date of Birth" " /> </div> </div> ';



            document.getElementById("del4").innerHTML = '<div class="wrap-input100 input100-select bg1"> <span class="label-input100">Child 3 details: *</span> <div class="wrap-input100 validate-input bg1" data-validate="Enter the First Name"> <span class="label-input100">FIRST NAME *</span> <input class="input100" type="text" name="name2" placeholder="Enter the First Name"> </div> <div class="wrap-input100 validate-input bg1" data-validate="Enter the Last Name"> <span class="label-input100">LAST NAME *</span> <input class="input100" type="text" name="lname2" placeholder="Enter the Last Name"> </div> <div class="wrap-contact100-form-radio"> <span class="label-input100">Gender</span> <div class="contact100-form-radio m-t-15"> <input class="input-radio100" id="radiom2" type="radio" name="gender2" value="Male" checked="checked"> <label class="label-radio100" for="radiom2">Male</label> </div> <div class="contact100-form-radio"> <input class="input-radio100" id="radiof2" type="radio" name="gender2" value="Female"> <label class="label-radio100" for="radiof2">Female</label> </div> </div> <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Enter the DOB"> <span class="label-input100">Date of Birth</span> <input class="input100" type="date" name="dob" placeholder="Enter The Date of Birth" " /> </div> </div> ';
            
            
            element2 = document.getElementById("del5");
            while(element2.firstChild) {
                element2.removeChild(element2.firstChild);
            }
            
            element3 = document.getElementById("del6");
            while(element3.firstChild) {
                element3.removeChild(element3.firstChild);
            }
        } else if (document.getElementById('num').value == 4) {
            
            document.getElementById("del2").innerHTML = '<div class="wrap-input100 input100-select bg1"> <span class="label-input100">Child 1 details: *</span> <div class="wrap-input100 validate-input bg1" data-validate="Enter the First Name"> <span class="label-input100">FIRST NAME *</span> <input class="input100" type="text" name="name2" placeholder="Enter the First Name"> </div> <div class="wrap-input100 validate-input bg1" data-validate="Enter the Last Name"> <span class="label-input100">LAST NAME *</span> <input class="input100" type="text" name="lname2" placeholder="Enter the Last Name"> </div> <div class="wrap-contact100-form-radio"> <span class="label-input100">Gender</span> <div class="contact100-form-radio m-t-15"> <input class="input-radio100" id="radiom2" type="radio" name="gender2" value="Male" checked="checked"> <label class="label-radio100" for="radiom2">Male</label> </div> <div class="contact100-form-radio"> <input class="input-radio100" id="radiof2" type="radio" name="gender2" value="Female"> <label class="label-radio100" for="radiof2">Female</label> </div> </div> <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Enter the DOB"> <span class="label-input100">Date of Birth</span> <input class="input100" type="date" name="dob" placeholder="Enter The Date of Birth" " /> </div> </div> ';

            

            document.getElementById("del3").innerHTML = '<div class="wrap-input100 input100-select bg1"> <span class="label-input100">Child 2 details: *</span> <div class="wrap-input100 validate-input bg1" data-validate="Enter the First Name"> <span class="label-input100">FIRST NAME *</span> <input class="input100" type="text" name="name2" placeholder="Enter the First Name"> </div> <div class="wrap-input100 validate-input bg1" data-validate="Enter the Last Name"> <span class="label-input100">LAST NAME *</span> <input class="input100" type="text" name="lname2" placeholder="Enter the Last Name"> </div> <div class="wrap-contact100-form-radio"> <span class="label-input100">Gender</span> <div class="contact100-form-radio m-t-15"> <input class="input-radio100" id="radiom2" type="radio" name="gender2" value="Male" checked="checked"> <label class="label-radio100" for="radiom2">Male</label> </div> <div class="contact100-form-radio"> <input class="input-radio100" id="radiof2" type="radio" name="gender2" value="Female"> <label class="label-radio100" for="radiof2">Female</label> </div> </div> <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Enter the DOB"> <span class="label-input100">Date of Birth</span> <input class="input100" type="date" name="dob" placeholder="Enter The Date of Birth" " /> </div> </div> ';



            document.getElementById("del4").innerHTML = '<div class="wrap-input100 input100-select bg1"> <span class="label-input100">Child 3 details: *</span> <div class="wrap-input100 validate-input bg1" data-validate="Enter the First Name"> <span class="label-input100">FIRST NAME *</span> <input class="input100" type="text" name="name2" placeholder="Enter the First Name"> </div> <div class="wrap-input100 validate-input bg1" data-validate="Enter the Last Name"> <span class="label-input100">LAST NAME *</span> <input class="input100" type="text" name="lname2" placeholder="Enter the Last Name"> </div> <div class="wrap-contact100-form-radio"> <span class="label-input100">Gender</span> <div class="contact100-form-radio m-t-15"> <input class="input-radio100" id="radiom2" type="radio" name="gender2" value="Male" checked="checked"> <label class="label-radio100" for="radiom2">Male</label> </div> <div class="contact100-form-radio"> <input class="input-radio100" id="radiof2" type="radio" name="gender2" value="Female"> <label class="label-radio100" for="radiof2">Female</label> </div> </div> <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Enter the DOB"> <span class="label-input100">Date of Birth</span> <input class="input100" type="date" name="dob" placeholder="Enter The Date of Birth" " /> </div> </div> ';



            document.getElementById("del5").innerHTML = '<div class="wrap-input100 input100-select bg1"> <span class="label-input100">Child 4 details: *</span> <div class="wrap-input100 validate-input bg1" data-validate="Enter the First Name"> <span class="label-input100">FIRST NAME *</span> <input class="input100" type="text" name="name2" placeholder="Enter the First Name"> </div> <div class="wrap-input100 validate-input bg1" data-validate="Enter the Last Name"> <span class="label-input100">LAST NAME *</span> <input class="input100" type="text" name="lname2" placeholder="Enter the Last Name"> </div> <div class="wrap-contact100-form-radio"> <span class="label-input100">Gender</span> <div class="contact100-form-radio m-t-15"> <input class="input-radio100" id="radiom2" type="radio" name="gender2" value="Male" checked="checked"> <label class="label-radio100" for="radiom2">Male</label> </div> <div class="contact100-form-radio"> <input class="input-radio100" id="radiof2" type="radio" name="gender2" value="Female"> <label class="label-radio100" for="radiof2">Female</label> </div> </div> <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Enter the DOB"> <span class="label-input100">Date of Birth</span> <input class="input100" type="date" name="dob" placeholder="Enter The Date of Birth" " /> </div> </div> ';
            
            element2 = document.getElementById("del6");
            while(element2.firstChild) {
                element2.removeChild(element2.firstChild);
            }
        } else if (document.getElementById('num').value == 5) {
            
            document.getElementById("del2").innerHTML = '<div class="wrap-input100 input100-select bg1"> <span class="label-input100">Child 1 details: *</span> <div class="wrap-input100 validate-input bg1" data-validate="Enter the First Name"> <span class="label-input100">FIRST NAME *</span> <input class="input100" type="text" name="name2" placeholder="Enter the First Name"> </div> <div class="wrap-input100 validate-input bg1" data-validate="Enter the Last Name"> <span class="label-input100">LAST NAME *</span> <input class="input100" type="text" name="lname2" placeholder="Enter the Last Name"> </div> <div class="wrap-contact100-form-radio"> <span class="label-input100">Gender</span> <div class="contact100-form-radio m-t-15"> <input class="input-radio100" id="radiom2" type="radio" name="gender2" value="Male" checked="checked"> <label class="label-radio100" for="radiom2">Male</label> </div> <div class="contact100-form-radio"> <input class="input-radio100" id="radiof2" type="radio" name="gender2" value="Female"> <label class="label-radio100" for="radiof2">Female</label> </div> </div> <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Enter the DOB"> <span class="label-input100">Date of Birth</span> <input class="input100" type="date" name="dob" placeholder="Enter The Date of Birth" " /> </div> </div> ';

            

            document.getElementById("del3").innerHTML = '<div class="wrap-input100 input100-select bg1"> <span class="label-input100">Child 2 details: *</span> <div class="wrap-input100 validate-input bg1" data-validate="Enter the First Name"> <span class="label-input100">FIRST NAME *</span> <input class="input100" type="text" name="name2" placeholder="Enter the First Name"> </div> <div class="wrap-input100 validate-input bg1" data-validate="Enter the Last Name"> <span class="label-input100">LAST NAME *</span> <input class="input100" type="text" name="lname2" placeholder="Enter the Last Name"> </div> <div class="wrap-contact100-form-radio"> <span class="label-input100">Gender</span> <div class="contact100-form-radio m-t-15"> <input class="input-radio100" id="radiom2" type="radio" name="gender2" value="Male" checked="checked"> <label class="label-radio100" for="radiom2">Male</label> </div> <div class="contact100-form-radio"> <input class="input-radio100" id="radiof2" type="radio" name="gender2" value="Female"> <label class="label-radio100" for="radiof2">Female</label> </div> </div> <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Enter the DOB"> <span class="label-input100">Date of Birth</span> <input class="input100" type="date" name="dob" placeholder="Enter The Date of Birth" " /> </div> </div> ';



            document.getElementById("del4").innerHTML = '<div class="wrap-input100 input100-select bg1"> <span class="label-input100">Child 3 details: *</span> <div class="wrap-input100 validate-input bg1" data-validate="Enter the First Name"> <span class="label-input100">FIRST NAME *</span> <input class="input100" type="text" name="name2" placeholder="Enter the First Name"> </div> <div class="wrap-input100 validate-input bg1" data-validate="Enter the Last Name"> <span class="label-input100">LAST NAME *</span> <input class="input100" type="text" name="lname2" placeholder="Enter the Last Name"> </div> <div class="wrap-contact100-form-radio"> <span class="label-input100">Gender</span> <div class="contact100-form-radio m-t-15"> <input class="input-radio100" id="radiom2" type="radio" name="gender2" value="Male" checked="checked"> <label class="label-radio100" for="radiom2">Male</label> </div> <div class="contact100-form-radio"> <input class="input-radio100" id="radiof2" type="radio" name="gender2" value="Female"> <label class="label-radio100" for="radiof2">Female</label> </div> </div> <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Enter the DOB"> <span class="label-input100">Date of Birth</span> <input class="input100" type="date" name="dob" placeholder="Enter The Date of Birth" " /> </div> </div> ';



            document.getElementById("del5").innerHTML = '<div class="wrap-input100 input100-select bg1"> <span class="label-input100">Child 4 details: *</span> <div class="wrap-input100 validate-input bg1" data-validate="Enter the First Name"> <span class="label-input100">FIRST NAME *</span> <input class="input100" type="text" name="name2" placeholder="Enter the First Name"> </div> <div class="wrap-input100 validate-input bg1" data-validate="Enter the Last Name"> <span class="label-input100">LAST NAME *</span> <input class="input100" type="text" name="lname2" placeholder="Enter the Last Name"> </div> <div class="wrap-contact100-form-radio"> <span class="label-input100">Gender</span> <div class="contact100-form-radio m-t-15"> <input class="input-radio100" id="radiom2" type="radio" name="gender2" value="Male" checked="checked"> <label class="label-radio100" for="radiom2">Male</label> </div> <div class="contact100-form-radio"> <input class="input-radio100" id="radiof2" type="radio" name="gender2" value="Female"> <label class="label-radio100" for="radiof2">Female</label> </div> </div> <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Enter the DOB"> <span class="label-input100">Date of Birth</span> <input class="input100" type="date" name="dob" placeholder="Enter The Date of Birth" " /> </div> </div> ';



            document.getElementById("del6").innerHTML = '<div class="wrap-input100 input100-select bg1"> <span class="label-input100">Child 5 details: *</span> <div class="wrap-input100 validate-input bg1" data-validate="Enter the First Name"> <span class="label-input100">FIRST NAME *</span> <input class="input100" type="text" name="name2" placeholder="Enter the First Name"> </div> <div class="wrap-input100 validate-input bg1" data-validate="Enter the Last Name"> <span class="label-input100">LAST NAME *</span> <input class="input100" type="text" name="lname2" placeholder="Enter the Last Name"> </div> <div class="wrap-contact100-form-radio"> <span class="label-input100">Gender</span> <div class="contact100-form-radio m-t-15"> <input class="input-radio100" id="radiom2" type="radio" name="gender2" value="Male" checked="checked"> <label class="label-radio100" for="radiom2">Male</label> </div> <div class="contact100-form-radio"> <input class="input-radio100" id="radiof2" type="radio" name="gender2" value="Female"> <label class="label-radio100" for="radiof2">Female</label> </div> </div> <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Enter the DOB"> <span class="label-input100">Date of Birth</span> <input class="input100" type="date" name="dob" placeholder="Enter The Date of Birth" " /> </div> </div> ';



        }

     }



/*	function prep(){
        
        var pre = 1020.00;
        
        if (document.getElementById('type').value == "Individual"){
            
            document.getElementById("amount").value = (pre).toFixed(2);
            document.getElementById("amnt").innerHTML = 'AMOUNT: Rs ' + document.getElementById("amount").value;
            
        } else if (document.getElementById('type').value == "Married Couple"){
            
            document.getElementById("amount").value = (pre * 2).toFixed(2);
            document.getElementById("amnt").innerHTML = 'AMOUNT: Rs ' + document.getElementById("amount").value;

        } else if (document.getElementById('type').value == "Family" || document.getElementById('type').value == "Group"){
            
            switch(document.getElementById('num').value) {
                
                case "2":   document.getElementById("amount").value = (pre * 2).toFixed(2);

                            document.getElementById("amnt").innerHTML = 'AMOUNT: Rs ' + document.getElementById("amount").value;

                            break;



                case "3":   document.getElementById("amount").value = (pre * 3).toFixed(2);

                            document.getElementById("amnt").innerHTML = 'AMOUNT: Rs ' + document.getElementById("amount").value;

                            break;



                case "4":   document.getElementById("amount").value = (pre * 4).toFixed(2);

                            document.getElementById("amnt").innerHTML = 'AMOUNT: Rs ' + document.getElementById("amount").value;

                            break;



                case "5":   document.getElementById("amount").value = (pre * 5).toFixed(2);

                            document.getElementById("amnt").innerHTML = 'AMOUNT: Rs ' + document.getElementById("amount").value;

                            break;   

                            

                case "6":   document.getElementById("amount").value = (pre * 6).toFixed(2);

                            document.getElementById("amnt").innerHTML = 'AMOUNT: Rs ' + document.getElementById("amount").value;

                            break;

            }

        }

    }       */

    

    /*  Personal Details HTML

    <div class="w-full dis-none js-show-num3" id="del3">	

					<!--	<div class="wrap-input100 input100-select bg1">

							<span class="label-input100">Person 3 details: *</span>

	

							<div class="wrap-input100 validate-input bg1" data-validate="Please Type the Full Name">

									<span class="label-input100">FULL NAME *</span>

									<input class="input100" type="text" name="name3" placeholder="Enter the Full Name">

								</div>



								<div class="wrap-contact100-form-radio">

										<span class="label-input100">Gender</span>

					

										<div class="contact100-form-radio m-t-15">

											<input class="input-radio100" id="radiom3" type="radio" name="gender3" value="Male" checked="checked">

											<label class="label-radio100" for="radiom3">

												Male

											</label>

										</div>

					

										<div class="contact100-form-radio">

											<input class="input-radio100" id="radiof3" type="radio" name="gender3" value="Female">

											<label class="label-radio100" for="radiof3">

												Female

											</label>

										</div>

					

								</div>

				

								<div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Enter the Email (e@a.x)">

									<span class="label-input100">Email *</span>

									<input class="input100" type="text" name="email3" placeholder="Enter the Email ">

								</div>

				

								<div class="wrap-input100 bg1 rs1-wrap-input100">

									<span class="label-input100">Mobile Number</span>

									<input class="input100" type="tel" name="phone3" placeholder="Enter Mobile Phone">

								</div>

				

								<div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Please Enter the Age">

									<span class="label-input100">Age *</span>

									<input class="input100" type="number" name="age3" id="age3" placeholder="Enter the Age ">

								</div>

				

								<div class="wrap-input100 bg1 rs1-wrap-input100">

									<span class="label-input100">City of Residence *</span>

									<input class="input100" type="text" name="city3" placeholder="Current city of Residence">

								</div>

							

					</div> -->

                </div>

                <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Enter the DOB"> <span class="label-input100">Date of Birth</span> <input class="input100" type="date" name="dob" placeholder="Enter The Date of Birth" " /> </div>

    */