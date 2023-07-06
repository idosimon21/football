function detectedField() {
    document.getElementById("query").innerHTML =
        "<input type ='text' name = 'value'/>";
    if (document.getElementById("field").value == "gender")
    {
        document.getElementById("query").innerHTML =
            "<input type ='radio' name='value' value='male' checked='checked' /> male" +
            "<input type ='radio' name='value' value='female' /> female";

    }
    if (document.getElementById("field").value == "yearBorn") {
        var yearS = "<select name='value'><option value='0'>Choose year</option>";
        var currentY = new Date().getFullYear();
        var fromY = currentY - 60;
        var toY = currentY - 12;
        for (var i = fromY; i <= toY; i++)
            yearS += "<option value='" + i + "'>" + i + "</option>";
        yearS += "</select>";
        document.getElementById("query").innerHTML = yearS;


    }
    if (document.getElementById("field").value == "prefix") {
        var prefixS = "<select name='value'>";
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
        document.getElementById("query").innerHTML = prefixS;
    }
    if (document.getElementById("field").value == "hobby") {
        var hobbys = "<select name ='value'>";
        hobbys += "<option value ='1'>football</option>";
        hobbys += "<option value ='2'>tennis</option>";
        hobbys += "<option value ='3'>compgame</option>";
        hobbys += "<option value ='4'>dance</option>";
        hobbys += "</select>";
        document.getElementById("query").innerHTML = hobbys;
    }
}