// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better
// to create separate JavaScript files as needed.
//
//= require jquery/jquery.min.js
//= require bootstrap/js/bootstrap.js
//= require metisMenu/metisMenu.min.js
//= require jquery.tagsinput.js
//= require morris.js
//= require morris-data.js
//= require raphael.js


if (typeof jQuery !== 'undefined') {
    (function($) {
        $(document).ajaxStart(function() {
            $('#spinner').fadeIn();
        }).ajaxStop(function() {
            $('#spinner').fadeOut();
        });
    })(jQuery);
}
