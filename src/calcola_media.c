#include <stdio.h>

int main() {
    int n;
    float somma = 0.0, numero, media;
    
    printf("Inserisci il numero di elementi: ");
    scanf("%d", &n);

    if(n <= 0) {
        printf("Il numero di elementi deve essere maggiore di zero.\n");
        return 1;
    }

    for(int i = 0; i < n; i++) {
        printf("Digita un numero:\n");
        scanf("%f", &numero);
        somma += numero;
    }

    media = somma / n;
    printf("Media: %.2f\n", media);
    return 0;
}
