<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Welcome</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<%--    css--%>
    <link rel="stylesheet" href="CSS/style.css">
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <%--js--%>
    <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.bootcss.com/moment.js/2.24.0/moment-with-locales.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>






</head>
<body>
    <div>
        <div class="navbar navbar-duomi navbar-static-top" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#" id="logo">Welcome!</a>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="single-travel-boxes">
                        <div id="desc-tabs" class="desc-tabs">
                            <ul class="nav nav-tabs" role="tablist">
                                <li role="presentation" class="active">
                                    <a href="#flights" aria-controls="flights" role="tab" data-toggle="tab">
                                        <i class="glyphicon glyphicon-plane"></i>
                                        航班
                                    </a>
                                </li>
                            </ul>
                            <form role="form" action="${pageContext.request.contextPath}/WelcomeServlet" method="post">
                            <div class="tab-content" >
                                <div role="tabpanel" class="tab-pane active fade in" id="flights">
                                    <div class="tab-para">
                                        <div class="radios-trip col-md-12 row">
                                            <div class="col-md-1">
                                                <%--@declare id="roundtrip"--%><input type="radio" id="ronudtrip"  name="trip" value="roundtrip">
                                                <label for="roundtrip">往返</label>
                                            </div>
                                            <div class="col-md-1">
                                                <input type="radio" id="singletrip"  name="trip" value="singletrip">
                                                <label for="singletrip">单程</label>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-4 col-md-4 col-sm-12">
                                                <div class="single-tab-select-box">
                                                    <h2>出发地</h2>
                                                    <div >
                                                        <input type="text" class="form-control" name="from" placeholder="输入出发地">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-2 col-md-3 col-sm-4">
                                                <div class="single-tab-select-box form-group">
                                                    <h2>出发日期</h2>
                                                    <div class='input-group date' id='datetimepicker1'>
                                                        <input type='text' class="form-control datepicker" name="startTime" />
                                                        <span class="input-group-addon">
                                                            <span class="glyphicon glyphicon-calendar"></span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-2 col-md-3 col-sm-4">
                                                <div class="single-tab-select-box">
                                                    <h2>回程日期</h2>
                                                    <div class='input-group date' id='datetimepicker2'>
                                                        <input type='text' class="form-control datepicker" id="endTime" name="endTime" dateEndGeStart="#startTime"/>
                                                        <span class="input-group-addon">
                                                            <span class="glyphicon glyphicon-calendar"></span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-2 col-md-1 col-sm-4">
                                                <div class="single-tab-select-box">
                                                    <h2>数量</h2>
                                                    <div class="form-group">
                                                        <select class="form-control " name="amount">
                                                            <option value="default">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                            <option value="5">5</option>
                                                            <option value="6">6</option>
                                                            <option value="7">7</option>
                                                            <option value="8">8</option>
                                                            <option value="9">9</option>
                                                            <option value="10">10</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-4 col-md-4 col-sm-12">
                                                <div class="single-tab-select-box">
                                                    <h2>目的地</h2>
                                                    <div >
                                                        <input type="text" class="form-control" name="to" placeholder="输入目的地">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-2 col-md-2 col-sm-4">
                                                <div class="single-tab-select-box">
                                                    <h2>机型</h2>
                                                    <div class="form-group">
                                                        <select class="form-control ">
                                                            <option value="default">选择机型</option>
                                                            <option value="A">大型客机</option>
                                                            <option value="B">中型客机</option>
                                                            <option value="C">小型客机</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-2 col-md-2 col-sm-4">
                                                <div class="single-tab-select-box">
                                                    <h2>航空公司</h2>
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" name="company" placeholder="请输入航空公司">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <br><br><br>
                                                <div>
                                                    <input  class="btn btn-info form-control" type="submit" value="查询">
                                                </div>
                                            </div><!--/.col-->
                                        </div><!--/.row-->

                                    </div>
                                </div><!--/.tabpannel-->
                            </div><!--/.tab content-->
                            </form>
                        </div><!--/.desc-tabs-->
                    </div><!--/.single-travel-box-->
                </div><!--/.col-->
            </div><!--/.row-->
        </div><!--/.container-->
    </div>
</body>
<script type="text/javascript">
    $(function () {
        var picker1 = $('#datetimepicker1').datetimepicker({
            format: 'YYYY-MM-DD',
            locale: moment.locale('zh-cn'),
            minDate: new Date()
        });
        var picker2 = $('#datetimepicker2').datetimepicker({
            format: 'YYYY-MM-DD',
            locale: moment.locale('zh-cn'),
        });
        // 动态设置最小值
        picker1.on("dp.change", function (e) {
            var beginTimeStart =e.date.add(30,'minutes');
            picker2.data("DateTimePicker").minDate(beginTimeStart);
        });
    });
</script>
</html>


