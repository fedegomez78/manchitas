/* $(document).ready(function () {
    alert("Validaciones");
}) */

function validarHora(input) {
    //alert("Validar hora");
    let regex = /^([01]\d|2[0-3]):([0-5]\d)$/;
    let valor = input.value;
    //alert(valor);
    if (regex.test(valor)) {
        //separar horas y minutos
        let partes = valor.split(':');
        let horas = parseInt(partes[0]);
        let minutos = parseInt(partes[1]);

        //verificar si los minutos están en los intervalos de treinta
        if (minutos % 30 === 0) {
            console.log("Hora válida");
        } else {
            console.log("Hora inválida");
            input.value = "";
            alert("Las citas se atienden cada treinta minutos. \nPor favor, ingrese una hora acorde a ese intervalo \n( 7:00 - 7:30 - ... )")
        }
    } else {
        input.value = "";
        alert("Formato de hora no válido. Use HH:MM.")
    }
}