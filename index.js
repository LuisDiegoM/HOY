const aplicacion=document.querySelector('.container')
const url = 'https://www.datos.gov.co/resource/gt2j-8ykr.json'

fetch(url)
.then(res => res.json())
.then(data => {
    let  p = 0
    let  d = 0
    let  n = 0
    data.forEach(elemento  => {
        if(elemento.recuperado == 'Recuperado')++p;
        else if (elemento.recuperado == 'Fallecido')++d
        else n++
    });
     document.getElementById('output').innerHTML =  p 
     document.getElementById('output1').innerHTML = d 
     document.getElementById('output2').innerHTML = n  

})

fetch(url)
.then(res => res.json())
.then(data => {
    var contenido_fila=''
    for (var j=0;j< 2;j++){
        var fila =document.createElement("tr");
        contenido_fila += `
        <tr>
            <th>${data[j].ciudad_municipio_nom}</th>
            <th>${data[j].edad}</th>
            <th>${data[j].sexo}</th>
            <th>${data[j].tipo_recuperacion}</th>
            <th>${data[j].fecha_inicio_sintomas}</th>
            <th>${data[j].fecha_inicio_sintomas}</th>
            <th>${data[j].fecha_inicio_sintomas}</th>
            <th>${data[j].fecha_inicio_sintomas}</th>
        </tr>
        `;
    }
    var cuerpo = document.getElementById('cuerpo_tb')
    cuerpo.innerHTML= contenido_fila
    console.log(data)
})

function eliminarusuario(){
    fetch('http://192.168.0.100:5000/api/user/1',{method: 'DELETE'})
    .then(res => res.json())
    .then(data => {
    })
}

