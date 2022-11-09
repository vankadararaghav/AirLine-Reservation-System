<html>
  <head>
        <script
             src="https://code.jquery.com/jquery-3.6.1.min.js"
             integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
             crossorigin="anonymous">
         </script>
     <style>
       @import url('https://fonts.googleapis.com/css2?family=Merriweather&family=Open+Sans&display=swap');

       *,
       *::before,
       *::after {
         box-sizing: border-box;
       }

       body {
     width: 50%;
     height: auto;

        background: linear-gradient(rgba(255, 255, 255, 0.2), rgba(255, 255, 255, 0.2)), url('https://images.news18.com/ibnlive/uploads/2022/01/air-india-privatisation-16415518103x2.png?impolicy=website&width=510&height=356');
        background-repeat: no-repeat;
        background-size: cover;
        font-family: 'Open Sans', sans-serif;
        font-size: 1.2rem;
        line-height: 1.618;
        color: rgb(17 15 25 / 79%);
        max-width: 400px;
          margin: auto;
     	}

       h1 {
         font-size: 2rem;
         font-family: 'Merriweather', serif;
         text-transform: uppercase;
       }

       h1, p {
         margin: 1em auto;
         text-align: center;
       }

       form {
         width: 60vw;
       	max-width: 500px;
       	min-width: 300px;
       	margin: 0 auto;
         padding-bottom: 2em;
       }

       fieldset {
         border: none;
         padding: 1.2rem 0;
       }
       label {
         font-size: 1rem;
         font-weight: bold;
         display: block;
       	margin: 0.5rem 0;
       }

       .inline {
         width: unset;
         margin: 0 0.5em 0 0;
         vertical-align: middle;
       }

       input,
       textarea,
       select {
         margin: 7px 0 0 0px;
       	width: 100%;
         min-height: 2em;
       }

       select, .room {
       			width: 7rem;
             padding: 5px;
       			border: none;
       			background-color: rgba(255, 255, 255);
             box-shadow: rgba(0,0,0,.1) 0 0 8px;
       		}
       select {
       			position: relative;
             border-radius: 5px;
             display: inline-block;
       		}

       input, textarea {
         border: none;
         border-radius: 5px;
         color: rgba(10, 10, 35, 0.7);
       }

       #button{
         display: block;
         width: 60%;
         margin: 1em auto;
         height: 2em;
         font-size: 1.1rem;
         background-color: #e5e5f2;
         border-color: white;
         min-width: 300px;
         color: inherit;
       }

     </style>
  </head>
  <body>

<body>

        <h1>Booking Online Now</h1>

           <fieldset>
            <label>Name
              <input type="text" id="name" required="">
            </label>

            <label>Email
            <input type="text" id="email" required="">
            </label>
            <label>Phone Number
            <input type="text" id="phone" required="">
            </label>

            <label> Date
              <input type="text" id="date" value=${date} readonly >
            </label>
             <label>Flight
                <input type="text" id="flightName" value = "${flightName}" readonly >
             </label>
             <label>Cost
                <input type = "text" id="cost" value= "${cost}" readonly>
            </label>


             </fieldset>
          <button type="button" id="button">Book</button>


       <script type="text/javascript">
         $("#button").click(function(){
          data = {
              "name" :  $("#name").val(),
              "email":  $("#email").val(),
              "phone":  $("#phone").val(),
              "date" :  $("#date").val(),
          "flight_id":  ${id}
          };
         $.ajax({
                      type:"POST",
                      url :"/user/passenger_details",
                      data:JSON.stringify(data),
                      success:function(response){
                      window.location.href = "/user/ticket_generation?name="+$("#name").val()+"&email="+$("#email").val()+"&phone="+$("#phone").val()+"&date="+$("#date").val()+"&flightName="+$("#flightName").val()+"&cost="+$("#cost").val()+"&id="+${id};

                      },
                      contentType:"application/json"
                    });

         });
       </script>
</body>
  </body>
</html>