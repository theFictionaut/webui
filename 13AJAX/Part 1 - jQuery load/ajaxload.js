/*
$(document).ready(function () {
    $('#links ul a').click(function (e) {
        var url = $(this).attr('href');
        $('#destinations').load(url);
        e.preventDefault();
    })
});
*/

$(document).ready(function () {
    $('#links ul a').click(function (e) {
        var url = $(this).attr('href') + ' #description';
        $('#destinations').html('loading...').load(url);
        e.preventDefault();
    })

    $(document).on('mouseover', '#description',
        function () {
            $(this).css('background-color', 'silver');
        });
    $(document).on('mouseout', '#description', function () { $(this).css('background-color', 'inherit'); });
});
