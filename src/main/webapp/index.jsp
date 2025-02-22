
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
    //inserisco i dati nell'interfaccia
    let text ="<table border='1'> <th>Autore</th><th>Titolo</th><th>Prezzo</th><th>ISBN</th>";
    for (let x in dati){
        text +="<tr><td>"+dati[x].Autore+"</td>";
        text +="<td>"+dati[x].Titolo+"</td>";
        text +="<td>"+dati[x].Prezzo+"</td>";
        text +="<td>"+dati[x].ISBN+"</td>";
        text +="<td> <button type='button' onclick='loadUpdate("+dati[x].ISBN+")'> Aggiorna dati </button> </td>";
        text +="<td> <button type='button' onclick='loadDelete("+dati[x].ISBN+")'> Elimina dati </button> </td> </tr>";
    }
    text +="</table>";
    document.getElementById("demo").innerHTML=text;
  }
  //preparo l'URL
  xhttp.open("GET", "/api/book/all");
  //popolo l'intestazione
  xhttp.setRequestHeader("accept","application/json");
  //richiamo l'URL
  xhttp.send();
}


function loadDelete(x) {
  var formBody = new URLSearchParams({'ISBN': x});

    
      let res = fetch("/api/book/delete", {
        method: "DELETE",
        body: formBody,
        headers: {
        'Content-Type': 'application/x-www-form-urlencoded;charset=UTF-8'
        }
      });
 
}
/*function Prezzo(x) {
  var formBody = new URLSearchParams({'ISBN': x});

    
      let res = fetch("/api/book/Prezzo", {
        method: "GET",
        body: formBody,
        headers: {
        'Content-Type': 'application/x-www-form-urlencoded;charset=UTF-8'
        }
      });
 
}*/

</script>
    </head>
<body>

<h2>BIBLIOTECA</h2>
<button type="button" onclick="loadDoc()">GET Libri</button>
<button type="button" onclick="loadInsert()">INSERT Libri</button>
<button type="button" onclick="">Prezzo minore</button>
<p id="demo"></p>

</body>
</html>