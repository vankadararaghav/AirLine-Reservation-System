<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>
      <script
              src="https://code.jquery.com/jquery-3.6.1.min.js"
              integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
              crossorigin="anonymous">
      </script>
    <style>
      @import url('https://fonts.googleapis.com/css?family=PT+Sans');

      * {
        box-sizing: border-box;
        font-family: 'PT Sans';
      }

      .c-flight-search {
        overflow: hidden;
        width: 800px;
        height: 300px;
        border-radius: 4px;
        margin: 50px auto;
        background: linear-gradient(to right, #F86C77, #DD4F87);
        padding: 4rem ;
        position: relative;
      }

      .c-city__switch {
        float: left;
      }

      .c-city {
        width: 40%;
        float: left;
        position: relative;
        label {
          display: block;
          text-transform: uppercase;
          font-weight: bold;
          color: rgba(255,255,255,0.25);
          font-size: 18px;
        }
        input {
          width: 100%;
          border: 0;
          border-bottom: 2px solid rgba(255,255,255,0.2);
          background: transparent;
          padding: 0.5rem 0;
          font-size: 1.5rem;
          color: #fff;
          letter-spacing:0.25px;
          &:focus {
            outline: none;
          }
        }
      }

      .c-city__code {
        position: absolute;
        top: 50%;
        right: 0;
        font-weight: bold;
        color: rgba(255,255,255,0.25);
        font-size: 18px;
      }


      .c-city--to {
        margin: 0 0 0 4rem;
      }

      .c-ticket-stub {
        width: 80px;
        height: 100%;
        background: #D44A84;
        position: absolute;
        top: 0;
        right: 0;
        display: flex;
        align-items: center;
        justify-content: center;
        img {
      max-width: 40%;
        transform: rotate(45deg);
        filter: grayscale(1) invert(1);
        }
      }

      img {
        max-width: 100%;
      }
      #check{
        background = #D44A84;
      }
      .c-dates {
        width: 33%;
        float: left;
        margin: 2.5rem 0 0 0;
        label {
          display: block;
          text-transform: uppercase;
          font-weight: bold;
          color: rgba(255,255,255,0.25);
          font-size: 18px;
        }
        select {
          appearance: none;
          width: 100%;
          border: 0;
          border-bottom: 2px solid rgba(255,255,255,0.2);
          background: transparent;
          padding: 0.5rem 0;
          font-size: 1.5rem;
          color: #fff;
          letter-spacing:0.25px;
          margin: 1rem 0 0 0;
          border-radius: 0;
          position: relative;
          &:focus {
            outline: none;
          }
        }
      }
    </style>
  </head>
  <body>
   <div class="c-flight-search">
     <div class="c-flight-search__cities">
       <div class="c-city c-city--from">
         <label for="fromCity">From</label>
         <input id="from" type="text">
         <span class="c-city__code">SYD</span>
       </div>
       <div class="c-city c-city--to">
         <label for="fromCity">To</label>
         <input  id="to" type="text">
         <span class="c-city__code">TXL</span>
       </div>
     </div>

     <div class="c-dates">
       <div class="c-fromDate">
         <label for="fromDate">Depart</label>
         <input id="date" type="text" >
       </div>

       <div class="c-toDate">
       </div>
     </div>

     <div class="c-ticket-stub">
       <button id="check">check</button>
     </div>
   </div>

   <script type="text/javascript">
    $("#check").click(function(){
             window.location.href = "/user/flight_list?from="+ $("#from").val()+"&to="+$("#to").val()+"&date="+$("#date").val();
    });
   </script>

  </body>
</html>
