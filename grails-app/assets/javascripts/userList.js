

function searchNameOrEmail() {
    var search = $("#search").val();
    $("#tableValue").html("");
    if(search == "")
    {

        $.ajax(
            {
                type:"post",
                dataType:"json",
                url: "/webPortal/getList",
                success:function (data) {
                    var dataSet = ""
                    for(v of data)
                    {
                        var d =new Date(v["birthdate"])

                        dataSet += '<tr>\n' +
                            '                    <td>'+v["firstName"]+' '+v["lastName"]+'</td>\n' +
                            '                    <td>'+v["address"]+'</td>\n' +
                            '                    <td>'+v["email"]+'</td>\n' +
                            '                    <td>'+v["phone"]+'</td>\n' +
                            '                    <td>'+d.getDate()+'-'+d.getMonth()+'-'+d.getFullYear()+'</td>\n' +
                            '                </tr>'

                    }
                    $("#tableValue").html(dataSet);
                }
            }
        );
    }
    else if (/[a-z][a-z\.0-9]+@[a-z0-9]+\.[a-z]{2,4}$/.test(search))
    {
        $.ajax(
            {
                type:"post",
                dataType:"json",
                url: "/webPortal/getByEmail?search="+search,
                success:function (v) {
                    var dataSet = ""

                        var d =new Date(v["birthdate"])

                        dataSet += '<tr>\n' +
                            '                    <td>'+v["firstName"]+' '+v["lastName"]+'</td>\n' +
                            '                    <td>'+v["address"]+'</td>\n' +
                            '                    <td>'+v["email"]+'</td>\n' +
                            '                    <td>'+v["phone"]+'</td>\n' +
                            '                    <td>'+d.getDate()+'-'+d.getMonth()+'-'+d.getFullYear()+'</td>\n' +
                            '                </tr>'



                    $("#tableValue").html(dataSet);
                }
            }
        );
    }
    else
    {
        $.ajax(
            {
                type:"post",
                dataType:"json",
                url: "/webPortal/getByName?search="+search,
                success:function (data) {

                    var dataSet = ""
                    for(v of data)
                    {
                        var d =new Date(v["birthdate"])

                        dataSet += '<tr>\n' +
                            '                    <td>'+v["firstName"]+' '+v["lastName"]+'</td>\n' +
                            '                    <td>'+v["address"]+'</td>\n' +
                            '                    <td>'+v["email"]+'</td>\n' +
                            '                    <td>'+v["phone"]+'</td>\n' +
                            '                    <td>'+d.getDate()+'-'+d.getMonth()+'-'+d.getFullYear()+'</td>\n' +
                            '                </tr>'

                    }
                    $("#tableValue").html(dataSet);
                }
            }
        );
    }

};

