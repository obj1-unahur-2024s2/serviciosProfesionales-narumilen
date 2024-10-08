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

class asociadoAlLitoral{
  const property universidad
  method honorarios() = 3000
  method puedeTrabajar() = ["Entre Rios", "Santa Fe", "Corrientes"]
}

class Libres{
  const property universidad
  var property honorarios = 0
  var property puedeTrabajar()= []
}

class Empresa{
  const property profesionales = []
  var property honorariosReferencia 

  method agregarProfesional(unProfesional){
    profesionales.add(unProfesional)
  }

  method cuantos(unaUniversidad){
    return profesionales.count({ p => p.universidad() == unaUniversidad })
  }

  method caros(){
    return profesionales.filter({ p => p.honorarios() > honorariosReferencia })
  }

  method formadoras(){
    return profesionales.map({ p => p.universidad()}).asSet()
  }

  method masBarato(){
    return profesionales.min({ p => p.honorarios()})
  }

  method esDeAcotados(){
    return profesionales.all( { p => p.puedeTrabajar().size() <= 3} )
  }

  method puedeSatisfacer(unSolicitante){
    return profesionales.any( { p => unSolicitante.puedeSerAtendidoPor(p) } )
  }
}

class SolicitantePersona{
  var property provincia

  method puedeSerAtendidoPor(unProfesional){
    return unProfesional.puedeTrabajar().contains(provincia)
  }
}

class SolicitanteInstitucion{
  var propery universidades

  method puedeSerAtendidoPor(unProfesional){
    return universidades.contains(unProfesional.universidad())
  }

class SolicitanteClub{
  var property provincias

  method puedeSerAtendidoPor(unProfesional){
    return not provincias.asSet().intersection(unProfesional.puedeTrabajar().asSet()).isEmpty()
  }  





