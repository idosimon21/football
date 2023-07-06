function detectedField1()
{
    document.getElementById("query1").innerHTML =
        "<input type ='text' name = 'value1'/>";
    if (document.getElementById("field1").value == "gender") {
        document.getElementById("query1").innerHTML =
            "<input type ='radio' name='value1' value='male' checked='checked' /> male" +
            "<input type ='radio' name='value1' value='female' /> female";

    }
    if ((document.getElementById("field1").value == "yearBorn")||
        (document.getElementById("field1").value == "fromYear")) {
        var yearS = "<select name='value1'><option value='0'>Choose year</option>";
        var currentY = new Date().getFullYear();
        var fromY = currentY - 60;
        var toY = currentY - 12;
        for (var i = fromY; i <= toY; i++)
            yearS += "<option value='" + i + "'>" + i + "</option>";
        yearS += "</select>";
        document.getElementById("query1").innerHTML = yearS;


    }
    if (document.getElementById("field1").value == "prefix") {
        var prefixS = "<select name='value1'>";
        prefixS += "<option value ='02'> 02</option>";
        prefixS += "<option value ='03'> 03</option>";
        prefixS += "<option value ='04'> 04</option>";
        prefixS += "<option value ='08'> 08</option>";
        prefixS += "<option value ='09'> 09</option>";
        prefixS += "<option value ='050'> 050</option>";
        prefixS += "<option value ='052'> 052</option>";
        prefixS += "<option value ='053'> 053</option>";
        prefixS += "<option value ='054'> 054</option>";
        prefixS += "<option value ='055'> 055</option>";
        prefixS += "<option value ='077'> 077</option>";
        prefixS += "</select>";
        document.getElementById("query1").innerHTML = prefixS;
    }
    if (document.getElementById("field1").value == "hobby") {
        var hobbys = "<select name ='value1'>";
        hobbys += "<option value ='1'>football</option>";
        hobbys += "<option value ='2'>tennis</option>";
        hobbys += "<option value ='3'>compgame</option>";
        hobbys += "<option value ='4'>dance</option>";
        hobbys += "</select>";
        document.getElementById("query1").innerHTML = hobbys;
    }
}

        function detectedField2()
{
    document.getElementById("query2").innerHTML =
        "<input type ='text' name = 'value2'/>";
    if (document.getElementById("field2").value == "gender") {
        document.getElementById("query2").innerHTML =
            "<input type ='radio' name='value2' value='male' checked='checked' /> male" +
            "<input type ='radio' name='value2' value='female' /> female";

    }
    if ((document.getElementById("field2").value == "yearBorn")||
        (document.getElementById("field2").value == "fromYear")) {
        var yearS = "<select name='value2'><option value='0'>Choose year</option>";
        var currentY = new Date().getFullYear();
        var fromY = currentY - 60;
        var toY = currentY - 12;
        for (var i = fromY; i <= toY; i++)
            yearS += "<option value='" + i + "'>" + i + "</option>";
        yearS += "</select>";
        document.getElementById("query2").innerHTML = yearS;


    }
    if (document.getElementById("field2").value == "prefix") {
        var prefixS = "<select name='value2'>";
        prefixS += "<option value ='02'> 02</option>";
        prefixS += "<option value ='03'> 03</option>";
        prefixS += "<option value ='04'> 04</option>";
        prefixS += "<option value ='08'> 08</option>";
        prefixS += "<option value ='09'> 09</option>";
        prefixS += "<option value ='050'> 050</option>";
        prefixS += "<option value ='052'> 052</option>";
        prefixS += "<option value ='053'> 053</option>";
        prefixS += "<option value ='054'> 054</option>";
        prefixS += "<option value ='055'> 055</option>";
        prefixS += "<option value ='077'> 077</option>";
        prefixS += "</select>";
        document.getElementById("query2").innerHTML = prefixS;
    }
    if (document.getElementById("field2").value == "hobby") {
        var hobbys = "<select name ='value2'>";
        hobbys += "<option value ='1'>football</option>";
        hobbys += "<option value ='2'>tennis</option>";
        hobbys += "<option value ='3'>compgame</option>";
        hobbys += "<option value ='4'>dance</option>";
        hobbys += "</select>";
        document.getElementById("query2").innerHTML = hobbys;
    }
}