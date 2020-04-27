/*
if (ob_interfaz_EX.numero_pregunta==argument[0] || 
    ob_interfaz_EX.numero_pregunta==argument[1])
{
    hablado[0]=1
}
else
    hablado[0]=0

*/
var personajes=ds_list_create()

ds_list_add(personajes, ob_granja_EX)
ds_list_add(personajes, ob_bb_EX)
ds_list_add(personajes, ob_super_EX)
ds_list_add(personajes, ob_fum_EX)
ds_list_add(personajes, ob_igames_EX)
ds_list_add(personajes, ob_multinivel_EX)
ds_list_add(personajes, ob_extra1_EX)
ds_list_add(personajes, ob_extra2_EX)
ds_list_add(personajes, ob_dr_EX)

var hablante

if numero_pregunta==1 || numero_pregunta==2
{
     hablante=0
}

if numero_pregunta==4 || numero_pregunta==5
{
    hablante=1
}

if numero_pregunta==8 || numero_pregunta==9
{
    hablante=2
}

if numero_pregunta==11 || numero_pregunta==12
{
    hablante=3
}

if numero_pregunta==14 || numero_pregunta==15
{
    hablante=4
}

if numero_pregunta==18 || numero_pregunta==19
{
    hablante=5
}

if numero_pregunta==21 || numero_pregunta==22
{
    hablante=6
}

if numero_pregunta==24 || numero_pregunta==25
{
    hablante=7
}

if  numero_pregunta==3 || numero_pregunta==6 
    || numero_pregunta==7 || numero_pregunta==10 
    || numero_pregunta==13 || numero_pregunta==16 
    || numero_pregunta==17 || numero_pregunta==20 
    || numero_pregunta==23 || numero_pregunta==26
{
    hablante=8
}

for (var aux=0; aux<=8; aux++)
{
    if aux==hablante
    {
        personajes[| aux].hablado[0]=1//1
    }
    else
    {
        personajes[| aux].hablado[0]=0//0

        if personajes[| aux].hablado[1]>=13
        {
            personajes[| aux].image_index-=1
        }
    }
        personajes[| aux].hablado[1]=0
}

var aux

switch hablante
{
    case 0:
        aux=c_aqua
    break
    case 1:
        aux=c_green
    break
    case 2:
        aux=c_maroon
    break
    case 3:
        aux=c_blue
    break
    case 4:
        aux=c_red
    break
    case 5:
        aux=c_yellow
    break
    case 6:
        aux=c_teal
    break
    case 7:
        aux=c_purple
    break
    case 8:
        aux=c_orange
    break
}

draw_set_colour(aux)

