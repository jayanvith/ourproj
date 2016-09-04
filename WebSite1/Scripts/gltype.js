$(document).ready(function () {
    $("#lblGLTypeID").($("#cmbGLType").val())
    $("#cmbGLType").change(function () {
        $("#lblGLTypeID").text($(this).val())
    })
})