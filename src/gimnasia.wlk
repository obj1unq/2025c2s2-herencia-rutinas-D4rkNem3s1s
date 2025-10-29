class Rutina{

    const actividad

    method calorias(tiempo){
        return actividad.calorias(tiempo)
    }
}

class Actividad {

    method descanso(_tiempo)

    method intensidad()

    method bajaDeCalorias(_tiempo){
        return 100 * (_tiempo - self.descanso(_tiempo)) * self.intensidad()
    }
}


class Running inherits Actividad{

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


class Remo inherits Actividad{
    override method intensidad() = 1.3

    override method descanso(tiempo) = (tiempo) / 5
}



object remo inherits Remo{
    override method intensidad(){
        return 1.3
    }
}



object remocompeticion inherits Remo{
    override method intensidad(){
        return 1.7
    }

    override method descanso(tiempo){
        return(super(tiempo -3).max(2))
    }
}