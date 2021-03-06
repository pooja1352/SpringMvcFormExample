<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<style>

$textColor: #9a9ca2;
$lightGray: #eee;
$blue: #7daee9;
$darkBlue: shade($blue, 10%);
$magenta: #de7cb9;
$darkMagenta: shade($magenta, 10%);
$green: #7fd373;
$darkGreen: shade($green, 10%);
$red: #f66d64;
$darkRed: shade($red, 10%);

@mixin buttonColor($primary, $secondary) {
  &:before {
    background-color:$primary;
    @include box-shadow(0 4px $secondary);
  }
  
  &:hover {
    &:before {
      background-color:$secondary;
      @include box-shadow(0 4px shade($secondary, 15%));
    } 
  }
  
  &:active {
    &:before {
      @include box-shadow(0 2px shade($secondary, 15%));   
    }
  }
}

* {
  @include box-sizing(border-box);
}

body {
  background:#ddd;
  margin-top:30px;
}

.button {
  position:relative;
  margin:0 auto 15px;
  display:block;
  width:450px; height:82px;
  text-decoration:none;
  background-color:#fafafa;
  color:#131313;
  @include border-radius(10px);
  @include box-shadow(
    0 4px #e7e7e7,
    0 6px 1px #d0d0d2
  );
  
  * { @include transition(all linear .15s);}
  
  .title {
    display:block;
    padding:20px 0 0 20px; 
    font-size:1.25em;
  }
  
  .details {
    display:block;
    clear:both;
    padding:5px 0 20px 23px; 
    font-size:0.85em;
    color:$textColor;
  }
  
  .price {
    position:absolute;
    top:0; right:0;
    font: {
      family: 'Quattrocento Sans', sans-serif;
      size:2.5em;
      weight:700;
    }
    color:$textColor;
    
    strong {
      display:inline-block;
      height:100%; width:36px;
      line-height:82px;
      font-size:1.25em;
      text-align:center;
      background-color:$lightGray;
      color:#ddd;
      @include border-radius(0 10px 10px 0);   
      @include text-shadow(0 -1px darken($textColor, 5%));
      @include box-shadow(0 4px #d7d4d4);
    }
  } 
  
  &:before {
    position:absolute;
    content:"";
    display:block;
    width:6px; height:100%;
    @include border-radius(10px 0 0 10px);
    @include transition(all linear .075s);
  }
  
  &.blue {
    @include buttonColor($blue, $darkBlue);
  }
  
  &.magenta {
     @include buttonColor($magenta, $darkMagenta);
  } 
  
  &.green {
     @include buttonColor($green, $darkGreen);
  } 
  
  &.red {
     @include buttonColor($red, $darkRed);
  } 
  
  &:hover {
    @include box-shadow(
      0 4px shade(#e7e7e7, 2%),
      0 6px 1px shade(#d0d0d2, 2%)
    );
      
    .price {
      strong {
        background-color:shade($lightGray, 2%);
        @include box-shadow(0 4px shade(#d7d4d4, 2%));    
      }
    }
  } 
  
  &:active {
    top:1px;
    
    @include box-shadow(
      0 2px shade(#e7e7e7, 2%),
      0 4px 1px shade(#d0d0d2, 2%)
    );
    
    .price {
      strong {
        background-color:shade($lightGray, 2%);
        @include box-shadow(0 2px shade(#d7d4d4, 2%));    
      }
    }
    
  }
  
} 


</style>

</head>
<body>

<div class="pull-left">
<h4>Welcome&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${userName}</h4>
</div>

<div>
<a href="#" class="button blue">
  <strong class="title">Teach me to file my taxes</strong>
  <span class="details">
      Teach Me <i class="icon-time"></i> exp:
    <strong>Mar 12, 2013</strong>
  </span>
  <span class="price">
    $30 <strong>&rsaquo;</strong>
  </span>
</a>

<a href="#" class="button magenta">
  <strong class="title">Tutor my 2 daughters</strong>
  <span class="details">
      Other <i class="icon-time"></i> exp:
    <strong>Apr 2, 2013</strong>
  </span>
  <span class="price">
    $40 <strong>&rsaquo;</strong>
  </span>
</a>

<a href="#" class="button green">
  <strong class="title">Painting Floor Boards</strong>
  <span class="details">
      Handyman <i class="icon-time"></i> exp:
    <strong>Mar 10, 2013</strong>
  </span>
  <span class="price">
    $15 <strong>&rsaquo;</strong>
  </span>
</a>

<a href="#" class="button red">
  <strong class="title">Buy composting worms</strong>
  <span class="details">
      Pick Up and Delivery <i class="icon-time"></i> exp:
    <strong>Dec 17, 2013</strong>
  </span>
  <span class="price">
    $30 <strong>&rsaquo;</strong>
  </span>
</a>

<button type="button" class="btn btn-info" style="width: 131px; margin-left: 700px;"><a href="logout">Logout</a></button>
</div>



</body>
</html>
