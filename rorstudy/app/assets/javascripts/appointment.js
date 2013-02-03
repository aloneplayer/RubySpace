function AddValidationRules(formId) {
    $("#" + formId).validate({
        errorClass: "field-validation-error",
        rules: {
            "appointment[name]": {
                required: true
            },
            "appointment[email]": {
                required: true,
                email: true
            },
            "appointment[phone]": {
                required: true,
                phoneUS: true
            }
        }
    });
}
jQuery.validator.addMethod("phoneUS", function(value, element) {
    value = value.replace(/\s+/g, ""); 
    return value.match(/^[2-9]\d{2}-\d{3}-\d{4}$/);
}, "Please specify a valid phone number(211-111-1111)");
 
function InitUI()
{
    $("#appointment_date").datepicker();
}