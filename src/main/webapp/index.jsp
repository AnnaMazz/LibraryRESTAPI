<html>
    <head>
        <script>
           function loadDoc() {
            const xhttp = new XMLHttpRequest();
                //gestione risposta
             xhttp.onload = function() {
             document.getElementById("demo").innerHTML = this.responseText;
                //effettuo il parsing della risposta
                 let dati=JSON.parse(this.responseText); 
     }
      //preparo l'URL
  xhttp.open("GET", "ciao.txt");
  //popolo l'intestazione
  xhttp.setRequestHeader("accept","application/json");
  //richiamo l'URL
  xhttp.send();
}
      </script>
              
    </head>
    <body>
        <h2>Basic Rest Library</h2>
        <button type="button" onclick="loadDoc()">Request data</button>
        <p id="demo"></p>
    </body>
</html>