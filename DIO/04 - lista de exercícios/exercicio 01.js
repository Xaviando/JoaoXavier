/* Crie uma classe para representar carros. 
Os carros possuem uma marca, uma cor e um gasto médio de combustível por Kilômetro rodado.
Crie um método que dado a quantidade de quilómetros e o preço do combustível nos dê o valor 
gasto em reais para realizar este percurso.

*/

class Carro {
    marca;
    cor;
    consumoMedio;

    constructor (marca, cor, consumoMedio) {
        this.marca = marca;
        this.cor = cor;
        this.consumoMedio = consumoMedio;
    }
    
    gastoViagem (distancia, precoCombustivel) {
        return distancia * this.consumoMedio * precoCombustivel

    }
}

const uno = new Carro ('Fiat', 'Prata', 1/12);
console.log (uno.gastoViagem (418, 3.59));
const palio = new Carro ('Fiat', 'Preto', 1/10);
console.log (palio, gastoViagem (418, 3.59));


