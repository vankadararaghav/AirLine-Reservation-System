<html>
 <head>
    <script
         src="https://code.jquery.com/jquery-3.6.1.min.js"
         integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
         crossorigin="anonymous">
    </script>
   <style>
    body {
      width: 500px;
      margin: 0 auto;
      padding: 50px;
    }

    div.elem-group {
      margin: 20px 0;
    }

    div.elem-group.inlined {
      width: 49%;
      display: inline-block;
      float: left;
      margin-left: 1%;
    }

    label {
      display: block;
      font-family: 'Nanum Gothic';
      padding-bottom: 10px;
      font-size: 1.25em;
    }

    input, select, textarea {
      border-radius: 2px;
      border: 2px solid #777;
      box-sizing: border-box;
      font-size: 1.25em;
      font-family: 'Nanum Gothic';
      width: 100%;
      padding: 10px;
    }

    div.elem-group.inlined input {
      width: 95%;
      display: inline-block;
    }

    textarea {
      height: 250px;
    }

    hr {
      border: 1px dotted #ccc;
    }

    button {
      height: 50px;
      background: orange;
      border: none;
      color: white;
      font-size: 1.25em;
      font-family: 'Nanum Gothic';
      border-radius: 4px;
      cursor: pointer;
    }

    button:hover {
      border: 2px solid black;
    }
   </style>
 </head>
<body>

     <div class="elem-group">
       <label for="name">From</label>
       <input type="text" id="from"   required="">
     </div>
     <div class="elem-group">
       <label for="email">To</label>
       <input type="text" id="to"    required="">
     </div>
     <div class="elem-group">
            <label for="phone">Flight Name</label>
            <input type="text" id="name" required="">
     </div>
     <div class="elem-group">
            <label for="phone">cost</label>
            <input type="text" id="cost" required="">
          </div>
     <hr>
     <button id="Add">Add</button>
    <script type="text/javascript">
      $("#Add").click(function(){
         var data = {
           "from" : $("#from").val(),
           "to"   : $("#to").val(),
           "name" : $("#name").val(),
           "cost" : $("#cost").val()
         };
         $.ajax({
                     type:"POST",
                     url :"/admin/flight_creation",
                     data:JSON.stringify(data),
                     success:function(response){
                        alert(response.message);
                     },
                     contentType:"application/json"
                   });

      });
    </script>

</body>
</html>