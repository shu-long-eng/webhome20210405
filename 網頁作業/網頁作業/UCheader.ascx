<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCheader.ascx.cs" Inherits="網頁作業.UCheader" %>

         <div>
                <nav class="navbar navbar-expand-lg navbar-light bg-primary">
                    <a class="navbar-brand" href="#">
                    <h1><img src="img/logo.png" />Mysite</h1>
                    </a>
                   
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#myNav"
                        aria-controls="myNav" aria-expanded="false" aria-label="Toggle navigation">
                         <span class="navbar-toggler-icon" ></span>
                    </button>
                   
                    <div id="myNav" class="collapse navbar-collapse">
                        <ul class="navbar-nav">
                            <li class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" id="myLink"
                                    data-toggle="dropdown" aria-haspopup="false" aria-expanded="false">第一頁</a>
                                <div class="dropdown-menu" aria-labelledby="myLink" id="link">
                                    <a class="dropdown-item" href="#">裡面沒東西</a>
                                    <a class="dropdown-item" href="#">這裡也沒有</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link">第二頁</a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link">第三頁</a>
                            </li>
                        </ul>
                    </div>
                     <span><a href="WebForm1.aspx" style="color:black;">登入</a></span>
                </nav>
            </div>
            <div id="leftSide">
                <ul>
                    <li><a href="WebForm2.aspx">WebForm2.aspx</a></li>
                    <li><a href="WebForm3.aspx">WebForm3.aspx</a></li>
                    <li>頁面3</li>
                </ul>
            </div>