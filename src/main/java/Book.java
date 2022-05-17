public class Book {
    private String Autore,Titolo,ISBN,Prezzo;

    public String getAutore() {
        return Autore;
    }


    public void setAutore(String autore) {
        Autore = autore;
    }

   
    public void setTitolo(String titolo) {
        Titolo = titolo;
    }
    
    public String getTitolo() {
        return Titolo;
    }

    public String getISBN() {
        return ISBN;
    }

    public void setISBN(String ISBN) {
        this.ISBN = ISBN;
    }
    
    public String getPrezzo() {
        return Prezzo;
    }
    public void setPrezzo(String prezzo) {
        this.Prezzo = prezzo;
    }
}
