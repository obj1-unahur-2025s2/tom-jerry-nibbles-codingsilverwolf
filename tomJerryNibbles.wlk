object tom {
    var energia = 50
    
    // estas 2 variables las agregamos al final
    var ultimoRatonComido = null
    var metrosRecorridos = 0
    // Luego de actualizar las variables en los métodos, nos dimos cuenta que neceaitamos consultar (getters)
    method ultimoRatonComido() = ultimoRatonComido
    method metrosRecorridos() = metrosRecorridos
    
    
    
    // buena practica: le paso el objeto y NO unRaton.peso(). Asumo que no sé como funciona el objeto. 
    
    method comer(unRaton){
        energia = energia + 12 + unRaton.peso()
        ultimoRatonComido = unRaton
        
        
    }
    method correr(cantodadDeMetros){
        energia = energia - cantodadDeMetros/2
        metrosRecorridos = cantodadDeMetros
    }
    // consulta
    method velocidadMaxima(energia) = 5 + energia/10
    method puedeCazarAdistancia(unaDistancia){
        unaDistancia/2 <= energia
    }
    // subtarea condicional(en el contrato tiene una precondición)
    method cazarA(unRaton, unaDistancia){
        self.correr(unaDistancia)
        self.comer(unRaton)
    }
    // subtarea total, no falla nunca
    method cazarA_SiPuede(unRaton, unaDistancia){
        if (self.puedeCazarAdistancia(unaDistancia)){
            self.cazarA(unRaton, unaDistancia)
        }
    }
}

object jerry {
    var edad = 2
    // como el peso ya lo puedo calcular con la edad, NO defino una variable peso
    // No hago un getter para edad porque no es estrictamente necedario.
    // El test es peso, cumplirAnio, peso.
    method peso() = edad*20
    method cumplirAnio(){
        edad += 1
    }
    
    
}

object nibbles {
    method peso() = 35
  
}

// Inventar otro ratón

// comentario para primer commit