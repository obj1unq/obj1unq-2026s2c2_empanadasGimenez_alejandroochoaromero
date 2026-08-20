/* Hola profesor, este trabajo lo hice en clase en una notebook 
 donde habia otro usuario configurado en el git local.
    Me di cuenta que al hacer el commit, el autor del commit era el otro usuario y no yo.
    Por eso, le vuelvo a subir este archivo con este comentario para que quede mi nombre 
    en el github.
*/
object gimenez {
    var fondo = 300000

    method sueldoEmpleados(empleado) {
        fondo = fondo - empleado.sueldo()
        empleado.cobrarSueldo()
    }

    method fondo () {
        return fondo
     }
}


object galvan {
    var sueldo = 15000
    var saldo = 0

    method sueldo (){
        return sueldo
    }
    method sueldo (_sueldo){
        sueldo = _sueldo
    }
    method aumentoDeSueldo (aumento) {
        sueldo = sueldo + aumento
    }
    method cobrarSueldo() {
        saldo = saldo + sueldo
    }
    method gastar(cuanto) {
        saldo -= cuanto
    }
    method deuda(){
        return saldo.min(0).abs()
    }
    method dinero(){
      return saldo.max(0)
    }
}

object baigorria {
    var empanadasVendidas = 0
    const precioEmpanada = 15
    var totalCobrado = 0

    method sueldo() {
    return empanadasVendidas * precioEmpanada
    }

    method vender(empanadas) {
    empanadasVendidas += empanadas
    }
    method cobrarSueldo(){
        totalCobrado += self.sueldo()
        empanadasVendidas = 0
    }
    method totalCobrado(){
        return totalCobrado
    }
}


