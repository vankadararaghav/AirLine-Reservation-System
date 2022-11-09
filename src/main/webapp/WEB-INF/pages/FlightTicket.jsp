<html>
  <head>
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Alata&display=swap");
        body,
        html {
          height: 100%;
          font-family: "Alata";
          font-size: 80%;
          background-color: #fffead;
          color: #3A3134;
        }

        p {
          font-size: 130%;
          font-family: "Alata";
        }

        .container {
          display: flex;
          position: absolute;
          top: 50%;
          left: 50%;
          transform: translate(-50%, -50%);
        }

        .ticket {
          margin: auto;
          padding: 0.5em;
          border-radius: 10px;
          background-color: #f7d71c;
          box-shadow: 0px 8px 60px -10px #ffda79;
        }

        .basic {
          height: 250px;
          width: 220px;
          border-style: hidden dashed hidden hidden;
        }

        .text {
          float: right;
          position: relative;
          left: -10%;
        }

        .fa-barcode {
          transform: rotate(-90deg) scale(1000%, 500%);
          font-size: 160%;
          position: relative;
          top: 47%;
          left: 20%;
        }

        .seat, .flight {
          float: left;
        }

        .flight {
          float: right;
        }

        .airline {
          height: 250px;
          width: 450px;
          background-color: white;
          font-size: 12px;
        }

        .item1 {
          padding-top: 7%;
          padding-left: 10%;
          padding-right: 10%;
        }

        .fa-plane {
          position: absolute;
          transform: scale(5, 5) rotate(45deg);
          font-size: 160%;
          top: 35%;
          left: 65%;
        }

        .from {
          float: left;
        }

        .to {
          padding-left: 50%;
          float: right;
        }

        .item2 {
          padding-top: 20%;
          padding-left: 20%;
          padding-right: 20%;
        }

        .gate {
          padding-top: 5%;
          float: left;
        }

        .time {
          float: right;
        }
    </style>
  </head>
<body>

<div class="container">
  <div class="ticket basic"><i class="fa fa-barcode" aria-hidden="true"> </i>
    <div class="text">
      <p>Passenger Name</p>
      <h1>${name}</h1>
      <p>Flight</p>
      <h1>${flight.name}</h1>
      <div class="seat">
        <p>Seat</p>
        <h1>11E</h1>
      </div>
      <div class="flight">
        <p>Flight No:</p>
        <h1>${flight.id}</h1>
      </div>
    </div>
  </div>
  <div class="ticket airline">
    <div class="item1">
      <div class="from">
        <h1>from</h1>
        <h2>${flight.from}</h2>
      </div><i class="fa fa-plane"></i>
      <div class="to">
        <h1>to</h1>
        <h2>${flight.to}</h2>
      </div>
    </div>
    <div class="item2">
      <div class="gate">
        <p>Gate</p>
        <h1>B3</h1>
      </div>
      <div class="time">
        <p>Date</p>
        <h1>${date}</h1>
      </div>
    </div>
  </div>
</div>
  </body>
</html>