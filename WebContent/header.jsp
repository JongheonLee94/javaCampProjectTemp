<%@ page contentType="text/html;charset=UTF-8" language="java" %>

  <header>
    <nav class="navbar" style="border-width: 0px 0px 2px; border-color: rgb(149, 99, 0); border-style: solid;">
      <div class="container-fluid" style="margin-top: 10px; margin-bottom:15px;">
        <div class="row">
        </div>
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false" style="">
            <span class="sr-only"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
          </button>
          <div>
            <div>
            </div>
            <a class="navbar-brand" href="index.jsp" style="margin-left:115px; padding-right:0;margin-top:5">제주<img style="float:right;margin-top: -14px;"src="/JSP/images/logo2.png" width="35px"></a>
          </div>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
            <li><a href="/JSP/club/clubBoard.jsp" style="">더모임<span class="sr-only"></span></a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li class="dropdown" style="margin-right: 85px;"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="padding:0px">
                <div "><span class="caret"></span>
                  <img src="/JSP/images/icon_dolharubang.png" style="width:55px;padding: 0px; ">
                </div>
              </a>
              <ul id="statusBox" class="dropdown-menu" style="">
                <li><a href="/JSP/login/login.jsp">로그인</a></li>
                <li><a href="/JSP/join/join.jsp">회원가입</a></li>
                <li style="height: 80px; display: flex; flex-direction: row;">
                  <div style="width:40%;">
                    <div id="nickname"></div>
                  </div>
                  <div>
                    <ul id="statusDetail">
                      <li>user12464083</li>
                      <li>hyj50359864@gmail.com</li>
                      <li><button class="btn btn-warning">Edit profile</button></li>
                    </ul>
                  </div>
                </li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
