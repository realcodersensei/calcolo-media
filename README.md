## Dichiarazione di variabili
La dichiarazione delle variabili in un linguaggio di programmazione come C può essere esplorata sia da un punto di vista tecnico che filosofico.

### Approccio Tecnico
Tecnicamente, la dichiarazione di una variabile in C serve a diverse funzioni chiave:
1. **Allocazione di Memoria**: Indica al compilatore di riservare spazio nella memoria del computer per immagazzinare dati di un certo tipo (come interi, float, caratteri, etc.).
2. **Tipizzazione**: Specifica il tipo di dati che la variabile può contenere, il che è fondamentale in un linguaggio fortemente tipizzato come C. Questo aiuta a prevenire errori come tentare di immagazzinare un tipo di dato in una variabile non adatta.
3. **Leggibilità e Manutenzione del Codice**: Rende chiaro a chi legge il codice quali dati sono gestiti e come vengono utilizzati nel programma.

### Approccio Filosofico
Filosoficamente, dichiarare una variabile può essere visto come un atto di definizione e di intenzione:
1. **Definizione dell'Esistenza**: Proprio come nel pensiero filosofico, dove definire un concetto è il primo passo per comprenderlo e interagire con esso, dichiarare una variabile è l'affermazione della sua esistenza nel mondo del programma.
2. **Imposizione di Limiti e Intenti**: La scelta di un tipo per una variabile non è solo tecnica, ma anche un atto di limitazione e specializzazione. Si decide il ruolo e il campo d'azione di quella variabile, proprio come quando definiamo concetti o categorie nella vita reale.
3. **Flessibilità e Cambiamento**: Le variabili, per loro natura, sono entità destinate a cambiare. Questa caratteristica riflette la natura dinamica e mutevole del mondo e delle nostre percezioni. Attraverso le variabili, un programma può adattarsi, evolversi e rispondere a input diversi, proprio come noi ci adattiamo alle circostanze della vita.
4. **Responsabilità e Conoscenza**: Decidere come nominare e tipizzare una variabile è un atto di responsabilità. Implica una comprensione di come sarà usata e di quali effetti avrà sul programma, in un modo simile a come le nostre parole e definizioni influenzano la nostra comprensione e interazione con il mondo.

In sintesi, la dichiarazione di una variabile in programmazione è un atto che unisce tecnica e filosofia, fondendo la necessità di struttura e ordine con i concetti di cambiamento, definizione e responsabilità. In questo senso, ogni variabile diventa una piccola rappresentazione dell'interazione tra il pensiero umano concreto e astratto.

## Avvio dell'Ambiente e Esecuzione del Programma

### Creazione ambiente con docker
```bash
docker-compose up --build -d
docker-compose run c-environment bash
```

### Compilazione e avvio del programma
```bash
gcc -o calcola_media calcola_media.c
./calcola_media
```

## Speigazione del codice

Analizziamo il codice del programma che calcola la media, collegando ogni sua parte sia a concetti tecnici che a riflessioni filosofiche:

### Dichiarazione delle Variabili
```c
int n;
float somma = 0.0, numero, media;
```
**Aspetto Tecnico**: In questa linea, dichiariamo variabili di due tipi diversi: `int` (interi) per `n`, e `float` (numeri a virgola mobile) per `somma`, `numero` e `media`. `somma` è inizializzata a 0.0, mentre `numero` e `media` non sono inizializzate.

**Riflessione Filosofica**: Questa dichiarazione rappresenta il nostro primo passo nell'ordine e nella definizione nel mondo del programma, simile a come definiamo concetti nella nostra mente prima di usarli. Inizializziamo `somma` a zero, simboleggiando un inizio neutro, un punto di partenza privo di pregiudizi o influenze precedenti.

### Lettura del Numero di Elementi
```c
printf("Inserisci il numero di elementi: ");
scanf("%d", &n);
```
**Aspetto Tecnico**: Qui, chiediamo all'utente di inserire il numero di elementi (`n`). Utilizziamo `scanf` con `%d` per leggere un valore intero, passando l'indirizzo di `n` con `&`.

**Riflessione Filosofica**: Questo momento rappresenta l'interazione e l'influenza reciproca tra il programma e l'utente. È un'espressione di come le nostre azioni (input dell'utente) possono influenzare e cambiare il nostro ambiente (il programma).

### Controllo eccezioni
```c
if(n <= 0) {
    printf("Il numero di elementi deve essere maggiore di zero.\n");
    return 1;
}
```
**Aspetto Tecnico**: Utilizziamo il comando `if` per verificare in maniera preventiva la possibilità di soddisfare poi le condizioni per effettuare il calcolo della media. Bisogna infatti tenere in considerazione che il calcolo in questione sarà rappresentato dalla seguente divisione:
```c
media = somma / n;
```
Pertanto è necessario assicurarsi che `somma` non venga diviso per `0` o `per un numero negativo`. Per questo motivo la condizione prevede la chiusura del programma nel caso in cui `n` sia minore o uguale di `0`.

**Riflessione Filosofica**: Questa parte del codice rappresenta il concetto di `valutazione e giudizio`. Proprio come nella vita, dove valutiamo le situazioni e prendiamo decisioni basate su certi criteri, il programma "decide" se procedere o meno basandosi sul valore di `n`.

### Lettura e Somma dei Numeri
```c
for(i = 0; i < n; i++) {
    scanf("%f", &numero);
    somma += numero;
}
```
**Aspetto Tecnico**: Utilizziamo un ciclo `for` per leggere `n` numeri e sommarli. La variabile `numero` è aggiornata ad ogni iterazione, e il suo valore è aggiunto a `somma`.

**Riflessione Filosofica**: Questo ciclo rappresenta il concetto di accumulazione e costruzione. Ogni input dell'utente contribuisce al risultato finale, proprio come ogni esperienza o scelta nella vita contribuisce al nostro sviluppo personale.

### Calcolo e Stampa della Media
```c
media = somma / n;
printf("Media: %.2f\n", media);
```
**Aspetto Tecnico**: Calcoliamo la media dividendo la `somma` totale per il numero di elementi `n`. Poi stampiamo la media usando `%f` per formattare l'output come un numero a virgola mobile.

**Riflessione Filosofica**: Il calcolo della media rappresenta il bilanciamento e la sintesi delle diverse componenti, simile al modo in cui sintetizziamo le diverse esperienze della vita per formare una comprensione o una visione generale.

### Conclusione
In questo programma, ogni passo, dalla dichiarazione delle variabili all'input dell'utente, dall'accumulazione dei dati al calcolo finale, può essere visto non solo come un processo tecnico ma anche come un riflesso di processi filosofici o di vita. La programmazione, in questo senso, diventa un metafora del pensiero e dell'esperienza umana, dove definizione, interazione, accumulazione e sintesi giocano ruoli cruciali.