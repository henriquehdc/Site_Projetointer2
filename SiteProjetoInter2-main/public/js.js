let coluna = document.getElementById("coluna");

function showInfoMovie(){
    if(coluna.classList.contains("hide")){
        coluna.classList.remove("hide");
        coluna.classList.add("show");
    }else if(coluna.classList.contains("show")){
        coluna.classList.remove("show");
        coluna.classList.add("hide");
    }
}

let colunaSerie = document.getElementById("colunaSerie");
function showInfoTVShow(){
    if(colunaSerie.classList.contains("hide")){
        colunaSerie.classList.remove("hide");
        colunaSerie.classList.add("show");
    }else if(colunaSerie.classList.contains("show")){
        colunaSerie.classList.remove("show");
        colunaSerie.classList.add("hide");
    }
}