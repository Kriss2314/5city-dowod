window.addEventListener('message', function (event) {
    let item = event.data;
    if(item.status === true) {
        display(true);
    } else {
        display(false);
    }
});

function display(bool) {
    if(bool) {
        $('#container, .fiucina').show();
    } else {
        $('#container, .fiucina').hide();
    };
};

display(false);

document.onkeyup = function (data) {
    if (data.which == 27) {
        let directory = GetParentResourceName()
        $.post('https://'+directory+'/exit', JSON.stringify({}));
        return;
    };
};
