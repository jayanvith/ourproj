/* File Created: April 17, 2016 */
$(document).ready(function() {
    $("#cmbGlType").change(function () {
            $("#lblGlTypeID").text($(this).val())
        })
})