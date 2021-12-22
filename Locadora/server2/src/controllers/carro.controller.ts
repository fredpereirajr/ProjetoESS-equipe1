import {Carro} from "../models/carro";

export class CarroController {
    
    carrosNoSistema:Carro[] = [];
    carrosAlugados:Carro[]=[];
    carrosDisponiveis:Carro[]=[];
    
    constructor() {}

    getCarros(): Carro[] {
        return this.carrosNoSistema;
    }


    getCarrosDisponiveis():Carro[] {

        return this.carrosDisponiveis;
    }

    getCarrosAlugados():Carro[]{
        return this.carrosAlugados;
    }

    registrarCarro(chassi: string, modelo: string, disponivel: boolean ):boolean {

        let novoCarro:Carro = new Carro(chassi, modelo, disponivel);
        this.carrosNoSistema.push(novoCarro);
        if (disponivel) {
            this.carrosDisponiveis.push(novoCarro);
        }else{
            this.carrosAlugados.push(novoCarro);
        }
        
        return true;

    }

    indisponibilizarCarro(chassi:string) {
        let carroAlvo;
       
        //Mudando status do carro que foi alugado no sistema (this.carrosNoSistema)
        this.carrosNoSistema.forEach((carro, index) => {
            if (carro.chassi == chassi) {
                this.carrosNoSistema[index].disponivel = false; 
                carroAlvo =  this.carrosNoSistema[index];
            }
            
        });
        
        //Removendo o carro alugado da lista de disponíveis
        this.carrosDisponiveis.forEach((carro, index) => {
            if (carro.chassi == chassi) {
                this.carrosDisponiveis.splice(index, 1);
            }
            
        });
        
        //Inserindo o carro alugado na lista de alugados.
        this.carrosAlugados.push(carroAlvo);

    }

    disponibilizarCarro(chassi:string) {
        let carroAlvo;
       
        //Mudando status do carro que foi alugado no sistema (this.carrosNoSistema)
        this.carrosNoSistema.forEach((carro, index) => {
            if (carro.chassi == chassi) {
                this.carrosNoSistema[index].disponivel = true; 
                carroAlvo =  this.carrosNoSistema[index];
            }
            
        });
        
        //Removendo o carro alugado da lista de carros alugados
        this.carrosDisponiveis.forEach((carro, index) => {
            if (carro.chassi == chassi) {
                this.carrosAlugados.splice(index, 1);
            }
            
        });
        
        //Inserindo o carro alugado na lista de disponíveis.
        this.carrosDisponiveis.push(carroAlvo);

    }

   
    

    
    
    
}