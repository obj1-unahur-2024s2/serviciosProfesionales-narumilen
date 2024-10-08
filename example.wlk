class Universidad{
  const property provincia 
  var property honorarios
}

class AsociadoAUniversidad{
  const property universidad
  method honorarios(){
    return universidad.honorarios()
  }
  method puedeTrabajar(){
    return [universidad.provincia()]
  //se devuelve una lista para que sa polimrfico con las demas clases
  }
}

class asociadosAlLitoral{
  const property universidad
  method honorarios() = 3000
  method puedeTrabajar() = ["Entre Rios", "Santa Fe", "Corrientes"]
}

class Libres{
  const property uiversidad
  var property honorarios = 0
  var property puedeTrabajar()= []
}

