$(document).ready(function() {
// On affiche le contenu de la base au chargement comme la base n'est pas vide.
    $.ajax({
        url : '../src/data.php',
        method : 'GET',
        dataType: 'text',
        success : function (response) {
            console.log (response);
            $(".member-list").empty().append(response);
            let number = $('.member-item').length;
            $(".member-amount").empty().append("("+number+")");
            },
        });
// Au clic sur le bouton d'ajout, si l'input est vide, il passe en rouge et on montre une erreur, sinon on appelle addArgonaute avec le contenu de l'input en paramètre.
    $('.member-add').on('click', function() {
        let nom = $('#name').val().replace(/[^0-9A-zÀ-ú-_,.]/g, ''); // Failles XSS : on enlève tout ce qui n'est pas alphanumérique
        if (nom == "") { 
            $('#name').css("border", "1px solid var(--wcs-color)");
            $('.error').empty().append("Veuillez entrer le nom de l'Argonaute à ajouter.");
            return false;
        } else {
            $('.error').empty();
            $('#name').css("border", "").val("");
            addArgonaute(nom);
            return false;
        }
    })
})
// On envoie le nom de l'argonaute à la base et on récupère la réponse pour afficher le nouveau contenu de la base avec l'argonaute ajouté et le nombre total d'argonautes de l'équipage.
function addArgonaute(nom) {
    $.ajax({
        url : '../src/data.php',
        method : 'POST',
        dataType: 'text',
        data: {
            nom: nom
        },
        success : function (response) {
            console.log (response);
            $(".member-list").empty().append(response);
            let number = $('.member-item').length;
            $(".member-amount").empty().append("("+number+")");
            if (number >= 50) {
                $('.error').empty().append('Équipage au complet, parés pour retrouver la toison d\'or !');
            }
            },
        });
}

