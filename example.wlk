class Universidad{
  const property provincia 
  var property honorarios
}

class AsociadosAUniversidad{
  const property universidad
  method honorarios(){
    return universidad.honorarios()
  }
}
