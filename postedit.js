function pageLoad(){
    var title = document.getElementById("edit_title");
    title.defaultValue = "title";
    title.style.color="grey";

    var subtitle = document.getElementById("edit_articletitle");
    subtitle.defaultValue = "subtitle";
    subtitle.style.color = "grey";
}
window.onload = pageLoad;