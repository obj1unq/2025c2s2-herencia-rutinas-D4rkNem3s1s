class Rutina {

    method descanso(_tiempo)

    method intensidad()

    method bajaDeCalorias(_tiempo){
        return 100 * (_tiempo - self.descanso(_tiempo)) * self.intensidad()
    }
}


class Running inherits Rutina{

    override method descanso(_tiempo){
        return if(_tiempo > 20)5 else 2
    }

    override method intensidad(){
        
    }

}

class Maraton inherits Running{

    override method bajaDeCalorias(tiempo) { 
        return super(tiempo) * 2}

    

}


class Remo inherits Rutina{
    override method intensidad() = 1.3

    override method descanso(tiempo) = (tiempo) / 5
}

class RemoDeCompeticion inherits Remo{
    override method intensidad() = 1.7

    override method descanso(tiempo)=2.max(super(tiempo) - 3) 
}